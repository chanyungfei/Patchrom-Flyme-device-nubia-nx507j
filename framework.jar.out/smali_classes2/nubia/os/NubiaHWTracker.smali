.class public Lnubia/os/NubiaHWTracker;
.super Ljava/lang/Object;
.source "NubiaHWTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/NubiaHWTracker$1;,
        Lnubia/os/NubiaHWTracker$GpuSpeedTime;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NubiaHWTracker"


# instance fields
.field mGpuSpeedTime:Lnubia/os/NubiaHWTracker$GpuSpeedTime;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lnubia/os/NubiaHWTracker$GpuSpeedTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/os/NubiaHWTracker$GpuSpeedTime;-><init>(Lnubia/os/NubiaHWTracker;Lnubia/os/NubiaHWTracker$1;)V

    iput-object v0, p0, Lnubia/os/NubiaHWTracker;->mGpuSpeedTime:Lnubia/os/NubiaHWTracker$GpuSpeedTime;

    .line 47
    return-void
.end method


# virtual methods
.method public getLastGpuSpeedTimes()[J
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnubia/os/NubiaHWTracker;->mGpuSpeedTime:Lnubia/os/NubiaHWTracker$GpuSpeedTime;

    invoke-virtual {v0}, Lnubia/os/NubiaHWTracker$GpuSpeedTime;->getLastGpuSpeedTimes()[J

    move-result-object v0

    return-object v0
.end method
