#include <stdarg.h>
#include <stdint.h>
#include <stdbool.h>

#include "kblinky.h"

#define LED_MASK_1 0b1111
#define LED_MASK_2 0b0000
#define LED_MASK_3 0b1010
#define LED_MASK_4 0b0101

struct gpio_regs {
    volatile uint32_t data1;
};

void light_odd() {
    struct gpio_regs * regs = (struct gpio_regs *)0x60040000; 
    regs->data1 = LED_MASK_3;
    
}

void light_even() {
    struct gpio_regs * regs = (struct gpio_regs *)0x60040000;
    regs->data1 = LED_MASK_4;
    
}

void kill_all() {
    struct gpio_regs * regs = (struct gpio_regs *)0x60040000;
    regs->data1 = LED_MASK_2;
    
}
