#include "../h/semaphore.hpp"
#include "../h/syscall_c.hpp"


int Sem::wait() {
    if(this->closed) {
        return -1;
    }
    if((int)--this->value < 0) {
        block();
        if(this->closed) {
            return -1;
        }
    }
    return 0;
}

int Sem::signal() {
    if(this->closed) {
        return -1;
    }
    if((int)++this->value <= 0) {
        unblock();
    }
    return 0;
}

Sem *Sem::open(unsigned int init) {
    return new Sem(init);
}

int Sem::close() {
    if (closed) {
        return -1;
    }
    closed = true;

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
    return 0;
}


void Sem::block(){
    TCB* t = TCB::running;
    t->setBlocked(true);
    blocked.addLast(t);

    //TCB::yield();
    thread_dispatch();
}

void Sem::unblock(){
    TCB* t = blocked.removeFirst();
    t->setBlocked(false);
    Scheduler::put(t);
}