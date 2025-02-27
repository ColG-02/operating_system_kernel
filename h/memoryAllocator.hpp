#ifndef MEMORY_ALLOCATOR_HPP
#define MEMORY_ALLOCATOR_HPP


#include "../lib/hw.h"


struct MemUnit {
    MemUnit* next;
    MemUnit* prev;
    size_t size; //in blocks
};

class MemoryAllocator {

public:

    static void* mem_alloc (size_t size);
    static int mem_free (void* memory);

//    static size_t mem_in_blocks(uint64 n);
//    static size_t mem_check(){
//        if(!created) return ((size_t )HEAP_END_ADDR - (size_t )HEAP_START_ADDR);
//        return mem_head->size;
//    }
//    static void mem_view(){
//        if(!created) return;
//        int i = 0;
//        for (MemUnit* cur = mem_head; cur != nullptr; cur = cur->next){
//            printString("Broj modula: ");
//            printInteger(i);
//            printString(" - (");
//            printInteger(cur->size);
//            printString(")\n");
//        }
//    }


    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

//    static const uint64 zaglavlje = sizeof(MemUnit);


private:

    static MemUnit* mem_head;

    static void try_to_merge(MemUnit* ptr);


    static bool created;


    MemoryAllocator() = default; // no public constructor
    ~MemoryAllocator() = default; // no public destructor



};


#endif
