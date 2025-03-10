//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"
#include "../h/syscall_c.hpp"

int TCB::id = 0;
int TCB::thread_limit = 5;

TCB *TCB::running = nullptr;


TCB *TCB::createThread(Body body, void* arg, void* stack)
{
    if(thread_limit == id) return nullptr;
    TCB* newTCB = new TCB(body, arg, stack);
    Scheduler::put(newTCB);
    return newTCB;
}

TCB *TCB::createThreadWithoutStarting(Body body, void* arg, void* stack)
{
    if(thread_limit == id) return nullptr;
    TCB* newTCB = new TCB(body, arg, stack);
    //Scheduler::put(newTCB);
    return newTCB;
}

void TCB::yield()
{
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    if(running->isMain()) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    }
    else {
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    running->releaseAll();
    thread_dispatch();
}

void TCB::join(TCB* handle) {
    if(!handle->isFinished()) {
        running->setBlocked(true);
        handle->joined.addLast(running);
    }
}

void TCB::releaseAll() {
    while (this->joined.peekFirst()) {
        TCB* tcb = this->joined.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
}
