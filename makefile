CC = gcc
SRC = $(wildcard src/*.c) #lists all files in src with .c endings
OBJ = $(SRC:.c=.o) #all files in list ending in .c now end in .o

all: main

#gcc -o main main.o
main: $(OBJ)
	$(CC) -o $@ $^

.PHONY: clean
clean:
	rm -f $(OBJ) main
