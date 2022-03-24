#include <unistd.h>

void hello_world(void) {
	write(STDOUT_FILENO, "Hello world!", 12);
}

int main(void) {
	hello_world();
	return (0);
}
