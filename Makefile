CC = g++
CFLAGS = -Wall
PREFIX = /usr/local

demo: src/demo.cpp
	$(CC) $(CFLAGS) -o demo src/demo.cpp

.PHONY: install
install: demo
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/demo

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/demo
