extern int f(void);

int __attribute__((visibility("default"))) subsystem2(void)
{
	return f();
}
