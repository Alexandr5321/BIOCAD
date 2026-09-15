CC = gcc
CFLAGS = -Wall -Wextra -O2

all: app/helloworld

app/hello: app/helloworld.c
	$(CC) $(CFLAGS) -o app/helloworld app/helloworld.c

clean:
	rm -f app/hello
