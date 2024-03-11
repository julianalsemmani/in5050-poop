CC=nvcc
CFLAGS = -O1 -g -G

SOURCES = c63_write.cu c63dec.cu c63enc.cu common.cu dsp.cu io.cu me.cu tables.cu
OBJECTS = $(SOURCES:.c=.o)

.PHONY: clean  all

all: c63enc c63dec c63pred

c63enc: c63enc.o dsp.o tables.o io.o c63_write.o common.o me.o
	$(CC) $^ $(CFLAGS) -o $@
c63dec: c63dec.o dsp.o tables.o io.o common.o me.o
	$(CC) $^ $(CFLAGS) -o $@
c63pred: c63dec.o dsp.o tables.o io.o common.o me.o
	$(CC) $^ -DC63_PRED $(CFLAGS) -o $@

%.o: %.cu
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o
	rm -f c63enc c63dec c63pred

