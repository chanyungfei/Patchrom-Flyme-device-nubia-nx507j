#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8857600 f8508a39ad461ea2167c8c82fe9942fe95a98d68 6109184 2df8c45ed13f62d109ac8e88229a50e9fc7c914e
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8857600:f8508a39ad461ea2167c8c82fe9942fe95a98d68; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6109184:2df8c45ed13f62d109ac8e88229a50e9fc7c914e EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery f8508a39ad461ea2167c8c82fe9942fe95a98d68 8857600 2df8c45ed13f62d109ac8e88229a50e9fc7c914e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
