.class Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CoreDataInfo"
.end annotation


# instance fields
.field private mCpuBusyRate:D

.field private mCpuPower:D

.field private mGpuPower:D

.field private mGpuTime:J

.field private mSumRelCpuTime:J

.field private mUid0CpuPowerRate:D

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->this$0:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D

    return-wide p1
.end method

.method static synthetic access$018(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D

    return-wide v0
.end method

.method static synthetic access$026(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D

    return-wide v0
.end method

.method static synthetic access$042(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D

    return-wide p1
.end method

.method static synthetic access$118(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D

    return-wide v0
.end method

.method static synthetic access$126(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D

    return-wide v0
.end method

.method static synthetic access$142(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mUid0CpuPowerRate:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mUid0CpuPowerRate:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # J

    .prologue
    .line 1349
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J

    return-wide p1
.end method

.method static synthetic access$314(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # J

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuBusyRate:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # D

    .prologue
    .line 1349
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuBusyRate:D

    return-wide p1
.end method

.method static synthetic access$514(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;
    .param p1, "x1"    # J

    .prologue
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuTime:J

    return-wide v0
.end method
