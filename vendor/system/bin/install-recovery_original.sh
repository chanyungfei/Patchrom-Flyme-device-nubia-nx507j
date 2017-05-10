#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9086976 eede925fe0d06ccb11c92e44466818c7d0051f2e 6281216 352f398f194b0982089829fe4b4c92a43624cfcc
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9086976:eede925fe0d06ccb11c92e44466818c7d0051f2e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6281216:352f398f194b0982089829fe4b4c92a43624cfcc EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery eede925fe0d06ccb11c92e44466818c7d0051f2e 9086976 352f398f194b0982089829fe4b4c92a43624cfcc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
