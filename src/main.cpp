#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/memoryAllocator.hpp"

extern void userMain();

//int main()
//{
//    TCB *threads[5];
//
//
//    Riscv::w_stvec((uint64) &Riscv::vectorTable | 0b01);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//
//    threads[0] = TCB::createThread(nullptr,nullptr, nullptr);
//    TCB::running = threads[0];
//
//    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
//
//    while(!threads[1]->isFinished()) {
//        thread_dispatch();
//    }
//
//    printString("Vratio sam se u main\n");
//
//    return 0;
//}
static volatile bool finished[4] = {false, false, false, false};
class Worker: public Thread {
private:
    int id;
public:
    Worker(int i):Thread() {
        id = i;
    }

    void run() override {
//        int x = getThreadId();
//        printInt(x);
//        printString("\n");
//        //printString("nit izvrsena");
//        printString("Finished");
//        printInt(id);
//        printString("\n");
//        finished[id] = true;
        printString("testtest\n");
    }
};

void test_test () {
    printString("da");
}
void test_foo(){

    Thread *threads[4];

    threads[0] = new Worker(0);
    printString("ThreadA created\n");

    threads[1] = new Worker(1);
    printString("ThreadB created\n");

    threads[2] = new Worker(2);
    printString("ThreadC created\n");

    threads[3] = new Worker(3);
    printString("ThreadD created\n");

    for(int i=0; i<4; i++) {
        threads[i]->start();
    }

    while (!(finished[0] && finished[1] && finished[2]&& finished[3])) {
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }


}
int main()
{
    TCB *threads[5];

    Riscv::w_stvec((uint64) &Riscv::vectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    //thread_create(&threads[0], nullptr, nullptr);
    threads[0] = TCB::createThread(nullptr,nullptr, nullptr);
    TCB::running = threads[0];

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(test_test), nullptr);

    //test_foo();


    Thread* t = new Worker(0);
    t->start();
//    while (!finished[0]){
//        thread_dispatch();
//    }


    t->join();

    //printInt(TCB::id);

    printString("Vratio sam se u main\n");


    return 0;
}
