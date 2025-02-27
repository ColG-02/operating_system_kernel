#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../h/riscv.hpp"


void* mem_alloc(size_t size) {

    size_t m = (size % MEM_BLOCK_SIZE == 0 ? size : ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE);
    __asm__ volatile ("mv a1, %[tmp]" : : [tmp] "r" (m)); // m = broj bajtova poravnat na blokove
    __asm__ volatile ("li a0, 0x01");

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile ("mv %[tmp], a0" : [tmp] "=r" (ret));
    return (void*) ret;
}

int mem_free (void* ptr) {
    __asm__ volatile ("mv a1, %[tmp]" : : [tmp] "r" (ptr));
    __asm__ volatile ("li a0, 0x02");

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile ("mv %[tmp], a0" : [tmp] "=r" (ret));
    return (int)ret;
}

int getThreadId() {
    __asm__ volatile ("li a0, 0x08");

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

void thread_start(TCB* tcb) {
    __asm__ volatile("mv a1, %[tmp]" : : [tmp] "r"(tcb));
    __asm__ volatile("li a0, 0x09");
    __asm__ volatile("ecall");
}

int thread_create_without_start(thread_t* handle, void (*start_routine)(void*), void* arg) {
    void* stack_space = nullptr;
    if(start_routine != nullptr) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    __asm__ volatile("mv a4, %0" : : "r"(stack_space));

    __asm__ volatile("mv a3, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x10");
    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {

    void* stack_space = nullptr;
    if(start_routine != nullptr) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    __asm__ volatile("mv a4, %0" : : "r"(stack_space));

    __asm__ volatile("mv a3, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

int thread_exit() {
    __asm__ volatile ("li a0, 0x12");

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile ("ecall");

}

void thread_join(thread_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x14");
    __asm__ volatile ("ecall");
}

int sem_open(sem_t* handle, unsigned init) {
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x21");
    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

int sem_close(sem_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x22");
    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

int sem_wait(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x23");
    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

int sem_signal(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x24");
    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int)ret;
}

char getc() {
    __asm__ volatile("li a0, 0x41");
    __asm__ volatile ("ecall");

    char ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return ret;
}

void putc(char c) {
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    __asm__ volatile("li a0, 0x42");
    __asm__ volatile ("ecall");
}

int time_sleep(time_t time) {
    return 0;
}