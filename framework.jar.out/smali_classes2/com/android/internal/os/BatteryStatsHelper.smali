.class public final Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;,
        Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;,
        Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;,
        Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;,
        Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NUBIA_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mAppMobileActive:J

.field private mAppWifiRunning:J

.field private mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtime:J

.field mBatteryTimeRemaining:J

.field mBatteryUptime:J

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mChargeTimeRemaining:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field private mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

.field private mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

.field private mDataPowerRate:D

.field private mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

.field private mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field private mMinDrainedPower:D

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

.field mRawRealtime:J

.field mRawUptime:J

.field private mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

.field private mTotalPower:D

.field mTypeBatteryRealtime:J

.field mTypeBatteryUptime:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWifiOnly:Z

.field private mWifiPower:D

.field private mWifiPowerRate:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 105
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 106
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 123
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    .line 124
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    .line 125
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 126
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 127
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    .line 128
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 129
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 130
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 131
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    .line 141
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 142
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 143
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z
    .param p3, "wifiOnly"    # Z

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 105
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 106
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 123
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    .line 124
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    .line 125
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 126
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 127
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    .line 128
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 129
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 130
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    .line 131
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    .line 147
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 148
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 149
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 150
    return-void
.end method

.method private VerifyComposePower(D)V
    .locals 21
    .param p1, "miscpower"    # D

    .prologue
    .line 1933
    move-wide/from16 v10, p1

    .line 1934
    .local v10, "sumMiscPower":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    move-wide/from16 v16, v0

    add-double v12, v14, v16

    .line 1939
    .local v12, "sumPower":D
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->VerifyMiscPower(D)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1940
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v10, v14, v16

    .line 1943
    :cond_0
    add-double v8, v10, v12

    .line 1944
    .local v8, "sumAllPower":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    sub-double v2, v8, v14

    .line 1946
    .local v2, "deltaPower":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v2, v14

    if-lez v14, :cond_3

    cmpg-double v14, v2, v12

    if-gez v14, :cond_3

    .line 1947
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v14

    div-double v6, v14, v12

    .line 1948
    .local v6, "rate":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    mul-double v16, v6, v2

    move-wide/from16 v0, v16

    # -= operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v14, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$026(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1949
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v14

    div-double v6, v14, v12

    .line 1950
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    mul-double v16, v6, v2

    move-wide/from16 v0, v16

    # -= operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v14, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$126(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1951
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    .line 1952
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    mul-double/2addr v14, v2

    div-double v6, v14, v12

    .line 1953
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    move-wide/from16 v16, v0

    div-double v16, v6, v16

    sub-double v6, v14, v16

    .line 1954
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    mul-double/2addr v14, v6

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    .line 1955
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    .line 1957
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 1958
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    mul-double/2addr v14, v2

    div-double v6, v14, v12

    .line 1959
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    move-wide/from16 v16, v0

    div-double v16, v6, v16

    sub-double v6, v14, v16

    .line 1960
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    mul-double/2addr v14, v6

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    .line 1961
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    .line 1964
    :cond_2
    sget-object v14, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "v overcounted  deltaPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    .end local v6    # "rate":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    move-wide/from16 v16, v0

    add-double v12, v14, v16

    .line 1968
    add-double v8, v10, v12

    .line 1969
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    sub-double v2, v14, v8

    .line 1971
    const-wide/16 v14, 0x0

    cmpl-double v14, v2, v14

    if-lez v14, :cond_6

    .line 1972
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    add-double v10, v14, v16

    .line 1974
    add-double v8, v10, v12

    .line 1975
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 1976
    .restart local v6    # "rate":D
    div-double v14, v10, v8

    mul-double v4, v14, v2

    .line 1977
    .local v4, "p":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v12, v14

    if-lez v14, :cond_4

    .line 1978
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v14

    div-double v6, v14, v12

    .line 1979
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    mul-double v16, v6, v4

    move-wide/from16 v0, v16

    # += operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v14, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$018(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1980
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v14

    div-double v6, v14, v12

    .line 1981
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    mul-double v16, v6, v4

    move-wide/from16 v0, v16

    # += operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v14, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$118(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1982
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    div-double v6, v14, v12

    .line 1983
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    .line 1984
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    div-double v6, v14, v12

    .line 1985
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    .line 1988
    :cond_4
    sub-double v4, v2, v4

    .line 1989
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v10, v14

    if-lez v14, :cond_5

    .line 1990
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    div-double v6, v14, v10

    .line 1991
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1992
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    div-double v6, v14, v10

    .line 1993
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1994
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    div-double v6, v14, v10

    .line 1995
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    .line 1996
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    div-double v6, v14, v10

    .line 1997
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    div-double v6, v14, v10

    .line 1999
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 2000
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    div-double v6, v14, v10

    .line 2001
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-wide/from16 v16, v0

    mul-double v18, v6, v4

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 2005
    :cond_5
    sget-object v14, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "v unacounted deltaPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    .end local v4    # "p":D
    .end local v6    # "rate":D
    :cond_6
    sget-object v14, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "v 11 SumCpuPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " SumgpuPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mobile data power="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " wifi data power="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sumMiscPower="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-void
.end method

.method private VerifyCorePower()V
    .locals 14

    .prologue
    const-wide v12, 0x3fe6666666666666L    # 0.7

    const-wide v10, 0x3fd3333333333333L    # 0.3

    .line 1883
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v6

    add-double v0, v4, v6

    .line 1885
    .local v0, "CorePower":D
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 1886
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide v6, 0x3fd6666666666666L    # 0.35

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    mul-double/2addr v6, v8

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$002(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1887
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v6

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$102(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1890
    sget-object v4, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "v CpuPower="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gpuPower="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v6

    add-double v0, v4, v6

    .line 1894
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    add-double/2addr v4, v6

    add-double v2, v4, v0

    .line 1896
    .local v2, "sumPower":D
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    .line 1897
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    mul-double/2addr v4, v10

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    .line 1898
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    mul-double/2addr v6, v10

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    .line 1899
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    mul-double/2addr v4, v12

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    .line 1900
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    mul-double/2addr v6, v12

    iput-wide v6, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    .line 1903
    sget-object v4, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "v data Power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wifi Power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v6, v6, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_1
    return-void
.end method

.method private VerifyDataPower()V
    .locals 14

    .prologue
    .line 1850
    const/4 v0, 0x0

    .line 1851
    .local v0, "bflag":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v1, v8, v10

    if-lez v1, :cond_0

    .line 1852
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v12, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    .line 1853
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    mul-double/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    .line 1854
    const/4 v0, 0x1

    .line 1857
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v1, v8, v10

    if-lez v1, :cond_1

    .line 1858
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v12, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    .line 1859
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    mul-double/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    .line 1860
    const/4 v0, 0x1

    .line 1863
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    add-double v2, v8, v10

    .line 1865
    .local v2, "power":D
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v1, v2, v8

    if-lez v1, :cond_3

    .line 1866
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    div-double v6, v8, v2

    .line 1867
    .local v6, "wifirate":D
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    div-double v4, v8, v2

    .line 1868
    .local v4, "rate":D
    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_2

    .line 1869
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v6

    mul-double/2addr v10, v4

    mul-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    .line 1870
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    mul-double v10, v6, v4

    mul-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    .line 1871
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    mul-double v10, v6, v4

    mul-double/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    .line 1873
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v6

    mul-double/2addr v10, v4

    mul-double/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    .line 1874
    const/4 v0, 0x1

    .line 1877
    .end local v4    # "rate":D
    .end local v6    # "wifirate":D
    :cond_3
    if-eqz v0, :cond_4

    .line 1878
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v mobile data power="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v10, v9, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wifi data power="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v10, v9, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_4
    return-void
.end method

.method private VerifyMiscPower(D)Z
    .locals 13
    .param p1, "miscpower"    # D

    .prologue
    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v8, 0x3fd3333333333333L    # 0.3

    .line 1908
    const/4 v0, 0x0

    .line 1910
    .local v0, "bflag":Z
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpl-double v1, p1, v4

    if-lez v1, :cond_0

    .line 1911
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    div-double/2addr v6, p1

    mul-double v2, v4, v6

    .line 1912
    .local v2, "rate":D
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    mul-double/2addr v4, v2

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1913
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    mul-double/2addr v4, v2

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1914
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    mul-double/2addr v4, v2

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    .line 1915
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    mul-double/2addr v4, v2

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1916
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    mul-double/2addr v4, v2

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1918
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide v4, 0x3fbeb851eb851eb8L    # 0.12

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    mul-double/2addr v4, v6

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v1, v4, v5}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$002(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1919
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    mul-double/2addr v4, v6

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v1, v4, v5}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$102(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1920
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    mul-double/2addr v4, v8

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    .line 1921
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    mul-double/2addr v4, v8

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    .line 1922
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    mul-double/2addr v4, v10

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    .line 1923
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    mul-double/2addr v4, v10

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    .line 1924
    const/4 v0, 0x1

    .line 1927
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v4, "v overcounted miscPower"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    .end local v2    # "rate":D
    :cond_0
    return v0
.end method

.method private addBluetoothUsage()V
    .locals 14

    .prologue
    const-wide v12, 0x414b774000000000L    # 3600000.0

    .line 1106
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    .line 1107
    .local v2, "btOnTimeMs":J
    long-to-double v0, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v8, v0, v12

    .line 1112
    .local v8, "btPower":D
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothPingCount()I

    move-result v7

    .line 1113
    .local v7, "btPingCount":I
    int-to-double v0, v7

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v10, v0, v12

    .line 1119
    .local v10, "pingPower":D
    add-double/2addr v8, v10

    .line 1120
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v0, v8

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    .line 1121
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 1123
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1125
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 2
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .prologue
    .line 1232
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    add-double/2addr v0, p4

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 1233
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 1234
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v0

    return-object v0
.end method

.method private addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .prologue
    .line 1238
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v1, p4, v2

    if-lez v1, :cond_0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 1239
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 1240
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTime:J

    .line 1241
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    return-object v0
.end method

.method private addFlashlightUsage()V
    .locals 8

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getFlashlightOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 1129
    .local v2, "flashlightOnTimeMs":J
    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "camera.flashlight"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 1131
    .local v4, "flashlightPower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 1132
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 1134
    :cond_0
    return-void
.end method

.method private addIdleUsage()V
    .locals 10

    .prologue
    .line 1093
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v6, v8, v9, v7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 1095
    .local v2, "idleTimeMs":J
    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.idle"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 1100
    .local v4, "idlePower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 1101
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 1103
    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 8

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 971
    .local v2, "phoneOnTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v6, v2

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 973
    .local v4, "phoneOnPower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 974
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 976
    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 26

    .prologue
    .line 1004
    const-wide/16 v6, 0x0

    .line 1005
    .local v6, "power":D
    const/4 v8, 0x5

    .line 1006
    .local v8, "BINS":I
    const-wide/16 v4, 0x0

    .line 1007
    .local v4, "signalTimeMs":J
    const-wide/16 v12, 0x0

    .line 1008
    .local v12, "noCoverageTimeMs":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_1

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v24, 0x3e8

    div-long v22, v2, v24

    .line 1011
    .local v22, "strengthTimeMs":J
    move-wide/from16 v0, v22

    long-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v24, "radio.on"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v24

    mul-double v2, v2, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v14, v2, v24

    .line 1017
    .local v14, "p":D
    add-double/2addr v6, v14

    .line 1018
    add-long v4, v4, v22

    .line 1019
    if-nez v10, :cond_0

    .line 1020
    move-wide/from16 v12, v22

    .line 1008
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1023
    .end local v14    # "p":D
    .end local v22    # "strengthTimeMs":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v24, 0x3e8

    div-long v20, v2, v24

    .line 1025
    .local v20, "scanningTimeMs":J
    move-wide/from16 v0, v20

    long-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v24, "radio.scanning"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v24

    mul-double v2, v2, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v14, v2, v24

    .line 1031
    .restart local v14    # "p":D
    add-double/2addr v6, v14

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v16

    .line 1033
    .local v16, "radioActiveTimeUs":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    sub-long v2, v16, v2

    const-wide/16 v24, 0x3e8

    div-long v18, v2, v24

    .line 1034
    .local v18, "remainingActiveTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_2

    .line 1035
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v2

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v2, v2, v24

    add-double/2addr v6, v2

    .line 1037
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_4

    .line 1038
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v9

    .line 1040
    .local v9, "bs":Lcom/android/internal/os/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 1041
    long-to-double v2, v12

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v24

    long-to-double v0, v4

    move-wide/from16 v24, v0

    div-double v2, v2, v24

    iput-wide v2, v9, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    .line 1043
    :cond_3
    move-wide/from16 v0, v18

    iput-wide v0, v9, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v2

    iput v2, v9, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 1046
    .end local v9    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_4
    return-void
.end method

.method private addScreenUsage()V
    .locals 20

    .prologue
    .line 979
    const-wide/16 v6, 0x0

    .line 980
    .local v6, "power":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v4, v2, v18

    .line 981
    .local v4, "screenOnTimeMs":J
    long-to-double v2, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v18, "screen.on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    mul-double v2, v2, v18

    add-double/2addr v6, v2

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    .line 985
    .local v16, "screenFullPower":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_0

    .line 986
    int-to-float v2, v10

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v16

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    div-double v14, v2, v18

    .line 988
    .local v14, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v8, v2, v18

    .line 990
    .local v8, "brightnessTime":J
    long-to-double v2, v8

    mul-double v12, v14, v2

    .line 995
    .local v12, "p":D
    add-double/2addr v6, v12

    .line 985
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 997
    .end local v8    # "brightnessTime":J
    .end local v12    # "p":D
    .end local v14    # "screenBinPower":D
    :cond_0
    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v2

    .line 998
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_1

    .line 999
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 1001
    :cond_1
    return-void
.end method

.method private addUserUsage()V
    .locals 11

    .prologue
    .line 1137
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1139
    .local v9, "userId":I
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1140
    .local v8, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    .line 1141
    .local v10, "userPower":Ljava/lang/Double;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 1142
    .local v4, "power":D
    :goto_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 1143
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iput v9, v6, Lcom/android/internal/os/BatterySipper;->userId:I

    .line 1144
    const-string v0, "User"

    invoke-direct {p0, v6, v8, v0}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1137
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1141
    .end local v4    # "power":D
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 1146
    .end local v8    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v9    # "userId":I
    .end local v10    # "userPower":Ljava/lang/Double;
    :cond_1
    return-void
.end method

.method private addWiFiUsage()V
    .locals 14

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v8, v0, v4

    .line 1073
    .local v8, "onTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    .line 1076
    .local v2, "runningTimeMs":J
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    sub-long/2addr v2, v0

    .line 1077
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const-wide/16 v2, 0x0

    .line 1078
    :cond_0
    const-wide/16 v0, 0x0

    mul-long/2addr v0, v8

    long-to-double v0, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    long-to-double v4, v2

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "wifi.on"

    invoke-virtual {v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v12

    mul-double/2addr v4, v12

    add-double/2addr v0, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double v10, v0, v4

    .line 1085
    .local v10, "wifiPower":D
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v0, v10

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    .line 1086
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 1088
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1090
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_1
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1050
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 1052
    .local v1, "wbs":Lcom/android/internal/os/BatterySipper;
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    .line 1053
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    .line 1054
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    .line 1055
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    .line 1056
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 1057
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 1058
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 1059
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 1060
    iget v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget v3, v1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 1061
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 1062
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 1063
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 1064
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 1065
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 1066
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 1049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
    .end local v1    # "wbs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 1069
    return-void
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 153
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 155
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 214
    return-void
.end method

.method private getMobilePowerPerMs()D
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket()D
    .locals 24

    .prologue
    .line 1152
    const-wide/32 v4, 0x30d40

    .line 1153
    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v20, v0

    const-string v21, "radio.active"

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    const-wide v22, 0x40ac200000000000L    # 3600.0

    div-double v6, v20, v22

    .line 1156
    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 1157
    .local v14, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v16

    .line 1158
    .local v16, "mobileTx":J
    add-long v10, v14, v16

    .line 1160
    .local v10, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v18, v20, v22

    .line 1162
    .local v18, "radioDataUptimeMs":J
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-eqz v20, :cond_2

    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_2

    long-to-double v0, v10

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v20, v22

    .line 1170
    .local v12, "mobilePps":D
    :goto_0
    div-double v20, v6, v12

    const-wide v22, 0x40ac200000000000L    # 3600.0

    div-double v8, v20, v22

    .line 1171
    .local v8, "PerPower":D
    const-wide v20, 0x3fb999999999999aL    # 0.1

    cmpl-double v20, v8, v20

    if-lez v20, :cond_0

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    mul-double v8, v8, v20

    .line 1172
    :cond_0
    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v20, v8, v20

    if-lez v20, :cond_1

    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v8, v8, v20

    .line 1174
    :cond_1
    return-wide v8

    .line 1162
    .end local v8    # "PerPower":D
    .end local v12    # "mobilePps":D
    :cond_2
    const-wide v12, 0x40286a0000000000L    # 12.20703125

    goto :goto_0
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 8
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    .prologue
    .line 1316
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1317
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 1318
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1320
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    .line 1321
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1322
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1323
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1324
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;

    .line 1326
    .local v5, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1335
    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :goto_0
    return-object v5

    .line 1328
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "Unable to read statistics stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1335
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    goto :goto_0

    .line 1332
    :catch_1
    move-exception v1

    .line 1333
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "RemoteException:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getWifiPowerPerPacket()D
    .locals 19

    .prologue
    .line 1189
    const-wide/32 v8, 0xf4240

    .line 1190
    .local v8, "WIFI_BPS":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v15, "wifi.active"

    invoke-virtual {v14, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v10, v14, v16

    .line 1196
    .local v10, "WIFI_POWER":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v16

    add-long v2, v14, v16

    .line 1197
    .local v2, "DataCount":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v15}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 1200
    .local v4, "DataUptimeMs":J
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-eqz v14, :cond_2

    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-eqz v14, :cond_2

    long-to-double v14, v2

    long-to-double v0, v4

    move-wide/from16 v16, v0

    div-double v12, v14, v16

    .line 1203
    .local v12, "mobilePps":D
    :goto_0
    div-double v14, v10, v12

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v6, v14, v16

    .line 1204
    .local v6, "PerPower":D
    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v14, v6, v14

    if-lez v14, :cond_0

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v14

    .line 1205
    :cond_0
    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v14, v6, v14

    if-lez v14, :cond_1

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v14

    .line 1207
    :cond_1
    return-wide v6

    .line 1200
    .end local v6    # "PerPower":D
    .end local v12    # "mobilePps":D
    :cond_2
    const-wide v12, 0x404e848000000000L    # 61.03515625

    goto :goto_0
.end method

.method private load()V
    .locals 4

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 1308
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    goto :goto_0
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 4
    .param p0, "power"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "%.8f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 265
    :cond_0
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.7f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_1
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.6f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_2
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.5f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_3
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.4f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.3f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 271
    :cond_6
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 272
    :cond_7
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private nubiaAddMiscUsage()V
    .locals 14

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 2053
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 2057
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 2060
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 2061
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 2064
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 2065
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 2068
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 2069
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    iget-wide v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v4, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 2071
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 2074
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-eqz v0, :cond_6

    .line 2093
    :cond_5
    :goto_0
    return-void

    .line 2076
    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    .line 2079
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubiaAddMiscUsage Cell MobilePower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mTimes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mTimes:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 2084
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mTimes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 2085
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mNoCoverageTimeMs:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mTimes:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    .line 2088
    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v8

    .line 2089
    .local v8, "radioActiveTimeUs":J
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0x3e8

    div-long v10, v0, v2

    .line 2090
    .local v10, "remainingActiveTime":J
    iput-wide v10, v6, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 2091
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v0

    iput v0, v6, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    goto :goto_0
.end method

.method private nubiaCalcCpuPower()D
    .locals 14

    .prologue
    .line 1410
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v9}, Lcom/android/internal/os/PowerProfile;->getCpuNumCluster()I

    move-result v2

    .line 1411
    .local v2, "numclustercpu":I
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v9}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v0

    .line 1412
    .local v0, "c0speedSteps":I
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v9}, Lcom/android/internal/os/PowerProfile;->getNumCluster1SpeedSteps()I

    move-result v1

    .line 1413
    .local v1, "c1speedSteps":I
    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 1417
    .local v8, "which":I
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$002(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1418
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$302(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;J)J

    .line 1420
    const/4 v3, 0x0

    .local v3, "step":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1421
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "cpu.active"

    invoke-virtual {v9, v10, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    .line 1422
    .local v4, "steppower":D
    const-wide/16 v10, 0xa

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v3, v8}, Landroid/os/BatteryStats;->getTimeAtCpuSpeedStep(III)J

    move-result-wide v12

    mul-long v6, v10, v12

    .line 1423
    .local v6, "steptime":J
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    long-to-double v10, v6

    mul-double/2addr v10, v4

    # += operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$018(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1424
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # += operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J
    invoke-static {v9, v6, v7}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$314(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;J)J

    .line 1420
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1427
    .end local v4    # "steppower":D
    .end local v6    # "steptime":J
    :cond_0
    const/4 v9, 0x1

    if-le v2, v9, :cond_1

    .line 1428
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 1429
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "cpu.active.cluster1"

    invoke-virtual {v9, v10, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    .line 1430
    .restart local v4    # "steppower":D
    const-wide/16 v10, 0xa

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v3, v8}, Landroid/os/BatteryStats;->getTimeAtCpuSpeedStep(III)J

    move-result-wide v12

    mul-long v6, v10, v12

    .line 1431
    .restart local v6    # "steptime":J
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    long-to-double v10, v6

    mul-double/2addr v10, v4

    # += operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$018(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1432
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # += operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J
    invoke-static {v9, v6, v7}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$314(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;J)J

    .line 1428
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1436
    .end local v4    # "steppower":D
    .end local v6    # "steptime":J
    :cond_1
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide v10, 0x414b774000000000L    # 3600000.0

    # /= operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$042(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1438
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J
    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$300(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide/16 v10, 0x1

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$302(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;J)J

    .line 1440
    :cond_2
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->getALLUidCpuTime()J

    move-result-wide v10

    long-to-double v10, v10

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mSumRelCpuTime:J
    invoke-static {v12}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$300(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v10, v12

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuBusyRate:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$402(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1442
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuBusyRate:D
    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$400(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v10

    const-wide v12, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v9, v10, v12

    if-lez v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuBusyRate:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$402(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1443
    :cond_3
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v10}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v10

    iget-object v12, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuBusyRate:D
    invoke-static {v12}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$400(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v12

    mul-double/2addr v10, v12

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$002(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1449
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v10

    return-wide v10
.end method

.method private nubiaCalcGpuPower()D
    .locals 12

    .prologue
    .line 1453
    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 1454
    .local v8, "which":I
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v9}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v0

    .line 1455
    .local v0, "speedSteps":I
    const-wide/16 v4, 0x0

    .line 1456
    .local v4, "steptime":J
    const-wide/16 v6, 0x0

    .line 1457
    .local v6, "sumsteptime":J
    const-wide/16 v2, 0x0

    .line 1459
    .local v2, "steppower":D
    const/4 v1, 0x0

    .local v1, "step":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1460
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "gpu.active"

    invoke-virtual {v9, v10, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v2

    .line 1461
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v9, v1, v8}, Landroid/os/BatteryStats;->getTimeAtGpuSpeedStep(II)J

    move-result-wide v4

    .line 1462
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    long-to-double v10, v4

    mul-double/2addr v10, v2

    # += operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$118(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1463
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # += operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuTime:J
    invoke-static {v9, v4, v5}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$514(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;J)J

    .line 1459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1466
    :cond_0
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide v10, 0x414b774000000000L    # 3600000.0

    # /= operator for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$142(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1471
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v10

    return-wide v10
.end method

.method private nubiaCalcUid0Power()D
    .locals 14

    .prologue
    .line 1578
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v7}, Lcom/android/internal/os/PowerProfile;->getCpuNumCluster()I

    move-result v6

    .line 1579
    .local v6, "numclustercpu":I
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v7}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v0

    .line 1580
    .local v0, "c0speedSteps":I
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v7}, Lcom/android/internal/os/PowerProfile;->getNumCluster1SpeedSteps()I

    move-result v1

    .line 1581
    .local v1, "c1speedSteps":I
    const-wide/16 v8, 0x0

    .line 1583
    .local v8, "power":D
    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 1584
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "cpu.active"

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v2

    .line 1585
    .local v2, "c0steppower":D
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "cpu.active.cluster1"

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    .line 1586
    .local v4, "c1steppower":D
    cmpg-double v7, v2, v4

    if-gtz v7, :cond_0

    .line 1587
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaCalcUid0PowerByC0Cpu()D

    move-result-wide v8

    .line 1595
    .end local v2    # "c0steppower":D
    .end local v4    # "c1steppower":D
    :goto_0
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuBusyRate:D
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$400(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 1597
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v10, v12

    if-gez v7, :cond_2

    .line 1598
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mUid0CpuPowerRate:D
    invoke-static {v7, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$202(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    .line 1602
    :goto_1
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mUid0CpuPowerRate:D
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$200(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v10

    return-wide v10

    .line 1589
    .restart local v2    # "c0steppower":D
    .restart local v4    # "c1steppower":D
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaCalcUid0PowerByC1Cpu()D

    move-result-wide v8

    goto :goto_0

    .line 1592
    .end local v2    # "c0steppower":D
    .end local v4    # "c1steppower":D
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaCalcUid0PowerByC0Cpu()D

    move-result-wide v8

    goto :goto_0

    .line 1600
    :cond_2
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v10}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v10

    div-double v10, v8, v10

    # setter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mUid0CpuPowerRate:D
    invoke-static {v7, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$202(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;D)D

    goto :goto_1
.end method

.method private nubiaCalcUid0PowerByC0Cpu()D
    .locals 20

    .prologue
    .line 1518
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 1519
    .local v14, "which":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v15}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v2

    .line 1520
    .local v2, "c0speedSteps":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->getUid0CpuTime()J

    move-result-wide v12

    .line 1522
    .local v12, "uid0cputime":J
    const-wide/16 v8, 0x0

    .line 1523
    .local v8, "steptime":J
    const-wide/16 v10, 0x0

    .line 1524
    .local v10, "sumsteptime":J
    const-wide/16 v6, 0x0

    .line 1525
    .local v6, "steppower":D
    const-wide/16 v4, 0x0

    .line 1527
    .local v4, "power":D
    const/4 v3, 0x0

    .local v3, "step":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1528
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "cpu.active"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    .line 1529
    const-wide/16 v16, 0xa

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0, v3, v14}, Landroid/os/BatteryStats;->getTimeAtCpuSpeedStep(III)J

    move-result-wide v18

    mul-long v8, v16, v18

    .line 1531
    const-wide/16 v16, 0x1

    cmp-long v15, v12, v16

    if-gez v15, :cond_1

    .line 1544
    :cond_0
    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v4, v4, v16

    .line 1545
    return-wide v4

    .line 1535
    :cond_1
    cmp-long v15, v12, v8

    if-ltz v15, :cond_2

    .line 1536
    sub-long/2addr v12, v8

    .line 1541
    :goto_1
    long-to-double v0, v8

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v4, v4, v16

    .line 1527
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1538
    :cond_2
    move-wide v8, v12

    goto :goto_1
.end method

.method private nubiaCalcUid0PowerByC1Cpu()D
    .locals 18

    .prologue
    .line 1549
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 1550
    .local v12, "which":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v13}, Lcom/android/internal/os/PowerProfile;->getNumCluster1SpeedSteps()I

    move-result v2

    .line 1551
    .local v2, "c1speedSteps":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->getUid0CpuTime()J

    move-result-wide v10

    .line 1552
    .local v10, "uid0cputime":J
    const-wide/16 v8, 0x0

    .line 1553
    .local v8, "steptime":J
    const-wide/16 v6, 0x0

    .line 1554
    .local v6, "steppower":D
    const-wide/16 v4, 0x0

    .line 1556
    .local v4, "power":D
    const/4 v3, 0x0

    .local v3, "step":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v14, "cpu.active.cluster1"

    invoke-virtual {v13, v14, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    .line 1558
    const-wide/16 v14, 0xa

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0, v3, v12}, Landroid/os/BatteryStats;->getTimeAtCpuSpeedStep(III)J

    move-result-wide v16

    mul-long v8, v14, v16

    .line 1560
    const-wide/16 v14, 0x1

    cmp-long v13, v10, v14

    if-gez v13, :cond_1

    .line 1573
    :cond_0
    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v14

    .line 1574
    return-wide v4

    .line 1564
    :cond_1
    cmp-long v13, v10, v8

    if-ltz v13, :cond_2

    .line 1565
    sub-long/2addr v10, v8

    .line 1570
    :goto_1
    long-to-double v14, v8

    mul-double/2addr v14, v6

    add-double/2addr v4, v14

    .line 1556
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1567
    :cond_2
    move-wide v8, v10

    goto :goto_1
.end method

.method private nubiaGetBTPower()D
    .locals 12

    .prologue
    const-wide v10, 0x414b774000000000L    # 3600000.0

    const-wide/16 v8, 0x0

    .line 1628
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    .line 1629
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    long-to-double v4, v4

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.on"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1631
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    cmpl-double v1, v4, v8

    if-eqz v1, :cond_0

    .line 1632
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth: time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v6, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " power="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v6, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getBluetoothPingCount()I

    move-result v0

    .line 1635
    .local v0, "btPingCount":I
    int-to-double v4, v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "bluetooth.at"

    invoke-virtual {v1, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double v2, v4, v10

    .line 1638
    .local v2, "pingPower":D
    cmpl-double v1, v2, v8

    if-eqz v1, :cond_1

    .line 1639
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth ping: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " power="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    add-double/2addr v4, v2

    iput-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1643
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    cmpl-double v1, v4, v8

    if-eqz v1, :cond_2

    .line 1644
    sget-object v1, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BT Power="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v6, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBTPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    return-wide v4
.end method

.method private nubiaGetFlashlightPower()D
    .locals 6

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BatteryStats;->getFlashlightOnTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    .line 1618
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    long-to-double v2, v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "camera.flashlight"

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1621
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 1622
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flashlight Power="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    return-wide v0
.end method

.method private nubiaGetIdlePower()D
    .locals 7

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    .line 1676
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    long-to-double v2, v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "cpu.idle"

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1679
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 1680
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IdlePower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mIdlePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    return-wide v0
.end method

.method private nubiaGetMobilePowerByPacket()D
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1729
    const-wide/16 v0, 0x0

    .line 1730
    .local v0, "mobilePowerPerPacket":D
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v3, v4, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mDataCount:J

    .line 1732
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mDataCount:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1733
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerPacket()D

    move-result-wide v0

    .line 1734
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mDataCount:J

    long-to-double v4, v4

    mul-double/2addr v4, v0

    iput-wide v4, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    .line 1738
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    cmpl-double v2, v2, v8

    if-eqz v2, :cond_0

    .line 1739
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total mobile packets="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mDataCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mobileDataPower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mobilePowerPerPacket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    return-wide v2

    .line 1736
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iput-wide v8, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    goto :goto_0
.end method

.method private nubiaGetPhonePower()D
    .locals 6

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    .line 1607
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v2, "radio.active"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v4, v1, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1610
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 1611
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone Power="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPhonePower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    return-wide v0
.end method

.method private nubiaGetRadioPower()D
    .locals 22

    .prologue
    .line 1685
    const-wide/16 v10, 0x0

    .line 1686
    .local v10, "power":D
    const/4 v4, 0x5

    .line 1687
    .local v4, "BINS":I
    const-wide/16 v14, 0x0

    .line 1688
    .local v14, "signalTimeMs":J
    const-wide/16 v6, 0x0

    .line 1690
    .local v6, "noCoverageTimeMs":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    .line 1725
    :goto_0
    return-wide v18

    .line 1692
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 1695
    .local v16, "strengthTimeMs":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v20, v0

    const-string v21, "radio.on"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide v20, 0x414b774000000000L    # 3600000.0

    div-double v8, v18, v20

    .line 1701
    .local v8, "p":D
    add-double/2addr v10, v8

    .line 1702
    add-long v14, v14, v16

    .line 1703
    if-nez v5, :cond_1

    .line 1704
    move-wide/from16 v6, v16

    .line 1692
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1707
    .end local v8    # "p":D
    .end local v16    # "strengthTimeMs":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v12, v18, v20

    .line 1709
    .local v12, "scanningTimeMs":J
    long-to-double v0, v12

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v20, v0

    const-string v21, "radio.scanning"

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide v20, 0x414b774000000000L    # 3600000.0

    div-double v8, v18, v20

    .line 1715
    .restart local v8    # "p":D
    add-double/2addr v10, v8

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mTimes:J

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-wide v10, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mNoCoverageTimeMs:J

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_3

    .line 1722
    sget-object v18, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "radio time="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mTimes:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " radio power="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRadioPower:Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper$RadioPowerDataInfo;->mPower:D

    move-wide/from16 v18, v0

    goto/16 :goto_0
.end method

.method private nubiaGetScreenPower()D
    .locals 18

    .prologue
    .line 1650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v12, v14, v15, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    .line 1652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v14, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mTimes:J

    long-to-double v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v16, v0

    const-string v17, "screen.on"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "screen.full"

    invoke-virtual {v5, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v10

    .line 1657
    .local v10, "screenFullPower":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 1658
    int-to-float v5, v4

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v5, v12

    float-to-double v12, v5

    mul-double/2addr v12, v10

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v8, v12, v14

    .line 1660
    .local v8, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v5, v4, v12, v13, v14}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v2, v12, v14

    .line 1662
    .local v2, "brightnessTime":J
    long-to-double v12, v2

    mul-double v6, v8, v12

    .line 1663
    .local v6, "p":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    add-double/2addr v12, v6

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1657
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1665
    .end local v2    # "brightnessTime":J
    .end local v6    # "p":D
    .end local v8    # "screenBinPower":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double/2addr v12, v14

    iput-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    .line 1667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    const-wide/16 v14, 0x0

    cmpl-double v5, v12, v14

    if-eqz v5, :cond_1

    .line 1668
    sget-object v5, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenOnPower="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v14, v13, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHelper;->mScreenOnPower:Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;

    iget-wide v12, v5, Lcom/android/internal/os/BatteryStatsHelper$PowerDataInfo;->mPower:D

    return-wide v12
.end method

.method private nubiaGetWakeAndSensorPower()D
    .locals 48

    .prologue
    .line 1759
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v39, v0

    .line 1760
    .local v39, "which":I
    const-wide/16 v30, 0x0

    .line 1761
    .local v30, "sumwakepower":D
    const-wide/16 v28, 0x0

    .line 1762
    .local v28, "sensorpower":D
    const-wide/16 v6, 0x0

    .line 1763
    .local v6, "appWakelockTimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v33

    .line 1764
    .local v33, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v33 .. v33}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1765
    .local v5, "NU":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    const-string v43, "sensor"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/hardware/SensorManager;

    .line 1767
    .local v23, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v12, 0x0

    .local v12, "iu":I
    :goto_0
    if-ge v12, v5, :cond_5

    .line 1768
    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/BatteryStats$Uid;

    .line 1769
    .local v32, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v32 .. v32}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v38

    .line 1771
    .local v38, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v40, 0x0

    .line 1772
    .local v40, "wakelockTime":J
    const-wide/16 v8, 0x0

    .line 1775
    .local v8, "gpsTime":J
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;

    .line 1776
    .local v37, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1779
    .local v36, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v42, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v25

    .line 1780
    .local v25, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v25, :cond_0

    .line 1781
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v42, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v42

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v42

    add-long v40, v40, v42

    goto :goto_1

    .line 1785
    .end local v25    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v36    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v37    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_1
    add-long v6, v6, v40

    .line 1786
    const-wide/16 v42, 0x3e8

    div-long v40, v40, v42

    .line 1789
    move-wide/from16 v0, v40

    long-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v44, v0

    const-string v45, "cpu.awake"

    invoke-virtual/range {v44 .. v45}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v44

    mul-double v42, v42, v44

    const-wide v44, 0x414b774000000000L    # 3600000.0

    div-double v16, v42, v44

    .line 1794
    .local v16, "p":D
    add-double v30, v30, v16

    .line 1797
    invoke-virtual/range {v32 .. v32}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v24

    .line 1798
    .local v24, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1799
    .local v4, "NSE":I
    const/4 v11, 0x0

    .local v11, "ise":I
    :goto_2
    if-ge v11, v4, :cond_4

    .line 1800
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/BatteryStats$Uid$Sensor;

    .line 1801
    .local v20, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 1802
    .local v21, "sensorHandle":I
    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v25

    .line 1803
    .restart local v25    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v42, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v42

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v42

    const-wide/16 v44, 0x3e8

    div-long v26, v42, v44

    .line 1804
    .local v26, "sensorTime":J
    const-wide/16 v14, 0x0

    .line 1805
    .local v14, "multiplier":D
    packed-switch v21, :pswitch_data_0

    .line 1811
    const/16 v42, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v22

    .line 1813
    .local v22, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Sensor;

    .line 1814
    .local v13, "s":Landroid/hardware/Sensor;
    invoke-virtual {v13}, Landroid/hardware/Sensor;->getHandle()I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1815
    invoke-virtual {v13}, Landroid/hardware/Sensor;->getPower()F

    move-result v42

    move/from16 v0, v42

    float-to-double v14, v0

    .line 1820
    .end local v13    # "s":Landroid/hardware/Sensor;
    .end local v22    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_3
    :goto_3
    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v14

    const-wide v44, 0x414b774000000000L    # 3600000.0

    div-double v16, v42, v44

    .line 1823
    add-double v28, v28, v16

    .line 1799
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1807
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v42, v0

    const-string v43, "gps.on"

    invoke-virtual/range {v42 .. v43}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    .line 1808
    move-wide/from16 v8, v26

    .line 1809
    goto :goto_3

    .line 1767
    .end local v14    # "multiplier":D
    .end local v20    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v21    # "sensorHandle":I
    .end local v25    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v26    # "sensorTime":J
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1829
    .end local v4    # "NSE":I
    .end local v8    # "gpsTime":J
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "ise":I
    .end local v16    # "p":D
    .end local v24    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v32    # "u":Landroid/os/BatteryStats$Uid;
    .end local v38    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v40    # "wakelockTime":J
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    div-long v34, v42, v44

    .line 1830
    .local v34, "wakeTimeMillis":J
    const-wide/16 v42, 0x3e8

    div-long v42, v6, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v46, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v44

    const-wide/16 v46, 0x3e8

    div-long v44, v44, v46

    add-long v42, v42, v44

    sub-long v34, v34, v42

    .line 1832
    const-wide/16 v42, 0x0

    cmp-long v42, v34, v42

    if-lez v42, :cond_6

    .line 1833
    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v44, v0

    const-string v45, "cpu.awake"

    invoke-virtual/range {v44 .. v45}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v44

    mul-double v42, v42, v44

    const-wide v44, 0x414b774000000000L    # 3600000.0

    div-double v18, v42, v44

    .line 1838
    .local v18, "power":D
    add-double v30, v30, v18

    .line 1842
    .end local v18    # "power":D
    :cond_6
    sget-object v42, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "sumwakepower="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " sensorpower="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    add-double v42, v30, v28

    return-wide v42

    .line 1805
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private nubiaGetWifiPowerByPacket()D
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1744
    const-wide/16 v0, 0x0

    .line 1745
    .local v0, "PowerPerPacket":D
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v3, v4, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v3, v6, v7}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiDataCount:J

    .line 1747
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiDataCount:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1748
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getWifiPowerPerPacket()D

    move-result-wide v0

    .line 1749
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiDataCount:J

    long-to-double v4, v4

    mul-double/2addr v4, v0

    iput-wide v4, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    .line 1753
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    cmpl-double v2, v2, v8

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total wifi packets="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiDataCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wifiDataPower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PowerPerPacket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    return-wide v2

    .line 1751
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iput-wide v8, v2, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    goto :goto_0
.end method

.method private nubiaProcessAppUsage(Landroid/util/SparseArray;)V
    .locals 114
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/16 v108, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v108

    if-eqz v108, :cond_5

    const/16 v26, 0x1

    .line 689
    .local v26, "forAllUsers":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v108, v0

    const-string v109, "sensor"

    invoke-virtual/range {v108 .. v109}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/hardware/SensorManager;

    .line 691
    .local v68, "sensorManager":Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v91, v0

    .line 692
    .local v91, "which":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v108, v0

    invoke-virtual/range {v108 .. v108}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v72

    .line 693
    .local v72, "speedSteps":I
    move/from16 v0, v72

    new-array v0, v0, [D

    move-object/from16 v59, v0

    .line 694
    .local v59, "powerCpuNormal":[D
    move/from16 v0, v72

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 696
    .local v18, "cpuSpeedStepTimes":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    move-object/from16 v108, v0

    invoke-virtual/range {v108 .. v108}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->getUidxCpuTime()J

    move-result-wide v6

    .line 697
    .local v6, "alluidcputime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    move-object/from16 v108, v0

    invoke-virtual/range {v108 .. v108}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->getUidxCpuFgTime()J

    move-result-wide v8

    .line 698
    .local v8, "alluidfgtime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    move-object/from16 v108, v0

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static/range {v108 .. v108}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v22

    .line 699
    .local v22, "cpupower":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    move-object/from16 v108, v0

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static/range {v108 .. v108}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v32

    .line 700
    .local v32, "gpupower":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    move-object/from16 v108, v0

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mUid0CpuPowerRate:D
    invoke-static/range {v108 .. v108}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$200(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    move-object/from16 v110, v0

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static/range {v110 .. v110}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v110

    mul-double v80, v108, v110

    .line 701
    .local v80, "uid0power":D
    sub-double v22, v22, v80

    .line 704
    sget-object v108, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v109, Ljava/lang/StringBuilder;

    invoke-direct/range {v109 .. v109}, Ljava/lang/StringBuilder;-><init>()V

    const-string v110, "which="

    invoke-virtual/range {v109 .. v110}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v109

    move-object/from16 v0, v109

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v109

    const-string v110, " cpupower="

    invoke-virtual/range {v109 .. v110}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v109

    move-object/from16 v0, v109

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v109

    const-string v110, " gpupower="

    invoke-virtual/range {v109 .. v110}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v109

    move-object/from16 v0, v109

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v109

    const-string v110, " uid0power="

    invoke-virtual/range {v109 .. v110}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v109

    move-object/from16 v0, v109

    move-wide/from16 v1, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v109

    const-string v110, " alluidfgtime="

    invoke-virtual/range {v109 .. v110}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v109

    move-object/from16 v0, v109

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v109

    invoke-virtual/range {v109 .. v109}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v109

    invoke-static/range {v108 .. v109}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-wide/16 v108, 0x0

    cmpg-double v108, v22, v108

    if-gez v108, :cond_0

    .line 707
    const-wide/16 v22, 0x0

    .line 708
    :cond_0
    const-wide/16 v108, 0x1

    cmp-long v108, v6, v108

    if-gez v108, :cond_1

    .line 709
    const-wide/16 v6, 0x1

    .line 710
    :cond_1
    const-wide/16 v108, 0x1

    cmp-long v108, v8, v108

    if-gez v108, :cond_2

    .line 711
    const-wide/16 v8, 0x1

    .line 713
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerPacket()D

    move-result-wide v44

    .line 714
    .local v44, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v42

    .line 715
    .local v42, "mobilePowerPerMs":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getWifiPowerPerPacket()D

    move-result-wide v94

    .line 716
    .local v94, "wifiPowerPerPacket":D
    const-wide/16 v12, 0x0

    .line 717
    .local v12, "appWakelockTimeUs":J
    const/16 v39, 0x0

    .line 718
    .local v39, "osApp":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    move-wide/from16 v108, v0

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v108, v0

    invoke-virtual/range {v108 .. v108}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v79

    .line 720
    .local v79, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v79 .. v79}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 721
    .local v5, "NU":I
    const/16 v37, 0x0

    .local v37, "iu":I
    :goto_1
    move/from16 v0, v37

    if-ge v0, v5, :cond_1b

    .line 722
    move-object/from16 v0, v79

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/os/BatteryStats$Uid;

    .line 724
    .local v78, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v60, 0x0

    .line 725
    .local v60, "power":D
    const-wide/16 v34, 0x0

    .line 726
    .local v34, "highestDrain":D
    const/16 v58, 0x0

    .line 727
    .local v58, "packageWithHighestDrain":Ljava/lang/String;
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v62

    .line 728
    .local v62, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v20, 0x0

    .line 729
    .local v20, "cpuTime":J
    const-wide/16 v16, 0x0

    .line 730
    .local v16, "cpuFgTime":J
    const-wide/16 v92, 0x0

    .line 731
    .local v92, "wakelockTime":J
    const-wide/16 v30, 0x0

    .line 732
    .local v30, "gpsTime":J
    const-wide/16 v24, 0x0

    .line 733
    .local v24, "dataCout":J
    invoke-interface/range {v62 .. v62}, Ljava/util/Map;->size()I

    move-result v108

    if-lez v108, :cond_7

    .line 736
    invoke-interface/range {v62 .. v62}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v108

    invoke-interface/range {v108 .. v108}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v108

    if-eqz v108, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 737
    .local v19, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/os/BatteryStats$Uid$Proc;

    .line 738
    .local v63, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v63

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v84

    .line 739
    .local v84, "userTime":J
    move-object/from16 v0, v63

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v74

    .line 740
    .local v74, "systemTime":J
    move-object/from16 v0, v63

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v28

    .line 741
    .local v28, "foregroundTime":J
    const-wide/16 v108, 0xa

    mul-long v108, v108, v28

    add-long v16, v16, v108

    .line 742
    add-long v108, v84, v74

    const-wide/16 v110, 0xa

    mul-long v76, v108, v110

    .line 743
    .local v76, "tmpCpuTime":J
    add-long v20, v20, v76

    .line 745
    if-eqz v58, :cond_4

    const-string v108, "*"

    move-object/from16 v0, v58

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v108

    if-eqz v108, :cond_6

    .line 747
    :cond_4
    move-wide/from16 v0, v76

    long-to-double v0, v0

    move-wide/from16 v34, v0

    .line 748
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v58

    .end local v58    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v58, Ljava/lang/String;

    .restart local v58    # "packageWithHighestDrain":Ljava/lang/String;
    goto :goto_2

    .line 688
    .end local v5    # "NU":I
    .end local v6    # "alluidcputime":J
    .end local v8    # "alluidfgtime":J
    .end local v12    # "appWakelockTimeUs":J
    .end local v16    # "cpuFgTime":J
    .end local v18    # "cpuSpeedStepTimes":[J
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v20    # "cpuTime":J
    .end local v22    # "cpupower":D
    .end local v24    # "dataCout":J
    .end local v26    # "forAllUsers":Z
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v28    # "foregroundTime":J
    .end local v30    # "gpsTime":J
    .end local v32    # "gpupower":D
    .end local v34    # "highestDrain":D
    .end local v37    # "iu":I
    .end local v39    # "osApp":Lcom/android/internal/os/BatterySipper;
    .end local v42    # "mobilePowerPerMs":D
    .end local v44    # "mobilePowerPerPacket":D
    .end local v58    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v59    # "powerCpuNormal":[D
    .end local v60    # "power":D
    .end local v62    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v63    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v68    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v72    # "speedSteps":I
    .end local v74    # "systemTime":J
    .end local v76    # "tmpCpuTime":J
    .end local v78    # "u":Landroid/os/BatteryStats$Uid;
    .end local v79    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v80    # "uid0power":D
    .end local v84    # "userTime":J
    .end local v91    # "which":I
    .end local v92    # "wakelockTime":J
    .end local v94    # "wifiPowerPerPacket":D
    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 749
    .restart local v5    # "NU":I
    .restart local v6    # "alluidcputime":J
    .restart local v8    # "alluidfgtime":J
    .restart local v12    # "appWakelockTimeUs":J
    .restart local v16    # "cpuFgTime":J
    .restart local v18    # "cpuSpeedStepTimes":[J
    .restart local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v20    # "cpuTime":J
    .restart local v22    # "cpupower":D
    .restart local v24    # "dataCout":J
    .restart local v26    # "forAllUsers":Z
    .restart local v27    # "i$":Ljava/util/Iterator;
    .restart local v28    # "foregroundTime":J
    .restart local v30    # "gpsTime":J
    .restart local v32    # "gpupower":D
    .restart local v34    # "highestDrain":D
    .restart local v37    # "iu":I
    .restart local v39    # "osApp":Lcom/android/internal/os/BatterySipper;
    .restart local v42    # "mobilePowerPerMs":D
    .restart local v44    # "mobilePowerPerPacket":D
    .restart local v58    # "packageWithHighestDrain":Ljava/lang/String;
    .restart local v59    # "powerCpuNormal":[D
    .restart local v60    # "power":D
    .restart local v62    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v63    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v68    # "sensorManager":Landroid/hardware/SensorManager;
    .restart local v72    # "speedSteps":I
    .restart local v74    # "systemTime":J
    .restart local v76    # "tmpCpuTime":J
    .restart local v78    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v79    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v80    # "uid0power":D
    .restart local v84    # "userTime":J
    .restart local v91    # "which":I
    .restart local v92    # "wakelockTime":J
    .restart local v94    # "wifiPowerPerPacket":D
    :cond_6
    move-wide/from16 v0, v76

    long-to-double v0, v0

    move-wide/from16 v108, v0

    cmpg-double v108, v34, v108

    if-gez v108, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Ljava/lang/String;

    const-string v109, "*"

    invoke-virtual/range {v108 .. v109}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v108

    if-nez v108, :cond_3

    .line 751
    move-wide/from16 v0, v76

    long-to-double v0, v0

    move-wide/from16 v34, v0

    .line 752
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v58

    .end local v58    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v58, Ljava/lang/String;

    .restart local v58    # "packageWithHighestDrain":Ljava/lang/String;
    goto :goto_2

    .line 756
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v28    # "foregroundTime":J
    .end local v63    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v74    # "systemTime":J
    .end local v76    # "tmpCpuTime":J
    .end local v84    # "userTime":J
    :cond_7
    cmp-long v108, v16, v20

    if-lez v108, :cond_8

    .line 760
    move-wide/from16 v20, v16

    .line 763
    :cond_8
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v108

    if-nez v108, :cond_a

    .line 764
    move-wide/from16 v60, v80

    .line 768
    :goto_3
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v108, v0

    mul-double v108, v108, v32

    long-to-double v0, v8

    move-wide/from16 v110, v0

    div-double v56, v108, v110

    .line 772
    .local v56, "p":D
    add-double v60, v60, v56

    .line 775
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v90

    .line 777
    .local v90, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v90 .. v90}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v108

    invoke-interface/range {v108 .. v108}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v108

    if-eqz v108, :cond_b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Ljava/util/Map$Entry;

    .line 778
    .local v89, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v89 .. v89}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 781
    .local v88, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v108, 0x0

    move-object/from16 v0, v88

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v73

    .line 782
    .local v73, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v73, :cond_9

    .line 783
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v108, v0

    move-object/from16 v0, v73

    move-wide/from16 v1, v108

    move/from16 v3, v91

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v108

    add-long v92, v92, v108

    goto :goto_4

    .line 766
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v56    # "p":D
    .end local v73    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v88    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v89    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v90    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v108, v0

    mul-double v108, v108, v22

    long-to-double v0, v6

    move-wide/from16 v110, v0

    div-double v60, v108, v110

    goto :goto_3

    .line 786
    .restart local v27    # "i$":Ljava/util/Iterator;
    .restart local v56    # "p":D
    .restart local v90    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_b
    add-long v12, v12, v92

    .line 787
    const-wide/16 v108, 0x3e8

    div-long v92, v92, v108

    .line 790
    move-wide/from16 v0, v92

    long-to-double v0, v0

    move-wide/from16 v108, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v110, v0

    const-string v111, "cpu.awake"

    invoke-virtual/range {v110 .. v111}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v110

    mul-double v108, v108, v110

    const-wide v110, 0x414b774000000000L    # 3600000.0

    div-double v56, v108, v110

    .line 794
    add-double v60, v60, v56

    .line 797
    const/16 v108, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v109, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v46

    .line 798
    .local v46, "mobileRx":J
    const/16 v108, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v109, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v50

    .line 799
    .local v50, "mobileTx":J
    const/16 v108, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v109, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v48

    .line 800
    .local v48, "mobileRxB":J
    const/16 v108, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v109, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v52

    .line 801
    .local v52, "mobileTxB":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v108, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v40

    .line 803
    .local v40, "mobileActive":J
    const-wide/16 v108, 0x0

    cmp-long v108, v40, v108

    if-lez v108, :cond_c

    .line 804
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    move-wide/from16 v108, v0

    add-long v108, v108, v40

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    .line 807
    :cond_c
    add-long v24, v46, v50

    .line 809
    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v108, v0

    mul-double v108, v108, v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    move-wide/from16 v110, v0

    mul-double v56, v108, v110

    .line 813
    add-double v60, v60, v56

    .line 816
    const/16 v108, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v109, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v98

    .line 817
    .local v98, "wifiRx":J
    const/16 v108, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v109, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v104

    .line 818
    .local v104, "wifiTx":J
    const/16 v108, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v109, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v100

    .line 819
    .local v100, "wifiRxB":J
    const/16 v108, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v109, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    move/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v106

    .line 820
    .local v106, "wifiTxB":J
    add-long v24, v98, v104

    .line 821
    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v108, v0

    mul-double v108, v108, v94

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    move-wide/from16 v110, v0

    mul-double v56, v108, v110

    .line 825
    add-double v60, v60, v56

    .line 829
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v108, v0

    move-object/from16 v0, v78

    move-wide/from16 v1, v108

    move/from16 v3, v91

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v108

    const-wide/16 v110, 0x3e8

    div-long v96, v108, v110

    .line 830
    .local v96, "wifiRunningTimeMs":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v108, v0

    add-long v108, v108, v96

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    .line 831
    move-wide/from16 v0, v96

    long-to-double v0, v0

    move-wide/from16 v108, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v110, v0

    const-string v111, "wifi.on"

    invoke-virtual/range {v110 .. v111}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v110

    mul-double v108, v108, v110

    const-wide v110, 0x414b774000000000L    # 3600000.0

    div-double v56, v108, v110

    .line 836
    add-double v60, v60, v56

    .line 839
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v108, v0

    move-object/from16 v0, v78

    move-wide/from16 v1, v108

    move/from16 v3, v91

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v108

    const-wide/16 v110, 0x3e8

    div-long v102, v108, v110

    .line 840
    .local v102, "wifiScanTimeMs":J
    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v108, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v110, v0

    const-string v111, "wifi.scan"

    invoke-virtual/range {v110 .. v111}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v110

    mul-double v108, v108, v110

    const-wide v110, 0x414b774000000000L    # 3600000.0

    div-double v56, v108, v110

    .line 844
    add-double v60, v60, v56

    .line 846
    const/4 v11, 0x0

    .local v11, "bin":I
    :goto_5
    const/16 v108, 0x5

    move/from16 v0, v108

    if-ge v11, v0, :cond_d

    .line 847
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v108, v0

    move-object/from16 v0, v78

    move-wide/from16 v1, v108

    move/from16 v3, v91

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v108

    const-wide/16 v110, 0x3e8

    div-long v14, v108, v110

    .line 848
    .local v14, "batchScanTimeMs":J
    long-to-double v0, v14

    move-wide/from16 v108, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v110, v0

    const-string v111, "wifi.batchedscan"

    move-object/from16 v0, v110

    move-object/from16 v1, v111

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v110

    mul-double v108, v108, v110

    const-wide v110, 0x414b774000000000L    # 3600000.0

    div-double v56, v108, v110

    .line 853
    add-double v60, v60, v56

    .line 846
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 857
    .end local v14    # "batchScanTimeMs":J
    :cond_d
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v69

    .line 858
    .local v69, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 859
    .local v4, "NSE":I
    const/16 v36, 0x0

    .local v36, "ise":I
    :goto_6
    move/from16 v0, v36

    if-ge v0, v4, :cond_10

    .line 860
    move-object/from16 v0, v69

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/os/BatteryStats$Uid$Sensor;

    .line 861
    .local v65, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v69

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v66

    .line 862
    .local v66, "sensorHandle":I
    invoke-virtual/range {v65 .. v65}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v73

    .line 863
    .restart local v73    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v108, v0

    move-object/from16 v0, v73

    move-wide/from16 v1, v108

    move/from16 v3, v91

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v108

    const-wide/16 v110, 0x3e8

    div-long v70, v108, v110

    .line 864
    .local v70, "sensorTime":J
    const-wide/16 v54, 0x0

    .line 865
    .local v54, "multiplier":D
    packed-switch v66, :pswitch_data_0

    .line 871
    const/16 v108, -0x1

    move-object/from16 v0, v68

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v67

    .line 873
    .local v67, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v67 .. v67}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v108

    if-eqz v108, :cond_f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/hardware/Sensor;

    .line 874
    .local v64, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v64 .. v64}, Landroid/hardware/Sensor;->getHandle()I

    move-result v108

    move/from16 v0, v108

    move/from16 v1, v66

    if-ne v0, v1, :cond_e

    .line 875
    invoke-virtual/range {v64 .. v64}, Landroid/hardware/Sensor;->getPower()F

    move-result v108

    move/from16 v0, v108

    float-to-double v0, v0

    move-wide/from16 v54, v0

    .line 880
    .end local v64    # "s":Landroid/hardware/Sensor;
    .end local v67    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_f
    :goto_7
    move-wide/from16 v0, v70

    long-to-double v0, v0

    move-wide/from16 v108, v0

    mul-double v108, v108, v54

    const-wide v110, 0x414b774000000000L    # 3600000.0

    div-double v56, v108, v110

    .line 883
    add-double v60, v60, v56

    .line 859
    add-int/lit8 v36, v36, 0x1

    goto :goto_6

    .line 867
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v108, v0

    const-string v109, "gps.on"

    invoke-virtual/range {v108 .. v109}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v54

    .line 868
    move-wide/from16 v30, v70

    .line 869
    goto :goto_7

    .line 890
    .end local v54    # "multiplier":D
    .end local v65    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v66    # "sensorHandle":I
    .end local v70    # "sensorTime":J
    .end local v73    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_10
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v108

    invoke-static/range {v108 .. v108}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v82

    .line 891
    .local v82, "userId":I
    const-wide/16 v108, 0x0

    cmpl-double v108, v60, v108

    if-nez v108, :cond_11

    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v108

    if-nez v108, :cond_13

    .line 892
    :cond_11
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    sget-object v108, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v109, 0x1

    move/from16 v0, v109

    new-array v0, v0, [D

    move-object/from16 v109, v0

    const/16 v110, 0x0

    aput-wide v60, v109, v110

    move-object/from16 v0, v108

    move-object/from16 v1, v78

    move-object/from16 v2, v109

    invoke-direct {v10, v0, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 894
    .local v10, "app":Lcom/android/internal/os/BatterySipper;
    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    .line 895
    move-wide/from16 v0, v30

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    .line 896
    move-wide/from16 v0, v96

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    .line 897
    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    .line 898
    move-wide/from16 v0, v92

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 899
    move-wide/from16 v0, v46

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 900
    move-wide/from16 v0, v50

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 901
    const-wide/16 v108, 0x3e8

    div-long v108, v40, v108

    move-wide/from16 v0, v108

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 902
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v108, v0

    move-object/from16 v0, v78

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v108

    move/from16 v0, v108

    iput v0, v10, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 903
    move-wide/from16 v0, v98

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 904
    move-wide/from16 v0, v104

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 905
    move-wide/from16 v0, v48

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 906
    move-wide/from16 v0, v52

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 907
    move-wide/from16 v0, v100

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 908
    move-wide/from16 v0, v106

    iput-wide v0, v10, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 909
    move-object/from16 v0, v58

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 910
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v108

    const/16 v109, 0x3f2

    move/from16 v0, v108

    move/from16 v1, v109

    if-ne v0, v1, :cond_14

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    move-object/from16 v108, v0

    move-object/from16 v0, v108

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    move-wide/from16 v108, v0

    add-double v108, v108, v60

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    .line 939
    :cond_12
    :goto_8
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v108

    if-nez v108, :cond_13

    .line 940
    move-object/from16 v39, v10

    .line 721
    .end local v10    # "app":Lcom/android/internal/os/BatterySipper;
    :cond_13
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_1

    .line 913
    .restart local v10    # "app":Lcom/android/internal/os/BatterySipper;
    :cond_14
    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v108

    const/16 v109, 0x3ea

    move/from16 v0, v108

    move/from16 v1, v109

    if-ne v0, v1, :cond_15

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    move-object/from16 v108, v0

    move-object/from16 v0, v108

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    move-wide/from16 v108, v0

    add-double v108, v108, v60

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    goto :goto_8

    .line 916
    :cond_15
    if-nez v26, :cond_18

    move-object/from16 v0, p1

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v108

    if-nez v108, :cond_18

    invoke-virtual/range {v78 .. v78}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v108

    invoke-static/range {v108 .. v108}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v108

    const/16 v109, 0x2710

    move/from16 v0, v108

    move/from16 v1, v109

    if-lt v0, v1, :cond_18

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v108, v0

    move-object/from16 v0, v108

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/List;

    .line 919
    .local v38, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v38, :cond_16

    .line 920
    new-instance v38, Ljava/util/ArrayList;

    .end local v38    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .restart local v38    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v108, v0

    move-object/from16 v0, v108

    move/from16 v1, v82

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 923
    :cond_16
    move-object/from16 v0, v38

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    const-wide/16 v108, 0x0

    cmpl-double v108, v60, v108

    if-eqz v108, :cond_12

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v108, v0

    move-object/from16 v0, v108

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Ljava/lang/Double;

    .line 926
    .local v83, "userPower":Ljava/lang/Double;
    if-nez v83, :cond_17

    .line 927
    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v83

    .line 931
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v108, v0

    move-object/from16 v0, v108

    move/from16 v1, v82

    move-object/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 929
    :cond_17
    invoke-virtual/range {v83 .. v83}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v108

    add-double v108, v108, v60

    invoke-static/range {v108 .. v109}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v83

    goto :goto_9

    .line 934
    .end local v38    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v83    # "userPower":Ljava/lang/Double;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v108, v0

    move-object/from16 v0, v108

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v108, v0

    cmpl-double v108, v60, v108

    if-lez v108, :cond_19

    move-wide/from16 v0, v60

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 936
    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v108, v0

    cmpl-double v108, v60, v108

    if-lez v108, :cond_1a

    move-wide/from16 v0, v60

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 937
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v108, v0

    add-double v108, v108, v60

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    goto/16 :goto_8

    .line 948
    .end local v4    # "NSE":I
    .end local v10    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v11    # "bin":I
    .end local v16    # "cpuFgTime":J
    .end local v20    # "cpuTime":J
    .end local v24    # "dataCout":J
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v30    # "gpsTime":J
    .end local v34    # "highestDrain":D
    .end local v36    # "ise":I
    .end local v40    # "mobileActive":J
    .end local v46    # "mobileRx":J
    .end local v48    # "mobileRxB":J
    .end local v50    # "mobileTx":J
    .end local v52    # "mobileTxB":J
    .end local v56    # "p":D
    .end local v58    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v60    # "power":D
    .end local v62    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v69    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v78    # "u":Landroid/os/BatteryStats$Uid;
    .end local v82    # "userId":I
    .end local v90    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v92    # "wakelockTime":J
    .end local v96    # "wifiRunningTimeMs":J
    .end local v98    # "wifiRx":J
    .end local v100    # "wifiRxB":J
    .end local v102    # "wifiScanTimeMs":J
    .end local v104    # "wifiTx":J
    .end local v106    # "wifiTxB":J
    :cond_1b
    if-eqz v39, :cond_1e

    .line 949
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    move-wide/from16 v108, v0

    const-wide/16 v110, 0x3e8

    div-long v86, v108, v110

    .line 950
    .local v86, "wakeTimeMillis":J
    const-wide/16 v108, 0x3e8

    div-long v108, v12, v108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v110, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v112, v0

    move-object/from16 v0, v110

    move-wide/from16 v1, v112

    move/from16 v3, v91

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v110

    const-wide/16 v112, 0x3e8

    div-long v110, v110, v112

    add-long v108, v108, v110

    sub-long v86, v86, v108

    .line 952
    const-wide/16 v108, 0x0

    cmp-long v108, v86, v108

    if-lez v108, :cond_1e

    .line 953
    move-wide/from16 v0, v86

    long-to-double v0, v0

    move-wide/from16 v108, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v110, v0

    const-string v111, "cpu.awake"

    invoke-virtual/range {v110 .. v111}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v110

    mul-double v108, v108, v110

    const-wide v110, 0x414b774000000000L    # 3600000.0

    div-double v60, v108, v110

    .line 958
    .restart local v60    # "power":D
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    move-wide/from16 v108, v0

    add-long v108, v108, v86

    move-wide/from16 v0, v108

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 959
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v108, v0

    add-double v108, v108, v60

    move-wide/from16 v0, v108

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->value:D

    .line 960
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->values:[D

    move-object/from16 v108, v0

    const/16 v109, 0x0

    aget-wide v110, v108, v109

    add-double v110, v110, v60

    aput-wide v110, v108, v109

    .line 961
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v108, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v110, v0

    cmpl-double v108, v108, v110

    if-lez v108, :cond_1c

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v108, v0

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 962
    :cond_1c
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v108, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v110, v0

    cmpl-double v108, v108, v110

    if-lez v108, :cond_1d

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v108, v0

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 963
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v108, v0

    add-double v108, v108, v60

    move-wide/from16 v0, v108

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 966
    .end local v60    # "power":D
    .end local v86    # "wakeTimeMillis":J
    :cond_1e
    return-void

    .line 865
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private nubiaProcessCpuData()V
    .locals 0

    .prologue
    .line 2043
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaSumAlluidTime()V

    .line 2044
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaCalcCpuPower()D

    .line 2045
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaCalcUid0Power()D

    .line 2046
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaCalcGpuPower()D

    .line 2047
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaVerifyPower()V

    .line 2048
    return-void
.end method

.method private nubiaProcessMiscUsage()V
    .locals 0

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    .line 1227
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    .line 1228
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaAddMiscUsage()V

    .line 1229
    return-void
.end method

.method private nubiaSumAlluidTime()V
    .locals 30

    .prologue
    .line 1475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v24, v0

    .line 1476
    .local v24, "which":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->reset()V

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v17

    .line 1479
    .local v17, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1480
    .local v6, "NU":I
    const/4 v11, 0x0

    .local v11, "iu":I
    :goto_0
    if-ge v11, v6, :cond_3

    .line 1481
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/BatteryStats$Uid;

    .line 1483
    .local v16, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v12

    .line 1484
    .local v12, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v20, 0x0

    .line 1485
    .local v20, "uidcpuTime":J
    const-wide/16 v18, 0x0

    .line 1487
    .local v18, "uidcpuFgTime":J
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v25

    if-lez v25, :cond_0

    .line 1489
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1490
    .local v7, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Proc;

    .line 1491
    .local v13, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v22

    .line 1492
    .local v22, "userTime":J
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v14

    .line 1493
    .local v14, "systemTime":J
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v8

    .line 1494
    .local v8, "foregroundTime":J
    const-wide/16 v26, 0xa

    mul-long v26, v26, v8

    add-long v18, v18, v26

    .line 1495
    add-long v26, v22, v14

    const-wide/16 v28, 0xa

    mul-long v26, v26, v28

    add-long v20, v20, v26

    .line 1496
    goto :goto_1

    .line 1499
    .end local v7    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v8    # "foregroundTime":J
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v14    # "systemTime":J
    .end local v22    # "userTime":J
    :cond_0
    cmp-long v25, v18, v20

    if-lez v25, :cond_1

    .line 1503
    move-wide/from16 v20, v18

    .line 1505
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v25

    if-nez v25, :cond_2

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->addUid0(JJ)V

    .line 1480
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1508
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSumCpuTime:Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper$SumCpuTime;->add(JJ)V

    goto :goto_2

    .line 1515
    .end local v12    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v16    # "u":Landroid/os/BatteryStats$Uid;
    .end local v18    # "uidcpuFgTime":J
    .end local v20    # "uidcpuTime":J
    :cond_3
    return-void
.end method

.method private nubiaVerifyPower()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 2016
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPowerRate:D

    .line 2017
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerRate:D

    .line 2020
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetScreenPower()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetIdlePower()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetRadioPower()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetPhonePower()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetFlashlightPower()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetBTPower()D

    move-result-wide v4

    add-double v0, v2, v4

    .line 2023
    .local v0, "sumMiscPower":D
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetMobilePowerByPacket()D

    .line 2025
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1

    .line 2040
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetWakeAndSensorPower()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 2029
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaGetWifiPowerByPacket()D

    .line 2032
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v 00 SumCpuPower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mCpuPower:D
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$000(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SumgpuPower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCorePower:Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;

    # getter for: Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->mGpuPower:D
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;->access$100(Lcom/android/internal/os/BatteryStatsHelper$CoreDataInfo;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mobile data power="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mPower:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wifi data power="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mDataPower:Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHelper$DataPowerInfo;->mWifiPower:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sumMiscPower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->VerifyDataPower()V

    .line 2037
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->VerifyCorePower()V

    .line 2038
    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->VerifyComposePower(D)V

    goto :goto_0
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 108
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/16 v102, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v102

    if-eqz v102, :cond_0

    const/16 v18, 0x1

    .line 416
    .local v18, "forAllUsers":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v102, v0

    const-string v103, "sensor"

    invoke-virtual/range {v102 .. v103}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/hardware/SensorManager;

    .line 418
    .local v62, "sensorManager":Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v85, v0

    .line 419
    .local v85, "which":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v102, v0

    invoke-virtual/range {v102 .. v102}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v66

    .line 420
    .local v66, "speedSteps":I
    move/from16 v0, v66

    new-array v0, v0, [D

    move-object/from16 v49, v0

    .line 421
    .local v49, "powerCpuNormal":[D
    move/from16 v0, v66

    new-array v14, v0, [J

    .line 422
    .local v14, "cpuSpeedStepTimes":[J
    const/16 v46, 0x0

    .local v46, "p":I
    :goto_1
    move/from16 v0, v46

    move/from16 v1, v66

    if-ge v0, v1, :cond_1

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v102, v0

    const-string v103, "cpu.active"

    move-object/from16 v0, v102

    move-object/from16 v1, v103

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v102

    aput-wide v102, v49, v46

    .line 422
    add-int/lit8 v46, v46, 0x1

    goto :goto_1

    .line 415
    .end local v14    # "cpuSpeedStepTimes":[J
    .end local v18    # "forAllUsers":Z
    .end local v46    # "p":I
    .end local v49    # "powerCpuNormal":[D
    .end local v62    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v66    # "speedSteps":I
    .end local v85    # "which":I
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 425
    .restart local v14    # "cpuSpeedStepTimes":[J
    .restart local v18    # "forAllUsers":Z
    .restart local v46    # "p":I
    .restart local v49    # "powerCpuNormal":[D
    .restart local v62    # "sensorManager":Landroid/hardware/SensorManager;
    .restart local v66    # "speedSteps":I
    .restart local v85    # "which":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerPacket()D

    move-result-wide v34

    .line 426
    .local v34, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v32

    .line 427
    .local v32, "mobilePowerPerMs":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getWifiPowerPerPacket()D

    move-result-wide v88

    .line 428
    .local v88, "wifiPowerPerPacket":D
    const-wide/16 v8, 0x0

    .line 429
    .local v8, "appWakelockTimeUs":J
    const/16 v29, 0x0

    .line 430
    .local v29, "osApp":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    move-wide/from16 v102, v0

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v102, v0

    invoke-virtual/range {v102 .. v102}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v75

    .line 432
    .local v75, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v75 .. v75}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 433
    .local v5, "NU":I
    const/16 v27, 0x0

    .end local v46    # "p":I
    .local v27, "iu":I
    :goto_2
    move/from16 v0, v27

    if-ge v0, v5, :cond_1b

    .line 434
    move-object/from16 v0, v75

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/os/BatteryStats$Uid;

    .line 436
    .local v74, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v50, 0x0

    .line 437
    .local v50, "power":D
    const-wide/16 v24, 0x0

    .line 438
    .local v24, "highestDrain":D
    const/16 v48, 0x0

    .line 439
    .local v48, "packageWithHighestDrain":Ljava/lang/String;
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v54

    .line 440
    .local v54, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v16, 0x0

    .line 441
    .local v16, "cpuTime":J
    const-wide/16 v12, 0x0

    .line 442
    .local v12, "cpuFgTime":J
    const-wide/16 v86, 0x0

    .line 443
    .local v86, "wakelockTime":J
    const-wide/16 v22, 0x0

    .line 444
    .local v22, "gpsTime":J
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->size()I

    move-result v102

    if-lez v102, :cond_8

    .line 447
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v102

    invoke-interface/range {v102 .. v102}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v102

    if-eqz v102, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 448
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/os/BatteryStats$Uid$Proc;

    .line 449
    .local v55, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v55

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v78

    .line 450
    .local v78, "userTime":J
    move-object/from16 v0, v55

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v68

    .line 451
    .local v68, "systemTime":J
    move-object/from16 v0, v55

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v20

    .line 452
    .local v20, "foregroundTime":J
    const-wide/16 v102, 0xa

    mul-long v102, v102, v20

    add-long v12, v12, v102

    .line 453
    add-long v102, v78, v68

    const-wide/16 v104, 0xa

    mul-long v72, v102, v104

    .line 454
    .local v72, "tmpCpuTime":J
    const/16 v71, 0x0

    .line 456
    .local v71, "totalTimeAtSpeeds":I
    const/16 v67, 0x0

    .local v67, "step":I
    :goto_4
    move/from16 v0, v67

    move/from16 v1, v66

    if-ge v0, v1, :cond_3

    .line 457
    move-object/from16 v0, v55

    move/from16 v1, v67

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v102

    aput-wide v102, v14, v67

    .line 458
    move/from16 v0, v71

    int-to-long v0, v0

    move-wide/from16 v102, v0

    aget-wide v104, v14, v67

    add-long v102, v102, v104

    move-wide/from16 v0, v102

    long-to-int v0, v0

    move/from16 v71, v0

    .line 456
    add-int/lit8 v67, v67, 0x1

    goto :goto_4

    .line 460
    :cond_3
    if-nez v71, :cond_4

    const/16 v71, 0x1

    .line 462
    :cond_4
    const-wide/16 v52, 0x0

    .line 463
    .local v52, "processPower":D
    const/16 v67, 0x0

    :goto_5
    move/from16 v0, v67

    move/from16 v1, v66

    if-ge v0, v1, :cond_5

    .line 464
    aget-wide v102, v14, v67

    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move/from16 v0, v71

    int-to-double v0, v0

    move-wide/from16 v104, v0

    div-double v56, v102, v104

    .line 468
    .local v56, "ratio":D
    move-wide/from16 v0, v72

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v102, v102, v56

    aget-wide v104, v49, v67

    mul-double v102, v102, v104

    add-double v52, v52, v102

    .line 463
    add-int/lit8 v67, v67, 0x1

    goto :goto_5

    .line 470
    .end local v56    # "ratio":D
    :cond_5
    add-long v16, v16, v72

    .line 475
    add-double v50, v50, v52

    .line 476
    if-eqz v48, :cond_6

    const-string v102, "*"

    move-object/from16 v0, v48

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v102

    if-eqz v102, :cond_7

    .line 478
    :cond_6
    move-wide/from16 v24, v52

    .line 479
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v48, Ljava/lang/String;

    .restart local v48    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_3

    .line 480
    :cond_7
    cmpg-double v102, v24, v52

    if-gez v102, :cond_2

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Ljava/lang/String;

    const-string v103, "*"

    invoke-virtual/range {v102 .. v103}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v102

    if-nez v102, :cond_2

    .line 482
    move-wide/from16 v24, v52

    .line 483
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v48, Ljava/lang/String;

    .restart local v48    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_3

    .line 487
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "foregroundTime":J
    .end local v52    # "processPower":D
    .end local v55    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v67    # "step":I
    .end local v68    # "systemTime":J
    .end local v71    # "totalTimeAtSpeeds":I
    .end local v72    # "tmpCpuTime":J
    .end local v78    # "userTime":J
    :cond_8
    cmp-long v102, v12, v16

    if-lez v102, :cond_9

    .line 491
    move-wide/from16 v16, v12

    .line 493
    :cond_9
    const-wide v102, 0x414b774000000000L    # 3600000.0

    div-double v50, v50, v102

    .line 496
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v84

    .line 498
    .local v84, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v84 .. v84}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v102

    invoke-interface/range {v102 .. v102}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v102

    if-eqz v102, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Ljava/util/Map$Entry;

    .line 499
    .local v83, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 502
    .local v82, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v102, 0x0

    move-object/from16 v0, v82

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v70

    .line 503
    .local v70, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v70, :cond_a

    .line 504
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v70

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v102

    add-long v86, v86, v102

    goto :goto_6

    .line 507
    .end local v70    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v82    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v83    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_b
    add-long v8, v8, v86

    .line 508
    const-wide/16 v102, 0x3e8

    div-long v86, v86, v102

    .line 511
    move-wide/from16 v0, v86

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "cpu.awake"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 515
    .local v46, "p":D
    add-double v50, v50, v46

    .line 518
    const/16 v102, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v36

    .line 519
    .local v36, "mobileRx":J
    const/16 v102, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v40

    .line 520
    .local v40, "mobileTx":J
    const/16 v102, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v38

    .line 521
    .local v38, "mobileRxB":J
    const/16 v102, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v42

    .line 522
    .local v42, "mobileTxB":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v102, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v30

    .line 523
    .local v30, "mobileActive":J
    const-wide/16 v102, 0x0

    cmp-long v102, v30, v102

    if-lez v102, :cond_c

    .line 526
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    move-wide/from16 v102, v0

    add-long v102, v102, v30

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    .line 527
    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v102, v102, v32

    const-wide v104, 0x408f400000000000L    # 1000.0

    div-double v46, v102, v104

    .line 536
    :goto_7
    add-double v50, v50, v46

    .line 539
    const/16 v102, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v92

    .line 540
    .local v92, "wifiRx":J
    const/16 v102, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v98

    .line 541
    .local v98, "wifiTx":J
    const/16 v102, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v94

    .line 542
    .local v94, "wifiRxB":J
    const/16 v102, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v103, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v100

    .line 543
    .local v100, "wifiTxB":J
    add-long v102, v92, v98

    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v46, v102, v88

    .line 546
    add-double v50, v50, v46

    .line 549
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v74

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v102

    const-wide/16 v104, 0x3e8

    div-long v90, v102, v104

    .line 550
    .local v90, "wifiRunningTimeMs":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v102, v0

    add-long v102, v102, v90

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    .line 551
    move-wide/from16 v0, v90

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "wifi.on"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 555
    add-double v50, v50, v46

    .line 558
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v74

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v102

    const-wide/16 v104, 0x3e8

    div-long v96, v102, v104

    .line 559
    .local v96, "wifiScanTimeMs":J
    move-wide/from16 v0, v96

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "wifi.scan"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 563
    add-double v50, v50, v46

    .line 564
    const/4 v7, 0x0

    .local v7, "bin":I
    :goto_8
    const/16 v102, 0x5

    move/from16 v0, v102

    if-ge v7, v0, :cond_d

    .line 565
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v74

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v102

    const-wide/16 v104, 0x3e8

    div-long v10, v102, v104

    .line 566
    .local v10, "batchScanTimeMs":J
    long-to-double v0, v10

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "wifi.batchedscan"

    move-object/from16 v0, v104

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 571
    add-double v50, v50, v46

    .line 564
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 531
    .end local v7    # "bin":I
    .end local v10    # "batchScanTimeMs":J
    .end local v90    # "wifiRunningTimeMs":J
    .end local v92    # "wifiRx":J
    .end local v94    # "wifiRxB":J
    .end local v96    # "wifiScanTimeMs":J
    .end local v98    # "wifiTx":J
    .end local v100    # "wifiTxB":J
    :cond_c
    add-long v102, v36, v40

    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v46, v102, v34

    goto/16 :goto_7

    .line 575
    .restart local v7    # "bin":I
    .restart local v90    # "wifiRunningTimeMs":J
    .restart local v92    # "wifiRx":J
    .restart local v94    # "wifiRxB":J
    .restart local v96    # "wifiScanTimeMs":J
    .restart local v98    # "wifiTx":J
    .restart local v100    # "wifiTxB":J
    :cond_d
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v63

    .line 576
    .local v63, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 577
    .local v4, "NSE":I
    const/16 v26, 0x0

    .local v26, "ise":I
    :goto_9
    move/from16 v0, v26

    if-ge v0, v4, :cond_10

    .line 578
    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/os/BatteryStats$Uid$Sensor;

    .line 579
    .local v59, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    .line 580
    .local v60, "sensorHandle":I
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v70

    .line 581
    .restart local v70    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v102, v0

    move-object/from16 v0, v70

    move-wide/from16 v1, v102

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v102

    const-wide/16 v104, 0x3e8

    div-long v64, v102, v104

    .line 582
    .local v64, "sensorTime":J
    const-wide/16 v44, 0x0

    .line 583
    .local v44, "multiplier":D
    packed-switch v60, :pswitch_data_0

    .line 589
    const/16 v102, -0x1

    move-object/from16 v0, v62

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v61

    .line 591
    .local v61, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v102

    if-eqz v102, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/hardware/Sensor;

    .line 592
    .local v58, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v58 .. v58}, Landroid/hardware/Sensor;->getHandle()I

    move-result v102

    move/from16 v0, v102

    move/from16 v1, v60

    if-ne v0, v1, :cond_e

    .line 593
    invoke-virtual/range {v58 .. v58}, Landroid/hardware/Sensor;->getPower()F

    move-result v102

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v44, v0

    .line 598
    .end local v58    # "s":Landroid/hardware/Sensor;
    .end local v61    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_f
    :goto_a
    move-wide/from16 v0, v64

    long-to-double v0, v0

    move-wide/from16 v102, v0

    mul-double v102, v102, v44

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v46, v102, v104

    .line 601
    add-double v50, v50, v46

    .line 577
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 585
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v102, v0

    const-string v103, "gps.on"

    invoke-virtual/range {v102 .. v103}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v44

    .line 586
    move-wide/from16 v22, v64

    .line 587
    goto :goto_a

    .line 608
    .end local v44    # "multiplier":D
    .end local v59    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v60    # "sensorHandle":I
    .end local v64    # "sensorTime":J
    .end local v70    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_10
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    invoke-static/range {v102 .. v102}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v76

    .line 609
    .local v76, "userId":I
    const-wide/16 v102, 0x0

    cmpl-double v102, v50, v102

    if-nez v102, :cond_11

    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    if-nez v102, :cond_13

    .line 610
    :cond_11
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v102, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v103, 0x1

    move/from16 v0, v103

    new-array v0, v0, [D

    move-object/from16 v103, v0

    const/16 v104, 0x0

    aput-wide v50, v103, v104

    move-object/from16 v0, v102

    move-object/from16 v1, v74

    move-object/from16 v2, v103

    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 612
    .local v6, "app":Lcom/android/internal/os/BatterySipper;
    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    .line 613
    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    .line 614
    move-wide/from16 v0, v90

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    .line 615
    iput-wide v12, v6, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    .line 616
    move-wide/from16 v0, v86

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 617
    move-wide/from16 v0, v36

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 618
    move-wide/from16 v0, v40

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 619
    const-wide/16 v102, 0x3e8

    div-long v102, v30, v102

    move-wide/from16 v0, v102

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v102, v0

    move-object/from16 v0, v74

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v102

    move/from16 v0, v102

    iput v0, v6, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 621
    move-wide/from16 v0, v92

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 622
    move-wide/from16 v0, v98

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 623
    move-wide/from16 v0, v38

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 624
    move-wide/from16 v0, v42

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 625
    move-wide/from16 v0, v94

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 626
    move-wide/from16 v0, v100

    iput-wide v0, v6, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 627
    move-object/from16 v0, v48

    iput-object v0, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 628
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    const/16 v103, 0x3f2

    move/from16 v0, v102

    move/from16 v1, v103

    if-ne v0, v1, :cond_14

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    .line 657
    :cond_12
    :goto_b
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    if-nez v102, :cond_13

    .line 658
    move-object/from16 v29, v6

    .line 433
    .end local v6    # "app":Lcom/android/internal/os/BatterySipper;
    :cond_13
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 631
    .restart local v6    # "app":Lcom/android/internal/os/BatterySipper;
    :cond_14
    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    const/16 v103, 0x3ea

    move/from16 v0, v102

    move/from16 v1, v103

    if-ne v0, v1, :cond_15

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    goto :goto_b

    .line 634
    :cond_15
    if-nez v18, :cond_18

    move-object/from16 v0, p1

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v102

    if-nez v102, :cond_18

    invoke-virtual/range {v74 .. v74}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    invoke-static/range {v102 .. v102}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v102

    const/16 v103, 0x2710

    move/from16 v0, v102

    move/from16 v1, v103

    if-lt v0, v1, :cond_18

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    .line 637
    .local v28, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v28, :cond_16

    .line 638
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .restart local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    move/from16 v1, v76

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    :cond_16
    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    const-wide/16 v102, 0x0

    cmpl-double v102, v50, v102

    if-eqz v102, :cond_12

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Ljava/lang/Double;

    .line 644
    .local v77, "userPower":Ljava/lang/Double;
    if-nez v77, :cond_17

    .line 645
    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v77

    .line 649
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    move/from16 v1, v76

    move-object/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 647
    :cond_17
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v102

    add-double v102, v102, v50

    invoke-static/range {v102 .. v103}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v77

    goto :goto_c

    .line 652
    .end local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v77    # "userPower":Ljava/lang/Double;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v102, v0

    move-object/from16 v0, v102

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v102, v0

    cmpl-double v102, v50, v102

    if-lez v102, :cond_19

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 654
    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v102, v0

    cmpl-double v102, v50, v102

    if-lez v102, :cond_1a

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 655
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    goto/16 :goto_b

    .line 666
    .end local v4    # "NSE":I
    .end local v6    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "bin":I
    .end local v12    # "cpuFgTime":J
    .end local v16    # "cpuTime":J
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "gpsTime":J
    .end local v24    # "highestDrain":D
    .end local v26    # "ise":I
    .end local v30    # "mobileActive":J
    .end local v36    # "mobileRx":J
    .end local v38    # "mobileRxB":J
    .end local v40    # "mobileTx":J
    .end local v42    # "mobileTxB":J
    .end local v46    # "p":D
    .end local v48    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v50    # "power":D
    .end local v54    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v63    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v74    # "u":Landroid/os/BatteryStats$Uid;
    .end local v76    # "userId":I
    .end local v84    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v86    # "wakelockTime":J
    .end local v90    # "wifiRunningTimeMs":J
    .end local v92    # "wifiRx":J
    .end local v94    # "wifiRxB":J
    .end local v96    # "wifiScanTimeMs":J
    .end local v98    # "wifiTx":J
    .end local v100    # "wifiTxB":J
    :cond_1b
    if-eqz v29, :cond_1e

    .line 667
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    move-wide/from16 v102, v0

    const-wide/16 v104, 0x3e8

    div-long v80, v102, v104

    .line 668
    .local v80, "wakeTimeMillis":J
    const-wide/16 v102, 0x3e8

    div-long v102, v8, v102

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v104, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v106, v0

    move-object/from16 v0, v104

    move-wide/from16 v1, v106

    move/from16 v3, v85

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v104, v104, v106

    add-long v102, v102, v104

    sub-long v80, v80, v102

    .line 670
    const-wide/16 v102, 0x0

    cmp-long v102, v80, v102

    if-lez v102, :cond_1e

    .line 671
    move-wide/from16 v0, v80

    long-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "cpu.awake"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v104

    mul-double v102, v102, v104

    const-wide v104, 0x414b774000000000L    # 3600000.0

    div-double v50, v102, v104

    .line 676
    .restart local v50    # "power":D
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    move-wide/from16 v102, v0

    add-long v102, v102, v80

    move-wide/from16 v0, v102

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 677
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->value:D

    .line 678
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->values:[D

    move-object/from16 v102, v0

    const/16 v103, 0x0

    aget-wide v104, v102, v103

    add-double v104, v104, v50

    aput-wide v104, v102, v103

    .line 679
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v104, v0

    cmpl-double v102, v102, v104

    if-lez v102, :cond_1c

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 680
    :cond_1c
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v104, v0

    cmpl-double v102, v102, v104

    if-lez v102, :cond_1d

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v102, v0

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 681
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v102, v0

    add-double v102, v102, v50

    move-wide/from16 v0, v102

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 684
    .end local v50    # "power":D
    .end local v80    # "wakeTimeMillis":J
    :cond_1e
    return-void

    .line 583
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 1

    .prologue
    .line 1212
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    .line 1213
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    .line 1214
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addScreenUsage()V

    .line 1215
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addFlashlightUsage()V

    .line 1216
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    .line 1217
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    .line 1218
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    .line 1220
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_0

    .line 1221
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    .line 1223
    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1278
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1282
    const/4 v3, 0x0

    .line 1283
    .local v3, "pos":I
    new-array v1, p1, [B

    .line 1285
    .local v1, "data":[B
    :cond_0
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 1288
    .local v0, "amt":I
    if-gtz v0, :cond_1

    .line 1291
    return-object v1

    .line 1293
    :cond_1
    add-int/2addr v3, v0

    .line 1294
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 1295
    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_0

    .line 1296
    add-int v4, v3, p1

    new-array v2, v4, [B

    .line 1297
    .local v2, "newData":[B
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1298
    move-object v1, v2

    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 184
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 185
    .local v5, "path":Ljava/io/File;
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats;

    .line 186
    .local v6, "stats":Landroid/os/BatteryStats;
    if-eqz v6, :cond_0

    .line 187
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :goto_0
    return-object v6

    .line 189
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :cond_0
    const/4 v2, 0x0

    .line 191
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .line 193
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 194
    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v9, v0

    invoke-virtual {v4, v0, v7, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 195
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 196
    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 200
    if-eqz v3, :cond_1

    .line 202
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v7

    goto :goto_0

    .line 197
    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v9, "Unable to read history to file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    if-eqz v2, :cond_2

    .line 202
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 207
    :cond_2
    :goto_3
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 208
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    goto :goto_0

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_3

    .line 202
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 204
    :cond_3
    :goto_5
    :try_start_9
    throw v7

    .line 207
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .line 203
    .restart local v0    # "data":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "parcel":Landroid/os/Parcel;
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_5

    .line 200
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 197
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 223
    return-void
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 2
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 244
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 245
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 246
    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 251
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 253
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 255
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 256
    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    return-object v0
.end method

.method public getBatteryTimeRemaining()J
    .locals 2

    .prologue
    .line 1273
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    return-wide v0
.end method

.method public getChargeTimeRemaining()J
    .locals 2

    .prologue
    .line 1275
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    return-wide v0
.end method

.method public getComputedPower()D
    .locals 2

    .prologue
    .line 1263
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getMaxDrainedPower()D
    .locals 2

    .prologue
    .line 1270
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    .prologue
    .line 1257
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    .prologue
    .line 1259
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    .prologue
    .line 1266
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .locals 2

    .prologue
    .line 1253
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .locals 1

    .prologue
    .line 1255
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .locals 2

    .prologue
    .line 1261
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public refreshStats(II)V
    .locals 2
    .param p1, "statsType"    # I
    .param p2, "asUser"    # I

    .prologue
    .line 279
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 280
    .local v0, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    .line 282
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 8
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const-wide/16 v2, 0x3e8

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v4, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v6, v0, v2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    .line 303
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 13
    .param p1, "statsType"    # I
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 310
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 311
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 312
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 313
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 314
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    .line 315
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    .line 316
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    .line 317
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    .line 319
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 320
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 321
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 322
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 323
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 324
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 326
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v2, :cond_0

    .line 413
    :goto_0
    return-void

    .line 330
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 331
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    .line 332
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    .line 333
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    .line 334
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtime:J

    .line 335
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptime:J

    .line 336
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    .line 337
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    .line 338
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    .line 348
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    .line 350
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    .line 353
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaProcessCpuData()V

    .line 354
    invoke-direct {p0, p2}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaProcessAppUsage(Landroid/util/SparseArray;)V

    .line 361
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 363
    .local v8, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 364
    iget-wide v2, v8, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 368
    .end local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_5

    .line 369
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 370
    .local v11, "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_4

    .line 371
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 372
    .restart local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 373
    iget-wide v2, v8, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 374
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 368
    .end local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 378
    .end local v10    # "j":I
    .end local v11    # "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    new-instance v3, Lcom/android/internal/os/BatteryStatsHelper$1;

    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 393
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->nubiaProcessMiscUsage()V

    .line 397
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accuracy: total computed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", min discharge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max discharge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 401
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 402
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    .line 403
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    sub-double v6, v2, v4

    .line 404
    .local v6, "amount":D
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 405
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 412
    .end local v6    # "amount":D
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0

    .line 406
    :cond_7
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6

    .line 407
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    sub-double v6, v2, v4

    .line 408
    .restart local v6    # "amount":D
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    goto :goto_4
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "asUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 289
    .local v1, "n":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 290
    .local v3, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 291
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 292
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    .line 295
    return-void
.end method

.method public storeState()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    .line 260
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    .line 261
    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 160
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 161
    .local v5, "path":Ljava/io/File;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 166
    .local v3, "hist":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 167
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 168
    .local v4, "histData":[B
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 172
    if-eqz v2, :cond_2

    .line 174
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .line 179
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    return-void

    .line 175
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 176
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 169
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v8, "Unable to write history to file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    if-eqz v1, :cond_0

    .line 174
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 175
    :catch_2
    move-exception v6

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_1

    .line 174
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 176
    :cond_1
    :goto_3
    :try_start_8
    throw v6

    .line 179
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "path":Ljava/io/File;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 175
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "path":Ljava/io/File;
    :catch_3
    move-exception v8

    goto :goto_3

    .line 172
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 169
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :cond_2
    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
