#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"



void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 volatile a4;
    __asm__ volatile ("ld %0, 14*8(fp)" : "=r"(a4));
    uint64 volatile a3;
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    uint64 volatile a2;
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    uint64 volatile a1;
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    uint64 volatile a0;
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));


    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        if(a0 == 0x01){ // void* mem_alloc (size_t size);
            void* tmp = MemoryAllocator::mem_alloc((size_t) a1);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
        }

        else if (a0 == 0x02){ // int mem_free (void*);
            int tmp = MemoryAllocator::mem_free((void*) a1);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
        }

        else if (a0 == 0x08){ //int getThreadId();
            int tmp = TCB::running->getMyId();
            TCB::dispatch();
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)tmp));
        }

        else if (a0 == 0x09){ //void thread_start(TCB* tcb);
            TCB::startThread((TCB*)a1);
        }

        else if (a0 == 0x10){ // int thread_create_without_starting (thread_t* handle, void(*start_routine)(void*), void* arg) , void* stack_space
            TCB** tmp = (TCB**)a1;
            *tmp = TCB::createThreadWithoutStarting((TCB::Body)a2, (void*)a3, (void*) a4);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*tmp != nullptr ? 0 : -1)));
        }

        else if (a0 == 0x11){ // int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) , void* stack_space
            TCB** tmp = (TCB**)a1;
            *tmp = TCB::createThread((TCB::Body)a2, (void*)a3, (void*) a4);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*tmp != nullptr ? 0 : -1)));
        }
        else if (a0 == 0x12){ // int thread_exit ();
            TCB::running->setFinished(true);
            TCB::dispatch();
            __asm__ volatile ("li t0, 0");
            __asm__ volatile ("sw t0, 80(x8)");
        }
        else if (a0 == 0x13){ // void thread_dispatch ();
            TCB::dispatch();
        }
        else if (a0 == 0x14){ // void thread_join ( thread_t handle );
            thread_t handle;
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            TCB::join(handle);
            TCB::dispatch();
        }
        else if (a0 == 0x21){ // int sem_open(sem_t* handle, unsigned init);
            Sem** semHandle = (Sem**) a1;
            //*semHandle = Sem::createSemaphore((unsigned int) a2);
            *semHandle = Sem::open((unsigned int) a2);
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64)(*semHandle != nullptr ? 0 : -1)));
        }
        else if (a0 == 0x22){ //int sem_close(sem_t handle);
            Sem* semHandlePtr= (Sem*) a1;
            int tmp ;
            if(semHandlePtr!= nullptr) {
                tmp = semHandlePtr->close();
            }
            else tmp = -2;
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
        }

        else if (a0 == 0x23){ //int sem_wait(sem_t id);
            Sem* semHandlePtr= (Sem*) a1;
            int tmp;
            if(semHandlePtr!= nullptr) {
                tmp = semHandlePtr->wait();
            }
            else tmp = -2;
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
        }

        else if (a0 == 0x24){ //int sem_signal(sem_t id);
            Sem* semHandlePtr= (Sem*) a1;
            int tmp;
            if(semHandlePtr!= nullptr) {
                tmp = semHandlePtr->signal();
            }
            else tmp = -2;
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
        }

        else if (a0 == 0x41){
            char tmp = __getc();
            __asm__ volatile ("sd %0, 10*8(fp)" : : "r"((uint64) tmp));
        }
        else if (a0 == 0x42){
            char tmp = (char) a1;
            __putc(tmp);
        }
        else if (a0 == 0x043){
            TCB::dispatch();
        }

//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else
    {
        // unexpected trap cause
        printString("Error - Scause:");
        printInt(scause);
        printString("\n");
    }

}
void Riscv::handleConsoleInterrupt() {
    console_handler();
}

void Riscv::handleTimerInterrupt() {
    mc_sip(SIP_SSIP);
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
}