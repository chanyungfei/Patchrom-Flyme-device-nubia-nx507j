.class public final Lnubia/os/NubiaServiceInfoTable;
.super Ljava/lang/Object;
.source "NubiaServiceInfoTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNubiaServiceInfos()[Lnubia/os/NubiaServiceInfo;
    .locals 3

    .prologue
    .line 9
    const/4 v1, 0x5

    new-array v0, v1, [Lnubia/os/NubiaServiceInfo;

    const/4 v1, 0x0

    new-instance v2, Lnubia/os/SystemAccessServiceInfo;

    invoke-direct {v2}, Lnubia/os/SystemAccessServiceInfo;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lnubia/os/edge/EdgeTouchEventServiceInfo;

    invoke-direct {v2}, Lnubia/os/edge/EdgeTouchEventServiceInfo;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lnubia/os/ClipServiceInfo;

    invoke-direct {v2}, Lnubia/os/ClipServiceInfo;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lnubia/os/ApplicationManagerServiceInfo;

    invoke-direct {v2}, Lnubia/os/ApplicationManagerServiceInfo;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lnubia/smartkey/SmartKeyActionServiceInfo;

    invoke-direct {v2}, Lnubia/smartkey/SmartKeyActionServiceInfo;-><init>()V

    aput-object v2, v0, v1

    .line 17
    .local v0, "infos":[Lnubia/os/NubiaServiceInfo;
    return-object v0
.end method
