#include <stdint.h>
#include <stdlib.h>

#include "common.h"
#include "kblinky.h"

static void usleep(unsigned us) {
    uintptr_t cycles0;
    uintptr_t cycles1;
    asm volatile ("csrr %0, 0xB00" : "=r" (cycles0));
    for (;;) {
        asm volatile ("csrr %0, 0xB00" : "=r" (cycles1));
        if (cycles1 - cycles0 >= us * 100) break;
    }
}

int main(void) {
    for (;;) {
        kill_all();
        usleep(1000000);
        light_odd();
        usleep(1000000);
        kill_all();
        usleep(1000000);
        light_even();
        usleep(1000000);
    }
    return 0;
}
