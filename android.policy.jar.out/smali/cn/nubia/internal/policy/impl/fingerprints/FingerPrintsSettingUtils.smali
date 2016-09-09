.class public Lcn/nubia/internal/policy/impl/fingerprints/FingerPrintsSettingUtils;
.super Ljava/lang/Object;
.source "FingerPrintsSettingUtils.java"


# static fields
.field private static final NUBIA_FINGERPRINT_SWITCH:Ljava/lang/String; = "nubia_fingerprints_switch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFingerPrints(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_fingerprints_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 15
    return-void
.end method

.method public static enableFingerprintDaemon()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/io/File;

    const-string v1, "dev/goodix_fp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "sys.goodix.fpdaemon"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method
