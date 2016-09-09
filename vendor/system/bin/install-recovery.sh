#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10573824:a13f56d2cf4dbfa357c2acebd70efca460809486; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7843840:a926a5a4ea8cbf6139c4f555c1293f026e5277a6 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery a13f56d2cf4dbfa357c2acebd70efca460809486 10573824 a926a5a4ea8cbf6139c4f555c1293f026e5277a6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
