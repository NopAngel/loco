CC = gcc
SRC = src/main.c
BIN = bin/main
PKG = gtk+-3.0 vte-2.91
CFLAGS = $(shell pkg-config --cflags $(PKG))
LDFLAGS = $(shell pkg-config --libs $(PKG))

all:
	$(CC) $(SRC) -o $(BIN) $(CFLAGS) $(LDFLAGS)

run:
	./bin/main

clean:
	rm -f $(BIN)
