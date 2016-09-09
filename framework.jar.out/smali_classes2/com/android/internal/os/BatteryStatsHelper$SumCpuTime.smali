.class Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SumCpuTime"
.end annotation


# instance fields
.field public mCpuTime:J

.field public mUid0CpuTime:J

.field public mUid0FgTime:J

.field public mcpuFgTime:J

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1367
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->this$0:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mCpuTime:J

    .line 1369
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mcpuFgTime:J

    .line 1370
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0CpuTime:J

    .line 1371
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0FgTime:J

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 3
    .param p1, "cputime"    # J
    .param p3, "fgtime"    # J

    .prologue
    .line 1375
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mCpuTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mCpuTime:J

    .line 1376
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mcpuFgTime:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mcpuFgTime:J

    .line 1377
    return-void
.end method

.method public addUid0(JJ)V
    .locals 3
    .param p1, "cputime"    # J
    .param p3, "fgtime"    # J

    .prologue
    .line 1379
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0CpuTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0CpuTime:J

    .line 1380
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0FgTime:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0FgTime:J

    .line 1381
    return-void
.end method

.method public getALLUidCpuFgTime()J
    .locals 4

    .prologue
    .line 1387
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mcpuFgTime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0FgTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getALLUidCpuTime()J
    .locals 4

    .prologue
    .line 1384
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mCpuTime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0CpuTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUid0CpuFgTime()J
    .locals 2

    .prologue
    .line 1399
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0FgTime:J

    return-wide v0
.end method

.method public getUid0CpuTime()J
    .locals 2

    .prologue
    .line 1396
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0CpuTime:J

    return-wide v0
.end method

.method public getUidxCpuFgTime()J
    .locals 2

    .prologue
    .line 1393
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mcpuFgTime:J

    return-wide v0
.end method

.method public getUidxCpuTime()J
    .locals 2

    .prologue
    .line 1390
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mCpuTime:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1402
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mCpuTime:J

    .line 1403
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mcpuFgTime:J

    .line 1404
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0CpuTime:J

    .line 1405
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->mUid0FgTime:J

    .line 1406
    return-void
.end method
