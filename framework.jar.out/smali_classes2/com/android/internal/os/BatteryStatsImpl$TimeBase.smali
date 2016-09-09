.class Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeBase"
.end annotation


# instance fields
.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">;"
        }
    .end annotation
.end field

.field private mPastRealtime:J

.field private mPastUptime:J

.field private mRealtime:J

.field private mRealtimeStart:J

.field private mRunning:Z

.field private mUnpluggedRealtime:J

.field private mUnpluggedUptime:J

.field private mUptime:J

.field private mUptimeStart:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method public computeRealtime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 567
    packed-switch p3, :pswitch_data_0

    .line 575
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 569
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 571
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    goto :goto_0

    .line 573
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 555
    packed-switch p3, :pswitch_data_0

    .line 563
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 557
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 559
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    goto :goto_0

    .line 561
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRunning="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 495
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 496
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, "mUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 501
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, "mRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 506
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, "mPastUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v1, "mUptimeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 510
    const-string v1, "mUnpluggedUptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 513
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, "mPastRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v1, "mRealtimeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 517
    const-string v1, "mUnpluggedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public getRealtime(J)J
    .locals 5
    .param p1, "curTime"    # J

    .prologue
    .line 587
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 588
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 589
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 591
    :cond_0
    return-wide v0
.end method

.method public getRealtimeStart()J
    .locals 2

    .prologue
    .line 599
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    return-wide v0
.end method

.method public getUptime(J)J
    .locals 5
    .param p1, "curTime"    # J

    .prologue
    .line 579
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 580
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 581
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 583
    :cond_0
    return-wide v0
.end method

.method public getUptimeStart()J
    .locals 2

    .prologue
    .line 595
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    return-wide v0
.end method

.method public init(JJ)V
    .locals 3
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 532
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    .line 533
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    .line 534
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 535
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 536
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    .line 537
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    .line 538
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    .line 539
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    .line 540
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    .line 654
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    .line 637
    return-void
.end method

.method public remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed unknown observer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    return-void
.end method

.method public reset(JJ)V
    .locals 5
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 543
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-nez v0, :cond_0

    .line 544
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 545
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 552
    :goto_0
    return-void

    .line 547
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    .line 548
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    .line 549
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    .line 550
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    goto :goto_0
.end method

.method public setRunning(ZJJ)Z
    .locals 10
    .param p1, "running"    # Z
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    .line 607
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eq v1, p1, :cond_2

    .line 608
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 609
    if-eqz p1, :cond_0

    .line 610
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    .line 611
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    .line 612
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    .line 613
    .local v4, "batteryUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    .line 615
    .local v6, "batteryRealtime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide v2, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    .line 615
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 619
    .end local v0    # "i":I
    .end local v4    # "batteryUptime":J
    .end local v6    # "batteryRealtime":J
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    sub-long v8, p2, v8

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    .line 620
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    sub-long v8, p4, v8

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    .line 622
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    .line 623
    .restart local v4    # "batteryUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v6

    .line 625
    .restart local v6    # "batteryRealtime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 626
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide v2, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    .line 625
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 629
    :cond_1
    const/4 v1, 0x1

    .line 631
    .end local v0    # "i":I
    .end local v4    # "batteryUptime":J
    .end local v6    # "batteryRealtime":J
    :goto_2
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 641
    invoke-virtual {p0, p4, p5, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 642
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JJ)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    .prologue
    .line 657
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v2

    .line 658
    .local v2, "runningUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 659
    .local v0, "runningRealtime":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 660
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 661
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 662
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 663
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 664
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 665
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 666
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 667
    return-void
.end method
