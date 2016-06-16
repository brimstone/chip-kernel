vmlinuz:
	cd CHIP-linux; \
	make -j 4 deb-pkg
	find . -iname '*.deb'
	