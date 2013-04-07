#!/bin/sh

gcc -fvisibility=hidden -fpic -c -olibsystem1.o libsystem1.c
gcc -fvisibility=hidden -fpic -c -osubsystem1.o subsystem1.c
gcc -fvisibility=hidden -fpic -c -olibsystem2.o libsystem2.c
gcc -fvisibility=hidden -fpic -c -osubsystem2.o subsystem2.c
gcc -shared -osubsystem1.so subsystem1.o libsystem1.o
gcc -shared -osubsystem2.so subsystem2.o libsystem2.o
gcc main.c subsystem1.so subsystem2.so -osystem
