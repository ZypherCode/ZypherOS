#include <stdio.h>

#include <kernel/tty.h>

void kernel_main(void) {
    terminal_initialize();
    printf("Hello, kernel World!\n"
           "Hello, PPoX community!\n\n"
           "I'm ZypherCode!");
}
