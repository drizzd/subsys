#include <stdio.h>

extern int subsystem1();
extern int subsystem2();

int main()
{
	printf("subsystem1: %d\n", subsystem1());
	printf("subsystem2: %d\n", subsystem2());

	return 0;
}
