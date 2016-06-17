vmlinuz: CHIP-linux/RTL8723BS
	cp config-4.3.0-ntc CHIP-linux/.config
	cd CHIP-linux; \
	make -j 4 deb-pkg

CHIP-linux/RTL8723BS:
	cd RTL8723BS; \
	for i in debian/patches/0*; do \
		patch -p 1 <$i; \
	done; \
	cd ..; \
	mv RTL8723BS CHIP-linux; \
	sed -i '/endif/isource "drivers/net/wireless/RTL8723BS/Kconfig"' \
		CHIP-linux/drivers/net/wireless/kconfig
