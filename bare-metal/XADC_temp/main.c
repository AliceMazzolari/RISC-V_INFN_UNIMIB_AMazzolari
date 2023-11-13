#include <stdint.h>
#include <stdlib.h>

#include "common.h"
#include "xadc.h"

static void usleep(unsigned us) {
    uintptr_t cycles0;
    uintptr_t cycles1;
    asm volatile ("csrr %0, 0xB00" : "=r" (cycles0));
    for (;;) {
        asm volatile ("csrr %0, 0xB00" : "=r" (cycles1));
        if (cycles1 - cycles0 >= us * 100) break;
    }
}

void main(void) {
    //kprintf("\n");
    while (1) {
        kputreg();
        //kprintf("%d", kputreg());
        //kprintf("\n");
        //usleep(100000);
    }
    //return 0;
}

