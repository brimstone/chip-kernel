vmlinuz:
	cd CHIP-linux; \
	make -j 4 \
	&& make modules_install

