#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8853504 cc2a7fd19b6cd9d8d5154550652009dd205faaa0 6105088 71abfc058d1e9004cbdab327ec47cbf9e4e2494e
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8853504:cc2a7fd19b6cd9d8d5154550652009dd205faaa0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6105088:71abfc058d1e9004cbdab327ec47cbf9e4e2494e EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery cc2a7fd19b6cd9d8d5154550652009dd205faaa0 8853504 71abfc058d1e9004cbdab327ec47cbf9e4e2494e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
