#!/bin/bash

# Compile each .c file into .o (object) files
gcc -Wall -Werror -Wextra -pedantic -c *.c

# Create the static library liball.a from the .o files
ar -rc liball.a *.o

# Index the library to improve linking times
ranlib liball.a

# Remove the .o files to clean up
rm -f *.o
