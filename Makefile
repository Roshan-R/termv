PROG=termv

PREFIX = /usr/local/bin

install:
	chmod 755 $(PROG)
	mkdir -p ${DESTDIR}${PREFIX}
	install ${PROG} ${DESTDIR}${PREFIX}/${PROG}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/${PROG}

.PHONY: install uninstall
