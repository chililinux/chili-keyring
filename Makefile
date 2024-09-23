V=20240821

PREFIX = /usr/local

update:
	gpg --recv-keys $(cat chili-trusted | cut -d: -f1) $(cat chili-revoked)
	gpg --export --armor $(cat chili-trusted | cut -d: -f1) $(cat chili-revoked) > chili.gpg

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 chili{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/chili{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
