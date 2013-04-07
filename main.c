#include <stdio.h>

extern int subsystem1(void);
extern int subsystem2(void);

int main(void)
{
	printf("subsystem1: %d\n", subsystem1());
	printf("subsystem2: %d\n", subsystem2());

	return 0;
}
