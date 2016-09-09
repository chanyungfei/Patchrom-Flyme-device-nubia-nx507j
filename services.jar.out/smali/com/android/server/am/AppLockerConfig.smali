.class public final Lcom/android/server/am/AppLockerConfig;
.super Ljava/lang/Object;
.source "AppLockerConfig.java"


# static fields
.field public static final DEBUG:Z

.field public static final ENABLE:Z

.field public static final TAG:Ljava/lang/String; = "AppLocker"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const-string v0, "1"

    const-string v1, "ro.nubia.applock.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/AppLockerConfig;->ENABLE:Z

    .line 14
    sget-boolean v0, Lcom/android/server/am/AppLockerConfig;->ENABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
