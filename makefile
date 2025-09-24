CFLAGS= -Wall -Wextra -pedantic

LIBS= -lstdc++

INCLUDE= 

OBJS=src/ppm_example.o

TARGET=ppm_example

all: 
	build

.c.o:
	gcc $(CFLAGS) $(INCLUDE) -c -o $@ $<

build:	$(OBJS)
	gcc -o $(TARGET) $(CFLAGS) $(OBJS) $(LIBS)

clean:
	-rm -rf $(OBJS) $(TARGET)

.PHONY: all build clean
