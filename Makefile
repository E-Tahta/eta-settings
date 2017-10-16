#!/usr/bin/make -f

all:
	@echo "Nothing to build, call 'make install' instead."

install:
	mkdir -p $(DESTDIR)/etc/skel
	mkdir -p $(DESTDIR)/etc/apt/apt.conf.d
	mkdir -p $(DESTDIR)/usr/share/lightdm/lightdm.conf.d
	mkdir -p $(DESTDIR)/usr/share/lightdm/lightdm-gtk-greeter.conf.d
	cp -a etc usr $(DESTDIR)/.

# vim:ts=4
