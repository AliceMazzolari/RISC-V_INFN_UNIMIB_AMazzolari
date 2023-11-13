#include <stdarg.h>
#include <stdint.h>
#include <stdbool.h>

#include "xadc.h"

#define SR_RX_FIFO_VALID_DATA   (1 << 0) /* data in receive FIFO */
#define SR_RX_FIFO_FULL         (1 << 1) /* receive FIFO full */
#define SR_TX_FIFO_EMPTY        (1 << 2) /* transmit FIFO empty */
#define SR_TX_FIFO_FULL         (1 << 3) /* transmit FIFO full */

struct uart_regs {
    volatile uint32_t rx_fifo;
    volatile uint32_t tx_fifo;
    volatile uint32_t status;
    volatile uint32_t control;
};

struct xadc_regs_local {
    volatile uint32_t SRR;
    volatile uint32_t ST;
    volatile uint32_t AOSR;
    volatile uint32_t CONVSTR;
    volatile uint32_t SYSMONRR;
};

struct xadc_regs_interrupt_controller {
    volatile uint32_t GIER;
    volatile uint32_t IPISR;
    volatile uint32_t IPIER;
};

struct xadc_regs_hard_macro {
    volatile uint32_t temperature;
    volatile uint32_t Vccint;
    volatile uint32_t Vccaux;
    volatile uint32_t VpVn;
    volatile uint32_t Vrefp;
    volatile uint32_t Vrefn;
    volatile uint32_t Vbram;
    volatile uint32_t undefined1;
    volatile uint32_t supply_offset;
    volatile uint32_t ADC_offset;
    volatile uint32_t gain_error;
    volatile uint32_t undefined2;
    volatile uint32_t undefined3;
    volatile uint32_t Vccpint; //no
    volatile uint32_t Vccpaux; //no
    volatile uint32_t Vcco_ddr; //no
    volatile uint32_t VAUXPN0;
    volatile uint32_t VAUXPN1;
    volatile uint32_t VAUXPN2;
    volatile uint32_t VAUXPN3;
    volatile uint32_t VAUXPN4;
    volatile uint32_t VAUXPN5;
    volatile uint32_t VAUXPN6;
    volatile uint32_t VAUXPN7;
    volatile uint32_t VAUXPN8;
    volatile uint32_t VAUXPN9;
    volatile uint32_t VAUXPN10;
    volatile uint32_t VAUXPN11;
    volatile uint32_t VAUXPN12;
    volatile uint32_t VAUXPN13;
    volatile uint32_t VAUXPN14;
    volatile uint32_t VAUXPN15;
    volatile uint32_t max_temp;
    volatile uint32_t max_Vccint;
    volatile uint32_t max_Vccaux;
    volatile uint32_t max_Vbram;
    volatile uint32_t min_temp;
    volatile uint32_t min_Vccint;
    volatile uint32_t min_Vccaux;
    volatile uint32_t min_Vbram;
    volatile uint32_t max_Vccpint;
    volatile uint32_t max_Vccpaux;
    volatile uint32_t max_Vccpdro;
    volatile uint32_t unassigned1;
    volatile uint32_t min_Vccpint;
    volatile uint32_t min_Vccpaux;
    volatile uint32_t min_Vccpdro;
    volatile uint32_t unassigned2;
    volatile uint32_t undefined4;
    volatile uint32_t undefined5;
    volatile uint32_t undefined6;
    volatile uint32_t undefined7;
    volatile uint32_t undefined8;
    volatile uint32_t undefined9;
    volatile uint32_t undefined10;
    volatile uint32_t undefined11;
    volatile uint32_t undefined12;
    volatile uint32_t undefined13;
    volatile uint32_t undefined14;
    volatile uint32_t undefined15;
    volatile uint32_t undefined16;
    volatile uint32_t undefined17;
    volatile uint32_t undefined18;   
    
    volatile uint32_t flag; 
    
    volatile uint32_t configuration0;
    volatile uint32_t configuration1;
    volatile uint32_t configuration2;
    volatile uint32_t test0;
    volatile uint32_t test1;
    volatile uint32_t test2;
    volatile uint32_t test3;
    volatile uint32_t test4;
    volatile uint32_t sequence0;
    volatile uint32_t sequence1;
    volatile uint32_t sequence2;
    volatile uint32_t sequence3;
    volatile uint32_t sequence4;
    volatile uint32_t sequence5;
    volatile uint32_t sequence6;
    volatile uint32_t sequence7;
    volatile uint32_t alarm0;
    volatile uint32_t alarm1;
    volatile uint32_t alarm2;
    volatile uint32_t alarm3;
    volatile uint32_t alarm4;
    volatile uint32_t alarm5;
    volatile uint32_t alarm6;
    volatile uint32_t alarm7;
    volatile uint32_t alarm8;
    volatile uint32_t alarm9;
    volatile uint32_t alarm10;
    volatile uint32_t alarm11;
    volatile uint32_t alarm12;
    volatile uint32_t alarm13;
    volatile uint32_t alarm14;
    volatile uint32_t alarm15;   
};


void kputreg() {
    struct uart_regs * uregs = (struct uart_regs *)0x60010000;
    struct xadc_regs_local * xregs_local = (struct xadc_regs_local *)0x60030000;
    struct xadc_regs_interrupt_controller * xregs_interrupt_controller = (struct xadc_regs_interrupt_controller *)0x6003005C;
    struct xadc_regs_hard_macro * xregs_hard_macro = (struct xadc_regs_hard_macro *)0x60030200;
    uint16_t t = xregs_hard_macro->temperature;
    //uint16_t t = 0;
    //while (uregs->status & SR_TX_FIFO_FULL) {}
    //uregs->tx_fifo = 0x00;
    while (uregs->status & SR_TX_FIFO_FULL) {}
    uregs->tx_fifo = (t >> 4) & 0xff;
    while (uregs->status & SR_TX_FIFO_FULL) {}
    uregs->tx_fifo = (t >> 12) & 0xf;
    //while (uregs->status & SR_TX_FIFO_FULL) {}
    //uregs->tx_fifo = t & 0xf0;
}

void kputc(char ch) {
    struct uart_regs * regs = (struct uart_regs *)0x60010000;
    while (regs->status & SR_TX_FIFO_FULL) {}
    regs->tx_fifo = ch & 0xff;
}

void kputs(const char * s) {
    while (*s) kputc(*s++);
    kputc('\r');
    kputc('\n');
}

void kprintf(const char * fmt, ...) {
    va_list vl;
    int is_format = 0;
    int is_long = 0;
    int is_char = 0;
    char c;

    va_start(vl, fmt);
    while ((c = *fmt++) != '\0') {
        if (is_format) {
            switch (c) {
            case 'l':
                is_long = 1;
                continue;
            case 'h':
                is_char = 1;
                continue;
            case 'x': {
                unsigned long n;
                long i;
                if (is_long) {
                    n = va_arg(vl, unsigned long);
                    i = (sizeof(unsigned long) << 3) - 4;
                }
                else {
                    n = va_arg(vl, unsigned int);
                    i = is_char ? 4 : (sizeof(unsigned int) << 3) - 4;
                }
                for (; i >= 0; i -= 4) {
                    long d;
                    d = (n >> i) & 0xF;
                    kputc(d < 10 ? '0' + d : 'a' + d - 10);
                }
                break;
            }
            case 'd': {
                char buf[32];
                long n;
                long i = sizeof(buf);
                if (is_long) {
                    n = va_arg(vl, long);
                }
                else {
                    n = va_arg(vl, int);
                }
                if (n < 0) {
                    kputc('-');
                    n = -n;
                }
                while (i > 0) {
                    buf[--i] = n % 10 + '0';
                    n = n / 10;
                    if (n == 0) break;
                }
                while (i < sizeof(buf)) kputc(buf[i++]);
                break;
            }
            case 's': {
                const char * s = va_arg(vl, const char *);
                while (*s) kputc(*s++);
                break;
            }
            case 'c':
                kputc(va_arg(vl, int));
                break;
            }
            is_format = 0;
            is_long = 0;
            is_char = 0;
        }
        else if (c == '%') {
            is_format = 1;
        }
        else if (c == '\n') {
            kputc('\r');
            kputc('\n');
        }
        else {
            kputc(c);
        }
    }
    va_end(vl);
}


