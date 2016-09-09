.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z

.field private static mBatteryCaptcity:D

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 75
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 110
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 183
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D

    .line 481
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 110
    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    .line 123
    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "includeThreads"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 73
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 107
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 108
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 121
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 133
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 134
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 135
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 165
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 184
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    .line 501
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/ProcessCpuTracker;Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 30
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 593
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v19

    .line 594
    .local v19, "pids":[I
    if-nez v19, :cond_1

    const/4 v10, 0x0

    .line 595
    .local v10, "NP":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 596
    .local v11, "NS":I
    const/4 v12, 0x0

    .line 597
    .local v12, "curStatsIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_0

    .line 598
    aget v6, v19, v13

    .line 599
    .local v6, "pid":I
    if-gez v6, :cond_2

    .line 600
    move v10, v6

    .line 758
    .end local v6    # "pid":I
    :cond_0
    :goto_2
    if-ge v12, v11, :cond_f

    .line 760
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 761
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 762
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 763
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 764
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 765
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 766
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 767
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 768
    add-int/lit8 v11, v11, -0x1

    .line 770
    goto :goto_2

    .line 594
    .end local v10    # "NP":I
    .end local v11    # "NS":I
    .end local v12    # "curStatsIndex":I
    .end local v13    # "i":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, v19

    array-length v10, v0

    goto :goto_0

    .line 603
    .restart local v6    # "pid":I
    .restart local v10    # "NP":I
    .restart local v11    # "NS":I
    .restart local v12    # "curStatsIndex":I
    .restart local v13    # "i":I
    :cond_2
    if-ge v12, v11, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-object/from16 v22, v4

    .line 605
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_3
    if-eqz v22, :cond_9

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v4, v6, :cond_9

    .line 607
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 608
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 609
    add-int/lit8 v12, v12, 0x1

    .line 614
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_3

    .line 615
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 617
    .local v26, "uptime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    move-object/from16 v20, v0

    .line 618
    .local v20, "procStats":[J
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v5, v7, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_5

    .line 597
    .end local v20    # "procStats":[J
    .end local v26    # "uptime":J
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 603
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    .line 623
    .restart local v20    # "procStats":[J
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v26    # "uptime":J
    :cond_5
    const/4 v4, 0x0

    aget-wide v16, v20, v4

    .line 624
    .local v16, "minfaults":J
    const/4 v4, 0x1

    aget-wide v14, v20, v4

    .line 625
    .local v14, "majfaults":J
    const/4 v4, 0x2

    aget-wide v28, v20, v4

    .line 626
    .local v28, "utime":J
    const/4 v4, 0x3

    aget-wide v24, v20, v4

    .line 628
    .local v24, "stime":J
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v4, v28, v4

    if-nez v4, :cond_6

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v4, v24, v4

    if-nez v4, :cond_6

    .line 629
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 630
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 631
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 632
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 633
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v4, :cond_3

    .line 634
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_4

    .line 639
    :cond_6
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v4, :cond_7

    .line 640
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 643
    :cond_7
    if-gez p2, :cond_8

    .line 644
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    .line 646
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 657
    :cond_8
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v4, v26, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 658
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 659
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v4, v28, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 660
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v4, v24, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 661
    move-wide/from16 v0, v28

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 662
    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 663
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v4, v16, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 664
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 665
    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 666
    move-object/from16 v0, v22

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 667
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_4

    .line 673
    .end local v14    # "majfaults":J
    .end local v16    # "minfaults":J
    .end local v20    # "procStats":[J
    .end local v24    # "stime":J
    .end local v26    # "uptime":J
    .end local v28    # "utime":J
    :cond_9
    if-eqz v22, :cond_a

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-le v4, v6, :cond_e

    .line 675
    :cond_a
    new-instance v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    .line 676
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 677
    add-int/lit8 v12, v12, 0x1

    .line 678
    add-int/lit8 v11, v11, 0x1

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v21, v0

    .line 684
    .local v21, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    move-object/from16 v20, v0

    .line 685
    .restart local v20    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 686
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 688
    .local v18, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v4, v1, v2, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 694
    const/4 v4, 0x5

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 696
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 697
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 698
    const/4 v4, 0x1

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 699
    const/4 v4, 0x2

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 700
    const/4 v4, 0x3

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 701
    const/4 v4, 0x4

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 714
    :goto_5
    if-gez p2, :cond_d

    .line 715
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    .line 717
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 729
    :cond_b
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 730
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 731
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 732
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 733
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 734
    if-nez p3, :cond_3

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_3

    .line 735
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_4

    .line 708
    :cond_c
    const-string v4, "ProcessCpuTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unknown process pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v4, "<unknown>"

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 710
    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 711
    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    goto/16 :goto_5

    .line 720
    :cond_d
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_b

    .line 721
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 722
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    goto :goto_6

    .line 741
    .end local v18    # "path":Ljava/lang/String;
    .end local v20    # "procStats":[J
    .end local v21    # "procStatsString":[Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 742
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 743
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 744
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 745
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 746
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 747
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 748
    add-int/lit8 v11, v11, -0x1

    .line 754
    add-int/lit8 v13, v13, -0x1

    .line 755
    goto/16 :goto_4

    .line 772
    .end local v6    # "pid":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_f
    return-object v19
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 14
    .param p1, "out"    # [J

    .prologue
    const/16 v13, 0x3c

    const/4 v12, 0x0

    .line 817
    move-object v6, p1

    .line 818
    .local v6, "tempTimes":[J
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    .line 819
    .local v5, "tempSpeeds":[J
    const/16 v0, 0x3c

    .line 820
    .local v0, "MAX_SPEEDS":I
    if-nez p1, :cond_0

    .line 821
    new-array v6, v13, [J

    .line 822
    new-array v5, v13, [J

    .line 824
    :cond_0
    const/4 v3, 0x0

    .line 825
    .local v3, "speed":I
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v10, v12}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "file":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 828
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .local v4, "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 830
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 832
    .local v7, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 834
    .local v8, "val":J
    array-length v10, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v10, :cond_4

    .line 854
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "val":J
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 855
    new-array p1, v3, [J

    .line 856
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    .line 857
    iget-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    invoke-static {v5, v12, v10, v12, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 858
    invoke-static {v6, v12, p1, v12, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 860
    :cond_3
    return-object p1

    .line 837
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v8    # "val":J
    :cond_4
    :try_start_1
    aput-wide v8, v5, v3

    .line 838
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 839
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 840
    aput-wide v8, v6, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 841
    add-int/lit8 v3, v3, 0x1

    .line 842
    if-ne v3, v13, :cond_1

    goto :goto_1

    .line 847
    .end local v8    # "val":J
    :catch_0
    move-exception v2

    .line 848
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-string v10, "ProcessCpuTracker"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .prologue
    .line 1103
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1104
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1106
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1108
    move-object v2, v0

    .line 1109
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1110
    .local v1, "i":I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 1111
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1114
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 1115
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 1118
    .end local v0    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1119
    :cond_3
    iput-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1120
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 1122
    :cond_4
    return-void
.end method

.method private printAllCpuSeedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 401
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 402
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 403
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v3, "CPU Speed Time: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->convertString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 410
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .prologue
    .line 1028
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    if-nez p5, :cond_0

    const/4 p5, 0x1

    .line 1030
    :cond_0
    add-int v2, p6, p7

    add-int v2, v2, p8

    add-int v2, v2, p9

    add-int v2, v2, p10

    int-to-long v4, v2

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1031
    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    if-ltz p3, :cond_1

    .line 1033
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1034
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    int-to-long v4, p6

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1039
    const-string v2, "% user + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    int-to-long v4, p7

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1041
    const-string v2, "% kernel"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    if-lez p8, :cond_2

    .line 1043
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1044
    move/from16 v0, p8

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1045
    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    :cond_2
    if-lez p9, :cond_3

    .line 1048
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    move/from16 v0, p9

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1050
    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    :cond_3
    if-lez p10, :cond_4

    .line 1053
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    move/from16 v0, p10

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1055
    const-string v2, "% softirq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    :cond_4
    if-gtz p11, :cond_5

    if-lez p12, :cond_7

    .line 1058
    :cond_5
    const-string v2, " / faults:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    if-lez p11, :cond_6

    .line 1060
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1062
    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    :cond_6
    if-lez p12, :cond_7

    .line 1065
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1067
    const-string v2, " major"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1071
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    const-wide/16 v8, 0xa

    .line 1013
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 1014
    .local v4, "thousands":J
    div-long v0, v4, v8

    .line 1015
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1016
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 1017
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 1018
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 1019
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1020
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1023
    .end local v2    # "remainder":J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .prologue
    .line 1077
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 1078
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 1080
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1082
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1084
    if-lez v3, :cond_2

    .line 1086
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1087
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_1

    .line 1091
    :cond_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1096
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 1099
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-object v5

    .line 1086
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1096
    .end local v0    # "i":I
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 1099
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1093
    :catch_0
    move-exception v5

    .line 1096
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 1094
    :catch_1
    move-exception v5

    .line 1096
    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 1096
    :catchall_0
    move-exception v5

    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 1096
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1094
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1093
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 896
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v6, :cond_4

    .line 897
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 898
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 899
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 900
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 901
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_2

    .line 902
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 904
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 905
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 906
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 907
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 908
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 909
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 912
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 899
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 916
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 917
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 919
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 931
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getBatteryCapacity()D
    .locals 12

    .prologue
    const-wide v10, 0x407f400000000000L    # 500.0

    const-wide/16 v6, 0x0

    .line 1126
    sget-wide v8, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 1127
    sget-wide v6, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D

    .line 1153
    :cond_0
    :goto_0
    return-wide v6

    .line 1129
    :cond_1
    const-string v8, "/sys/class/power_supply/battery/charge_full_design"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1131
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v8, "\n "

    invoke-direct {v2, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1133
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1135
    .local v3, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1137
    .local v4, "val":D
    const-wide v8, 0x40c3880000000000L    # 10000.0

    cmpl-double v8, v4, v8

    if-lez v8, :cond_3

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    .line 1139
    :cond_3
    cmpl-double v8, v4, v10

    if-lez v8, :cond_2

    const-wide v8, 0x40d3880000000000L    # 20000.0

    cmpg-double v8, v4, v8

    if-gez v8, :cond_2

    .line 1140
    sput-wide v4, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D

    .line 1141
    sget-wide v6, Lcom/android/internal/os/ProcessCpuTracker;->mBatteryCaptcity:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1143
    .end local v4    # "val":D
    :catch_0
    move-exception v1

    .line 1144
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v8, "ProcessCpuTracker"

    const-string v9, "Unable to parse charge_full_design"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1149
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "token":Ljava/lang/String;
    :cond_4
    const-string v8, "ProcessCpuTracker"

    const-string v9, "charge_full_design file does not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCluster0CpuSpeedTimes(I)[J
    .locals 10
    .param p1, "cpunum"    # I

    .prologue
    .line 329
    const/4 v3, 0x0

    .line 330
    .local v3, "nNumCpu":I
    const/4 v4, 0x0

    .line 334
    .local v4, "nNumSpeed":I
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    array-length v6, v6

    if-lt v6, p1, :cond_2

    .line 335
    move v3, p1

    .line 340
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->getCpuNumSpeedTimes()I

    move-result v4

    .line 341
    const/4 v6, 0x1

    if-ge v4, v6, :cond_0

    .line 342
    const/16 v4, 0x3c

    .line 345
    :cond_0
    new-array v5, v4, [J

    .line 347
    .local v5, "nSumCpuSpeedTimes":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 348
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->getCpuDeltaSpeedTimes()[J

    move-result-object v2

    .line 350
    .local v2, "nDeltaTimes":[J
    if-nez v2, :cond_3

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    .end local v0    # "i":I
    .end local v2    # "nDeltaTimes":[J
    .end local v5    # "nSumCpuSpeedTimes":[J
    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    array-length v3, v6

    goto :goto_0

    .line 353
    .restart local v0    # "i":I
    .restart local v2    # "nDeltaTimes":[J
    .restart local v5    # "nSumCpuSpeedTimes":[J
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_1

    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 354
    aget-wide v6, v5, v1

    aget-wide v8, v2, v1

    add-long/2addr v6, v8

    aput-wide v6, v5, v1

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    .end local v1    # "j":I
    .end local v2    # "nDeltaTimes":[J
    :cond_4
    return-object v5
.end method

.method public getCluster1CpuSpeedTimes(I)[J
    .locals 10
    .param p1, "c0cpunum"    # I

    .prologue
    .line 363
    const/4 v3, 0x0

    .line 367
    .local v3, "nNumSpeed":I
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->getCpuNumSpeedTimes()I

    move-result v3

    .line 369
    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 370
    const/16 v3, 0x3c

    .line 373
    :cond_0
    new-array v4, v3, [J

    .line 375
    .local v4, "nSumCpuSpeedTimes":[J
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 376
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->getCpuDeltaSpeedTimes()[J

    move-result-object v2

    .line 378
    .local v2, "nDeltaTimes":[J
    if-nez v2, :cond_2

    .line 375
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 382
    aget-wide v6, v4, v1

    aget-wide v8, v2, v1

    add-long/2addr v6, v8

    aput-wide v6, v4, v1

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 386
    .end local v1    # "j":I
    .end local v2    # "nDeltaTimes":[J
    :cond_3
    return-object v4
.end method

.method public getCpuTimeForPid(I)J
    .locals 10
    .param p1, "pid"    # I

    .prologue
    .line 780
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v5

    .line 781
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/stat"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 783
    .local v1, "statsData":[J
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v4, v6, v1, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 785
    const/4 v4, 0x2

    aget-wide v6, v1, v4

    const/4 v4, 0x3

    aget-wide v8, v1, v4

    add-long v2, v6, v8

    .line 787
    .local v2, "time":J
    monitor-exit v5

    .line 789
    .end local v2    # "time":J
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit v5

    goto :goto_0

    .line 790
    .end local v0    # "statFile":Ljava/lang/String;
    .end local v1    # "statsData":[J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getLastAllCpuSpeedTimes()[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;
    .locals 3

    .prologue
    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;-><init>(Lcom/android/internal/os/ProcessCpuTracker;I)V

    aput-object v2, v1, v0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->getLastCpuSpeedTimes()[J

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimeArray:[Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;

    return-object v1
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    if-nez v1, :cond_0

    .line 800
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuSpeedTimes([J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    .line 801
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    .line 802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v1, v0

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuSpeedTimes([J)[J

    .line 807
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    aget-wide v2, v1, v0

    .line 809
    .local v2, "temp":J
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    aget-wide v4, v1, v0

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 810
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    aput-wide v2, v1, v0

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 813
    .end local v2    # "temp":J
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    return-object v1
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    .line 888
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v0, v1, v2

    .line 889
    .local v0, "denom":I
    if-gtz v0, :cond_0

    .line 890
    const/4 v1, 0x0

    .line 892
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 515
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .prologue
    .line 505
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    .prologue
    .line 939
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 940
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 941
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 943
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 945
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 947
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 948
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 29
    .param p1, "now"    # J

    .prologue
    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 954
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 955
    .local v26, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v4, 0x400

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 957
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 959
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 960
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 962
    const-string v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v24, v4, v6

    .line 971
    .local v24, "sampleTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v22, v4, v6

    .line 972
    .local v22, "sampleRealTime":J
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-lez v2, :cond_2

    const-wide/16 v4, 0x64

    mul-long v4, v4, v24

    div-long v20, v4, v22

    .line 973
    .local v20, "percAwake":J
    :goto_1
    const-wide/16 v4, 0x64

    cmp-long v2, v20, v4

    if-eqz v2, :cond_0

    .line 974
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 976
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 978
    :cond_0
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v27, v2, v4

    .line 986
    .local v27, "totalTime":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 987
    .local v16, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 989
    .local v19, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_3

    const-string v4, " +"

    :goto_3
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 992
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v2, :cond_7

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 993
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 994
    .local v15, "M":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v15, :cond_7

    .line 995
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 996
    .local v28, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_5

    const-string v4, "   +"

    :goto_5
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 994
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 964
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v20    # "percAwake":J
    .end local v22    # "sampleRealTime":J
    .end local v24    # "sampleTime":J
    .end local v27    # "totalTime":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 965
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 967
    const-string v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 972
    .restart local v22    # "sampleRealTime":J
    .restart local v24    # "sampleTime":J
    :cond_2
    const-wide/16 v20, 0x0

    goto/16 :goto_1

    .line 989
    .restart local v16    # "N":I
    .restart local v17    # "i":I
    .restart local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v20    # "percAwake":J
    .restart local v27    # "totalTime":I
    :cond_3
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_4

    const-string v4, " -"

    goto/16 :goto_3

    :cond_4
    const-string v4, "  "

    goto/16 :goto_3

    .line 996
    .restart local v15    # "M":I
    .restart local v18    # "j":I
    .restart local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_6

    const-string v4, "   -"

    goto :goto_5

    :cond_6
    const-string v4, "    "

    goto :goto_5

    .line 987
    .end local v15    # "M":I
    .end local v18    # "j":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1004
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_8
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v27

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->printAllCpuSeedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1009
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .locals 28

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 521
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    move-object/from16 v21, v0

    .line 525
    .local v21, "sysCpu":[J
    const-string v4, "/proc/stat"

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v4, v5, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    const/4 v4, 0x0

    aget-wide v4, v21, v4

    const/4 v6, 0x1

    aget-wide v6, v21, v6

    add-long v26, v4, v6

    .line 530
    .local v26, "usertime":J
    const/4 v4, 0x2

    aget-wide v24, v21, v4

    .line 532
    .local v24, "systemtime":J
    const/4 v4, 0x3

    aget-wide v10, v21, v4

    .line 534
    .local v10, "idletime":J
    const/4 v4, 0x4

    aget-wide v12, v21, v4

    .line 535
    .local v12, "iowaittime":J
    const/4 v4, 0x5

    aget-wide v14, v21, v4

    .line 536
    .local v14, "irqtime":J
    const/4 v4, 0x6

    aget-wide v22, v21, v4

    .line 538
    .local v22, "softirqtime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v4, v26, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 539
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v4, v24, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 540
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v4, v12, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 541
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 542
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v4, v22, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 543
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 554
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 555
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 556
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 557
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 558
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 559
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    .line 562
    .end local v10    # "idletime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v22    # "softirqtime":J
    .end local v24    # "systemtime":J
    .end local v26    # "usertime":J
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v20

    .line 564
    .local v20, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v5, "/proc"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    move-object/from16 v19, v0

    .line 570
    .local v19, "loadAverages":[F
    const-string v4, "/proc/loadavg"

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    const/4 v4, 0x0

    aget v16, v19, v4

    .line 573
    .local v16, "load1":F
    const/4 v4, 0x1

    aget v18, v19, v4

    .line 574
    .local v18, "load5":F
    const/4 v4, 0x2

    aget v17, v19, v4

    .line 575
    .local v17, "load15":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v16, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v18, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v17, v4

    if-eqz v4, :cond_2

    .line 576
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 577
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 578
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 579
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 586
    .end local v16    # "load1":F
    .end local v17    # "load15":F
    .end local v18    # "load5":F
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 587
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 588
    return-void

    .line 566
    .end local v19    # "loadAverages":[F
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
.end method
