#!/bin/sh

gcc -fpic -c -olibsystem1.o libsystem1.c
gcc -fpic -c -osubsystem1.o subsystem1.c
gcc -fpic -c -olibsystem2.o libsystem2.c
gcc -fpic -c -osubsystem2.o subsystem2.c
gcc -shared -Wl,--version-script=subsystem1.map -osubsystem1.so subsystem1.c libsystem1.o
gcc -shared -Wl,--version-script=subsystem2.map -osubsystem2.so subsystem2.c libsystem2.o
gcc main.c subsystem1.so subsystem2.so -osystem
