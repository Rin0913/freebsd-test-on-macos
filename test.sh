#!/bin/sh

uname -a

env

clang -v

SRCTOP=${PWD}
cd bin/cat

bmake -m ${SRCTOP}/mk
