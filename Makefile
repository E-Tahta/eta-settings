#!/usr/bin/make -f

all: install

install:
	mkdir -p $(DESTDIR)/etc/logrotate.d
	@cp -fr eta $(DESTDIR)/etc/logrotate.d/

	mkdir -p $(DESTDIR)/usr/share/kde4/apps/kdm/pics
	@cp -fr etalogo.png $(DESTDIR)/usr/share/kde4/apps/kdm/pics/
	@ln -sf etalogo.png $(DESTDIR)/usr/share/kde4/apps/kdm/pics/kdelogo.png
	@ln -sf etalogo.png $(DESTDIR)/usr/share/kde4/apps/kdm/pics/shutdown.png

	mkdir -p $(DESTDIR)/etc/kde4/kdm
	@cp -fr kdmrc $(DESTDIR)/etc/kde4/kdm/
	@cp -fr backgroundrc $(DESTDIR)/etc/kde4/kdm/
	@cp -fr Xreset $(DESTDIR)/etc/kde4/kdm/


	mkdir -p $(DESTDIR)/etc/apt/apt.conf.d
	@cp -fr 99translations $(DESTDIR)/etc/apt/apt.conf.d/

	mkdir -p $(DESTDIR)/usr/share/lightdm/lightdm.conf.d
	@cp -fr 20_etap.conf $(DESTDIR)/usr/share/lightdm/lightdm.conf.d/

	mkdir -p $(DESTDIR)/usr/share/lightdm/lightdm-gtk-greeter.conf.d
	@cp -fr 30_etap.conf $(DESTDIR)/usr/share/lightdm/lightdm-gtk-greeter.conf.d/

	mkdir -p $(DESTDIR)/usr/share/kde4/apps/color-schemes
	@cp -fr Eta.colors $(DESTDIR)/usr/share/kde4/apps/color-schemes/

	mkdir -p $(DESTDIR)/usr/share/kde4/apps/QtCurve
	@cp -fr Eta.qtcurve $(DESTDIR)/usr/share/kde4/apps/QtCurve/

	@cp -fr skel $(DESTDIR)/etc/

uninstall:
	@rm -fr $(DESTDIR)/etc/apt/apt.conf.d/99translations
	@rm -fr $(DESTDIR)/usr/share/lightdm/lightdm.conf.d/20_etap.conf
	@rm -fr $(DESTDIR)/usr/share/lightdm/lightdm-gtk-greeter.conf.d/30_etap.conf
	@rm -fr $(DESTDIR)/usr/share/kde4/apps/color-schemes/Eta.colors
	@rm -fr $(DESTDIR)/usr/share/kde4/apps/QtCurve/Eta.qtcurve
	@rm -fr $(DESTDIR)/skel/*.*

.PHONY: install uninstall
