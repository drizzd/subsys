#!/bin/sh

CFLAGS="-fvisibility=hidden -Wall -g"

gcc $CFLAGS -fpic -c -olibsystem1.o libsystem1.c
gcc $CFLAGS -fpic -c -osubsystem1.o subsystem1.c
gcc $CFLAGS -fpic -c -olibsystem2.o libsystem2.c
gcc $CFLAGS -fpic -c -osubsystem2.o subsystem2.c
gcc $CFLAGS -shared -osubsystem1.so subsystem1.o libsystem1.o
gcc $CFLAGS -shared -osubsystem2.so subsystem2.o libsystem2.o
gcc $CFLAGS main.c subsystem1.so subsystem2.so -osystem
