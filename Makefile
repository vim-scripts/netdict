# $Log: Makefile,v $
# Revision 1.1  2003/08/23 19:29:42  bjk
# Initial commit.
#
PREFIX		= $(HOME)/.vim

install:
	mkdir -p $(PREFIX)/syntax $(PREFIX)/doc $(PREFIX)/plugin
	cp syntax/netdict.vim $(PREFIX)/syntax
	cp plugin/netdict.vim $(PREFIX)/plugin
	cp doc/netdict.txt $(PREFIX)/doc
