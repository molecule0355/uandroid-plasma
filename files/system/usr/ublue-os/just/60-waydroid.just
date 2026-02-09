## From: https://github.com/plata/ublue-surface/blob/main/files/system/usr/share/ublue-os/just/waydroid.just
waydroid-init-normal:
  sudo waydroid init -c 'https://ota.waydro.id/system' -v 'https://ota.waydro.id/vendor'

waydroid-setup-vm:
  echo -e "ro.hardware.gralloc=default\nro.hardware.egl=swiftshader" | sudo tee -a /var/lib/waydroid/waydroid.cfg /
sudo waydroid upgrade -o
