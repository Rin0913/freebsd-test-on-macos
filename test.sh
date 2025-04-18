#!/bin/sh

set -e

uname -a
env
clang -v


SRCTOP=$(pwd)

cd bin/cat
bmake -m "$SRCTOP/mk" \
      SRCTOP="$SRCTOP" \
      MAKEOBJDIRPREFIX="$SRCTOP/obj"
