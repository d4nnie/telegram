all:
	tar zxvf content.tar.gz -C .

install:
	mkdir -p $(DESTDIR)/opt/telegram/
	mkdir -p $(DESTDIR)/usr/share/applications
	install -m 644 content/telegram.svg $(DESTDIR)/opt/telegram/telegram.svg
	install -m 644 content/telegram.desktop $(DESTDIR)/usr/share/applications
	install -m 770 content/Telegram $(DESTDIR)/opt/telegram/Telegram
	install -m 770 content/Updater $(DESTDIR)/opt/telegram/Updater

clean:
	: # do nothing

distclean: clean

uninstall:
	: # do nothing

.PHONY: all install clean distclean uninstall
