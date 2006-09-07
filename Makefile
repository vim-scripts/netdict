PREFIX		= $(HOME)/.vim

install:
	mkdir -p $(PREFIX)/syntax $(PREFIX)/doc $(PREFIX)/plugin
	cp syntax/netdict.vim $(PREFIX)/syntax
	cp plugin/netdict.vim $(PREFIX)/plugin
	cp doc/netdict.txt $(PREFIX)/doc

dist:
	test -d .git && git log > ChangeLog
	mv .git ..
	tar zcf ../netdict.tgz -C .. netdict
	mv ../.git .
