CFLAGS := -m32 -g -O3 $(CFLAGS)

.PHONY: clean

out/main: out/main.o out/macro.o
	$(CC) $(CFLAGS) -o $@ $^

out/macro.o: lib/macro.c | out
	$(CC) $(CFLAGS) -c -o $@ $^

out/main.o: main.asm | out
	nasm -felf32 -Ilib -g -o $@ $^

out:
	mkdir out

clean:
	rm -rf out
