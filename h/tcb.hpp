#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "memoryAllocator.hpp"
#include "print.hpp"


// Thread Control Block


class TCB
{
public:
    static int id;

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return this->blocked; }

    void setBlocked(bool value) { this->blocked = value; }

    bool isMain() const { return this->main; }

    int getMyId() const { return myId; }

    static void setMaximumThreads(int num_of_threads){
        int n = (num_of_threads == 0 ? 5 : num_of_threads);
        thread_limit = n;
    }

    using Body = void (*)(void*);

    static TCB *createThread(Body body, void* arg, void* stack);

    static TCB *createThreadWithoutStarting(Body body, void* arg, void* stack);

    static void startThread(TCB* tcbToStart) {
        Scheduler::put(tcbToStart);
    }

    static void yield();

    static TCB *running;

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }
    void* operator new[](size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }
    
    void operator delete(void *ptr) {
        MemoryAllocator::mem_free(ptr);
    }
    void operator delete[](void *ptr) {
        MemoryAllocator::mem_free(ptr);
    }


private:

    TCB(Body body, void* arg, void* stk) :
            body(body),
            stack((uint64*) stk),
            //stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            main(body == nullptr),
            arg(arg)

    {
        myId = ++id;
        //printInteger(id);
    }


    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    bool blocked;
    bool main;
    void* arg;
    List<TCB> joined;

    int myId;
    static int thread_limit;


    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static void join(TCB* handle);

    void releaseAll();
    
    static uint64 constexpr STACK_SIZE = 1024;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
