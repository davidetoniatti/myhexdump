CFLAGS=-Wall -ggdb -std=c11 -pedantic

all:
	$(CC) $(CFLAGS) hexdump.c -o hexdump
clean:
	rm -f hexdump
