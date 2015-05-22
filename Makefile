CFLAGS=-DLINUX -g

rinetd: rinetd.o match.o ae.o
	gcc rinetd.o match.o ae.o -o rinetd

clean:
	rm -f *.o
install: rinetd
	install -m 700 rinetd /usr/sbin
	install -m 644 rinetd.8 /usr/man/man8

