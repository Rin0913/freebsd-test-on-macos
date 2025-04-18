#!/bin/sh

set -e

uname -a
env
clang -v


SRCTOP=$(pwd)

cd bin/cat
bmake -m "$SRCTOP/mk" \
        SRCTOP="$SRCTOP" \
        MAKEOBJDIRPREFIX="$SRCTOP/obj" \
        OBJCOPY=llvm-objcopy \
        CFLAGS="-Wno-nullability-completeness -Wno-expansion-to-defined"

path=$(bmake -m "$SRCTOP/mk" \
        SRCTOP="$SRCTOP" \
        MAKEOBJDIRPREFIX="$SRCTOP/obj" \
        -V '${.OBJDIR}')

mkdir -p $SRCTOP/outputs
cp -r $path $SRCTOP/outputs/
