extern int f(void);

int __attribute__((visibility("default"))) subsystem1(void)
{
	return f();
}
