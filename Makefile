# This Makefile is written for Windows
# You must have make, gcc and busybox installed
# I recommend installing them via scoop (https://scoop.sh)

CC=gcc
CFLAGS=-g -Wall -O0
BIN=bin/app.exe

.PHONY: build release clean

build: $(BIN)

release: CFLAGS=-g0 -Wall -O2 -DNDEBUG
release: clean build
 
clean:
	rm -f $(BIN)

$(BIN): src/main.c
	@mkdir -p bin
	$(CC) $(CFLAGS) src/main.c -o $@
