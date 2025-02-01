CC = x86_64-w64-mingw32-gcc
CFLAGS = -std=c11 -Wall -Wextra -pthread -I../modules

TARGET = mygrep
SOURCES = project/src/main.c project/src/search.c project/src/globals.c project/src/args_parser.c
OBJECTS = $(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f project/src/*.o $(TARGET)

test: $(TARGET)
	./$(TARGET) --test

.PHONY: all clean test
