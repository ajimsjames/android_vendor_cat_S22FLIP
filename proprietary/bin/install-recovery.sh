#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:31551488:fd1e4fbc131217c9d5691220b8b23602be7f7383; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:31551488:fd1e4fbc131217c9d5691220b8b23602be7f7383 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
