

#include "../h/memoryAllocator.hpp"

bool MemoryAllocator::created = false;
MemUnit* MemoryAllocator::mem_head = nullptr;

void* MemoryAllocator::mem_alloc(size_t size)
{
    if (!created)
    {
        mem_head = (MemUnit *) ((uint64 *) HEAP_START_ADDR);
        mem_head->next = nullptr;
        mem_head->prev = nullptr;
        //mem_head->size = ((uint64) ((uint64 ) HEAP_END_ADDR - (uint64 ) HEAP_START_ADDR) - sizeof(MemUnit)) / MEM_BLOCK_SIZE;
        mem_head->size = ((uint64) ((uint64) HEAP_END_ADDR - (uint64) HEAP_START_ADDR) - sizeof(MemUnit));
        created = true;
    }

    //size *= MEM_BLOCK_SIZE;
    MemUnit *cur ;
    for (cur = mem_head; cur != nullptr && cur->size < size; cur = cur->next);

    if (!cur) return nullptr;

    else{
        if (cur->size - size >= sizeof(MemUnit) + MEM_BLOCK_SIZE){
            MemUnit *newUnit = (MemUnit *) ((uint64 *) cur + size + sizeof(MemUnit));

            newUnit->size = cur->size - size - sizeof(MemUnit);
            newUnit->next = cur->next;
            newUnit->prev = cur->prev;

            if (cur->prev) cur->prev->next = newUnit;
            else mem_head = newUnit;
            cur->size = size;
            cur->next = nullptr;

            return (MemUnit *) ((char*)cur + sizeof(MemUnit));
        }
        else {
            if (cur->prev) cur->prev->next = cur->next;
            else mem_head = cur->next;
            if (cur->next) cur->next->prev = cur->prev;
            //cur->size = size;
//            printInteger(sizeof(MemUnit));
//            printString("\n");
            return (MemUnit *)((char*)cur + sizeof(MemUnit));
        }
    }
}

int MemoryAllocator::mem_free(void* addr) {
    if(!addr) return -1;
    MemUnit* cur = 0;
    if(!mem_head || (uint64*)addr < (uint64*)mem_head) cur = 0;
    else for(cur = mem_head; cur->next != nullptr && (uint64*)addr > (uint64*)(cur->next); cur = cur->next);

//    printInteger(sizeof(MemUnit));
//    printString("\n");
    MemUnit* ptr = (MemUnit*) ((char*)addr - sizeof(MemUnit));
    //MemUnit* ptr = (MemUnit*) (0x80006b00);
    size_t size = ptr->size;
    ptr->size = size;
    ptr->prev = cur;
    if(cur) ptr->next = cur->next;
    else ptr->next = mem_head;
    if (ptr->next) ptr->next->prev = ptr;
    if (cur) cur->next = ptr;
    else mem_head = ptr;

    try_to_merge(ptr);
    try_to_merge(ptr->prev);
    return 0;
}

void MemoryAllocator::try_to_merge(MemUnit *cur) {
    if(!cur) return;

    if(cur->next && ((uint64*)cur + cur->size + sizeof(MemUnit) == (uint64*)(cur->next))) {
        cur->size = cur->size + cur->next->size + sizeof(MemUnit);
        cur->next = cur->next->next;
        if(cur->next) cur->next->prev = cur;
    }
}

//size_t MemoryAllocator::mem_in_blocks(uint64 n){
//    if(!created) return 0;
//    if(!n) return 0;
//    return (n / MEM_BLOCK_SIZE) + 1;
//}