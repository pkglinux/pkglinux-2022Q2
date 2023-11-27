#!/bin/bash

./id.sh
. ./data
echo "$LIVEKITDATA"
echo "$LIVEKITNAME"
iso_dir="$LIVEKITDATA"
_linux="$LIVEKITNAME"

#cd "$iso_dir" && \
#  cp -av $_linux/boot . && \
#  cp -av $_linux/boot/* .

#mkdir -pv "$iso_dir/boot/grub"
#cat ./grub.cfg | sed -r "s:/boot/:/$LIVEKITNAME/boot/:" > $iso_dir/boot/grub.cfg

rm -fv "$iso_dir/efi.img"
efi_img=$(mktemp)

grub-mkimage-efi -O x86_64-efi \
  -o "$efi_img" \
  -p /boot/grub \
  efi_gop efi_uga boot linux search normal configfile part_gpt btrfs ext2 fat iso9660 loopback test keystatus gfxmenu regexp probe all_video gfxterm font echo read ls cat png jpeg halt reboot

export MTOOLS_SKIP_CHECK=1

mkfs.vfat -C "$iso_dir/efi.img" \
  $(($(wc -c < $efi_img) / 1024 + 511))

mmd -i "$iso_dir/efi.img" \
  efi \
  efi/boot

mcopy -i "$iso_dir/efi.img" \
  "$efi_img" \
  ::efi/boot/bootx64.efi

#	-v -J -R -D -A $_linux \
#	-iso-level 3 \
#cd "$iso_dir" && \
	xorriso -as mkisofs \
	-isohybrid-mbr /usr/share/syslinux/isohdpfx.bin \
	-b $_linux/boot/isolinux.bin \
	-c $_linux/boot/isolinux.boot \
	-no-emul-boot \
	-boot-load-size 4 \
	-boot-info-table \
	-V "$(cat id_label)" \
	-o /tmp/$_linux-$(uname -m).iso \
	-eltorito-alt-boot \
	-no-emul-boot \
	-e efi.img \
	-isohybrid-gpt-basdat \
	$iso_dir
