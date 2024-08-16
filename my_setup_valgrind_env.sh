#!/bin/bash

# Set the installation directory of Valgrind
VALGRIND_DIR=/usr/local

# Update PATH and LD_LIBRARY_PATH
export PATH=$VALGRIND_DIR/bin:$PATH
export LD_LIBRARY_PATH=$VALGRIND_DIR/lib/valgrind:$LD_LIBRARY_PATH
export VALGRIND_LIB=$VALGRIND_DIR/libexec/valgrind

# Verify the setup
echo "PATH: $PATH"
echo "LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
echo "VALGRIND_LIB: $VALGRIND_LIB"
