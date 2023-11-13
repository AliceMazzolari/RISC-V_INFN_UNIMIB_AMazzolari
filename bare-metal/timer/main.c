#include <stdint.h>
#include <stdlib.h>

#include "common.h"
#include "kblinky.h"
#include "ktimer.h"

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
        
        set_tim();
        start_tim();
        while(wake_up() != 1) {}
        light_odd();

	set_tim();
        start_tim();
        while(wake_up() != 1) {}
        kill_all();

	set_tim();
        start_tim();
        while(wake_up() != 1) {}
        light_even();

	set_tim();
        start_tim();
        while(wake_up() != 1) {}
        kill_all();

        
    }
    return 0;
}
