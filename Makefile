CC = gcc
CFLAGS = -Wall -Wextra -O2

TARGET = app/helloworld
SOURCE = app/helloworld.c

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE)

clean:
	rm -f $(TARGET)
