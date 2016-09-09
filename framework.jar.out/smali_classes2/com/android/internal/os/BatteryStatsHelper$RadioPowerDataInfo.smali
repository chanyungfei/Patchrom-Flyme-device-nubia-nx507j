.class Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;
.super Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioPowerDataInfo"
.end annotation


# instance fields
.field public mNoCoverageTimeMs:J

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->this$0:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method
