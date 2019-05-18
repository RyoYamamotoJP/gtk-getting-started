CC = gcc
CFLAGS = -march=x86-64 -O2 -pipe `pkg-config --cflags gtk+-3.0`
LDFLAGS = `pkg-config --libs gtk+-3.0`

%: %.c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

all: example-0

clean:
	rm -f example-0
