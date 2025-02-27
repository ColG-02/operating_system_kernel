#ifndef SEMAPHORE_HPP
#define SEMAPHORE_HPP

#include "list.hpp"
#include "tcb.hpp"
#include "memoryAllocator.hpp"


class Sem {
public:
    explicit Sem(unsigned init = 1) : value((unsigned ) init), closed(false){}

    int wait();
    int signal();
    static Sem* open(unsigned init = 1);
    int close();


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

protected:

    unsigned getValue() const { return value; }

    void block();

    void unblock();

private:
    unsigned value;

    bool closed;

    List<TCB> blocked;
};
#endif