#include <stdarg.h>
#include <stdint.h>
#include <stdbool.h>

#include "ktimer.h"

#define INT_OCC (1 << 8) //clear interrupt bit
#define EN_TIM (1 << 7)
#define EN_INT (1 << 6)
#define LOAD_TIM (1 << 5) //clear before enable timer
#define COUNT_DOWN (1 << 1)



struct tim_regs {
    volatile uint32_t control;
    volatile uint32_t load;
    volatile uint32_t counter;
};

void set_tim() {
    struct tim_regs * regs = (struct tim_regs *)0x60050000; 
    regs->control |= INT_OCC;
    regs->load = 0x5F5E100;
    regs->control |= LOAD_TIM;
    //regs->control |= AUTO_RELOAD;
    
}

void start_tim() {
    struct tim_regs * regs = (struct tim_regs *)0x60050000; 
    regs->control = 0;
    regs->control |= COUNT_DOWN;
    regs->control |= EN_INT;
    regs->control |= EN_TIM;
    
}

int wake_up() {
    struct tim_regs * regs = (struct tim_regs *)0x60050000; 
    if (regs->control & INT_OCC)
    	{return 1;}
    	 
}


