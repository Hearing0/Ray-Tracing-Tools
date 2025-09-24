CFLAGS= -Wall -Wextra -pedantic

LIBS= -lstdc++ -lm

INCLUDE= 

OBJS=src/main.o

TARGET=main

all: 
	build

.c.o:
	gcc $(CFLAGS) $(INCLUDE) -c -o $@ $<

build:	$(OBJS)
	gcc -o $(TARGET) $(CFLAGS) $(OBJS) $(LIBS)

clean:
	-rm -rf $(OBJS) $(TARGET)

.PHONY: all build clean
