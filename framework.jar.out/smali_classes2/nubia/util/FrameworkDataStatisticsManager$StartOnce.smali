.class Lnubia/util/FrameworkDataStatisticsManager$StartOnce;
.super Ljava/lang/Object;
.source "FrameworkDataStatisticsManager.java"

# interfaces
.implements Lnubia/util/FrameworkDataStatisticsManager$ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/util/FrameworkDataStatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartOnce"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/util/FrameworkDataStatisticsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/util/FrameworkDataStatisticsManager$1;

    .prologue
    .line 544
    invoke-direct {p0}, Lnubia/util/FrameworkDataStatisticsManager$StartOnce;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lnubia/util/IFrameworkDataStatisticsService;)V
    .locals 0
    .param p1, "service"    # Lnubia/util/IFrameworkDataStatisticsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-interface {p1}, Lnubia/util/IFrameworkDataStatisticsService;->startOnce()V

    .line 549
    return-void
.end method