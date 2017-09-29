#!/usr/bin/make -f

all:
	@echo "Nothing to build, call 'make install' instead."

install:
	mkdir -p $(DESTDIR)/etc/skel
	mkdir -p $(DESTDIR)/etc/apt/apt.conf.d
	cp -a etc $(DESTDIR)/.

# vim:ts=4
