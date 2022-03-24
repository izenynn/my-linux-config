#include <unistd.h>
#include <stdio.h>

// my own implementation of putchar()
int my_putchar(int c) {
	unsigned char ret;

	ret = (unsigned char)c;
	if (write(STDOUT_FILENO, &c, 1) == -1) {
		return (EOF);
	}
	return ((int)ret);
}

// best "Hello world" function of all the internet
void hello_world(void) {
	my_putchar('H');
	my_putchar('e');
	my_putchar('l');
	my_putchar('l');
	my_putchar('o');
	my_putchar(' ');
	my_putchar('w');
	my_putchar('o');
	my_putchar('r');
	my_putchar('l');
	my_putchar('d');
	my_putchar('\n');
}

// main
int main(void) {
	hello_world();
	return (0);
}
