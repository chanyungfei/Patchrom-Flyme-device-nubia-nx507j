.class Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerDataInfo"
.end annotation


# instance fields
.field public mPower:D

.field public mTimes:J

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->this$0:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
