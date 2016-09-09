.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$1;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;,
        Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;
    }
.end annotation


# static fields
.field private static final NO_CONDITIONS:[Landroid/service/notification/Condition;


# instance fields
.field private final mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

.field private final mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExitConditionComponent:Landroid/content/ComponentName;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/notification/IConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

.field private final mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSilentExitCondition:Landroid/service/notification/Condition;

.field private mSilentExitConditionComponent:Landroid/content/ComponentName;

.field private final mSystemConditionProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/Condition;

    sput-object v0, Lcom/android/server/notification/ConditionProviders;->NO_CONDITIONS:[Landroid/service/notification/Condition;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/notification/ZenModeHelper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p4, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    const/4 v4, 0x0

    .line 71
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 53
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    .line 72
    iput-object p4, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 73
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v5, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;

    invoke-direct {v5, p0, v4}, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;-><init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V

    invoke-virtual {v3, v5}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 74
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    const-string v5, "system.condition.providers"

    const v6, 0x1070044

    invoke-static {v3, v5, v6}, Lcom/android/server/notification/PropConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    .line 77
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    const-string v5, "countdown"

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    .local v0, "countdown":Z
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    const-string v5, "downtime"

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    .local v1, "downtime":Z
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    const-string v5, "next_alarm"

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 80
    .local v2, "nextAlarm":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    new-instance v3, Lcom/android/server/notification/NextAlarmTracker;

    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/server/notification/NextAlarmTracker;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    .line 81
    if-eqz v0, :cond_3

    new-instance v3, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {v3}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    :goto_1
    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    .line 82
    if-eqz v1, :cond_4

    new-instance v3, Lcom/android/server/notification/DowntimeConditionProvider;

    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/server/notification/DowntimeConditionProvider;-><init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/NextAlarmTracker;Lcom/android/server/notification/ZenModeHelper;)V

    :goto_2
    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    .line 84
    if-eqz v2, :cond_1

    new-instance v4, Lcom/android/server/notification/NextAlarmConditionProvider;

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-direct {v4, v3}, Lcom/android/server/notification/NextAlarmConditionProvider;-><init>(Lcom/android/server/notification/NextAlarmTracker;)V

    :cond_1
    iput-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    .line 85
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V

    .line 86
    return-void

    :cond_2
    move-object v3, v4

    .line 80
    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 81
    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 82
    goto :goto_2
.end method

.method static synthetic access$200(Lcom/android/server/notification/ConditionProviders;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method private changeZenMode(II[Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "i"    # I
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 703
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "autoChangeZenMode":Z
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExitCondition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mSilentExitCondition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    aget-object v2, p3, p2

    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->unsubscribeForExit(Z)Z

    move-result v0

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    aget-object v2, p3, p2

    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->unsubscribeForSilentExit(Z)Z

    move-result v0

    .line 712
    :cond_1
    if-nez v0, :cond_2

    .line 713
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v2, 0x0

    const-string v3, "manualConditionExit"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 717
    .end local v0    # "autoChangeZenMode":Z
    :cond_2
    return-void
.end method

.method private ensureRecordExists(Landroid/service/notification/Condition;Landroid/service/notification/IConditionProvider;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p3, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 374
    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-direct {p0, v1, p3}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 375
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_0

    .line 377
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 379
    :cond_0
    return-void
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .locals 4
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 290
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 291
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 293
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    :goto_1
    return-object v2

    .line 291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$1;)V

    .line 298
    .restart local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private loadCondigOfSilentExit(Landroid/service/notification/ZenModeConfig;)V
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 695
    .local v0, "changingSilentExit":Z
    :goto_0
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    iput-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    .line 696
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->silentExitConditionComponent:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    .line 697
    if-eqz v0, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    const-string v3, "config"

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 700
    :cond_0
    return-void

    .line 694
    .end local v0    # "changingSilentExit":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadZenConfig()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v7}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 549
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_1

    .line 550
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v8, "loadZenConfig: no config"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 554
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v9, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    .line 555
    .local v1, "changingExit":Z
    :cond_2
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    iput-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 556
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    iput-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 557
    if-eqz v1, :cond_3

    .line 558
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    const-string v10, "config"

    invoke-static {v7, v9, v10}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 561
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/notification/ConditionProviders;->loadCondigOfSilentExit(Landroid/service/notification/ZenModeConfig;)V

    .line 563
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v7, :cond_4

    .line 564
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v7, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    .line 566
    :cond_4
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-eqz v7, :cond_5

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-eqz v7, :cond_5

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v7, v7

    iget-object v9, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v9, v9

    if-eq v7, v9, :cond_7

    .line 568
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v9, "loadZenConfig: no conditions"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_6
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 570
    monitor-exit v8

    goto :goto_0

    .line 584
    .end local v1    # "changingExit":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 572
    .restart local v1    # "changingExit":Z
    :cond_7
    :try_start_1
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 573
    .local v6, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v0, v7

    .line 574
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_9

    .line 575
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    aget-object v2, v7, v4

    .line 576
    .local v2, "component":Landroid/content/ComponentName;
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    aget-object v5, v7, v4

    .line 577
    .local v5, "id":Landroid/net/Uri;
    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    .line 578
    invoke-direct {p0, v5, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 579
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 582
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v5    # "id":Landroid/net/Uri;
    :cond_9
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadZenConfig: N="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_a
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 584
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private onManualConditionClearing()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->onManualConditionClearing()V

    .line 626
    :cond_0
    return-void
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 521
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    goto :goto_0
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 525
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/IConditionProvider;

    goto :goto_0
.end method

.method private requestConditionsLocked(I)V
    .locals 9
    .param p1, "flags"    # I

    .prologue
    .line 529
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 530
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v4

    .line 531
    .local v4, "provider":Landroid/service/notification/IConditionProvider;
    if-eqz v4, :cond_0

    .line 533
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 534
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 535
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-eq v6, v3, :cond_2

    .line 533
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 536
    :cond_2
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-nez v6, :cond_1

    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v6, :cond_1

    .line 537
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 540
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    :try_start_0
    invoke-interface {v4, p1}, Landroid/service/notification/IConditionProvider;->onRequestConditions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error requesting conditions from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 545
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "provider":Landroid/service/notification/IConditionProvider;
    :cond_4
    return-void
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 446
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 447
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 455
    :cond_0
    return-object v3

    .line 448
    :cond_1
    array-length v0, p0

    .line 449
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 450
    aget-object v2, p0, v1

    .line 451
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 452
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveZenConfigLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 588
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 589
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_0

    .line 620
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v1, "automatic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ConditionProviders$ConditionRecord;>;"
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 593
    .local v2, "automaticN":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 594
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 595
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v6, :cond_1

    .line 596
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 599
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 600
    iput-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 601
    iput-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 612
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    .line 613
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    .line 615
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    .line 616
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->silentExitConditionComponent:Landroid/content/ComponentName;

    .line 618
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting zen config to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0

    .line 603
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 604
    .local v0, "N":I
    new-array v6, v0, [Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 605
    new-array v6, v0, [Landroid/net/Uri;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 606
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    .line 607
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 608
    .restart local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    iget-object v7, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    aput-object v7, v6, v4

    .line 609
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    iget-object v7, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    aput-object v7, v6, v4

    .line 606
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private setAutomaticZenModeConditions([Landroid/net/Uri;Z)V
    .locals 9
    .param p1, "conditionIds"    # [Landroid/net/Uri;
    .param p2, "save"    # Z

    .prologue
    .line 463
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAutomaticZenModeConditions "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 466
    :try_start_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    .line 467
    .local v4, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 468
    .local v0, "N":I
    const/4 v2, 0x0

    .line 469
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 470
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 471
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 472
    .local v1, "automatic":Z
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    .line 474
    invoke-direct {p0, v5}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 475
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const/4 v2, 0x1

    .line 469
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 463
    .end local v0    # "N":I
    .end local v1    # "automatic":Z
    .end local v2    # "changed":Z
    .end local v3    # "i":I
    .end local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 477
    .restart local v0    # "N":I
    .restart local v1    # "automatic":Z
    .restart local v2    # "changed":Z
    .restart local v3    # "i":I
    .restart local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .restart local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    :try_start_1
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v6, :cond_1

    if-nez v1, :cond_1

    .line 479
    invoke-direct {p0, v5}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 480
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    .line 481
    const/4 v2, 0x1

    goto :goto_2

    .line 484
    .end local v1    # "automatic":Z
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_4
    if-eqz p2, :cond_5

    if-eqz v2, :cond_5

    .line 485
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 487
    :cond_5
    monitor-exit v7

    .line 488
    return-void

    .line 487
    .end local v0    # "N":I
    .end local v2    # "changed":Z
    .end local v3    # "i":I
    .end local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 429
    iget-boolean v3, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 431
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 432
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    .line 434
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_1
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 442
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    move-object v2, v0

    goto :goto_0

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private unsubscribeForExit(Z)Z
    .locals 7
    .param p1, "autoChangeZenMode"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 720
    iput-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 721
    iput-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 722
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    sget-boolean v1, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v1, :cond_2

    .line 726
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v2, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 728
    .local v0, "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v1}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v2, "autoChangeZenMode"

    invoke-virtual {v1, v6, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 733
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 734
    const/4 p1, 0x1

    .line 735
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 736
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    const-string v3, "autoChangeZenMode"

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 745
    .end local v0    # "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 746
    return p1

    .line 737
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getLastSilentExitCondition()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v1, :cond_1

    .line 740
    const/4 p1, 0x1

    .line 741
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v2, "autoChangeZenModeForever"

    invoke-virtual {v1, v6, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    const-string v3, "autoChangeZenModeForever"

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unsubscribeForSilentExit(Z)Z
    .locals 4
    .param p1, "autoChangeZenMode"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 750
    iput-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    .line 751
    iput-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    .line 752
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v1, :cond_2

    .line 754
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v2, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 756
    .local v0, "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v2, "autoChangeZenMode"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 761
    iput-boolean v3, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 762
    const/4 p1, 0x1

    .line 763
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 764
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    const-string v3, "autoChangeZenMode"

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 773
    .end local v0    # "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 774
    return p1

    .line 765
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v1, :cond_1

    .line 768
    const/4 p1, 0x1

    .line 769
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v2, "autoChangeZenModeForever"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    const-string v3, "autoChangeZenModeForever"

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 506
    iget-boolean v3, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsubscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 508
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 509
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    .line 511
    :try_start_0
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_1
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 518
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unsubscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    move-object v2, v0

    goto :goto_0

    .line 517
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateZenModeCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 7
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "conditionComponent"    # Landroid/content/ComponentName;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 671
    .local v1, "mode":I
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 672
    if-nez p1, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    if-ne v1, v5, :cond_2

    .line 674
    :cond_1
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 675
    iput-object p2, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 676
    const/4 v0, 0x1

    .line 679
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 680
    if-nez p1, :cond_3

    if-ne v1, v5, :cond_4

    :cond_3
    if-ne v1, v6, :cond_5

    .line 682
    :cond_4
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    .line 683
    iput-object p2, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    .line 684
    const/4 v0, 0x1

    .line 687
    :cond_5
    if-eqz v0, :cond_6

    .line 688
    invoke-static {p1, p2, p3}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 691
    :cond_6
    return-void
.end method

.method private validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v3, 0x0

    .line 265
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_2

    :cond_0
    move-object p2, v3

    .line 286
    .end local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_1
    :goto_0
    return-object p2

    .line 266
    .restart local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_2
    array-length v0, p2

    .line 267
    .local v0, "N":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 268
    .local v4, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 269
    aget-object v5, p2, v1

    iget-object v2, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 270
    .local v2, "id":Landroid/net/Uri;
    invoke-static {v2, p1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 271
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for invalid id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_3
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 275
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for duplicate id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 278
    :cond_4
    aget-object v5, p2, v1

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 280
    .end local v2    # "id":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_6

    move-object p2, v3

    goto :goto_0

    .line 281
    :cond_6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 282
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    new-array v3, v5, [Landroid/service/notification/Condition;

    .line 283
    .local v3, "rt":[Landroid/service/notification/Condition;
    const/4 v1, 0x0

    :goto_3
    array-length v5, v3

    if-ge v1, v5, :cond_7

    .line 284
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Condition;

    aput-object v5, v3, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move-object p2, v3

    .line 286
    goto/16 :goto_0
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 142
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 2
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 107
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 108
    if-nez p2, :cond_0

    .line 109
    :try_start_0
    const-string v3, "    mListeners("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 111
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_0
    const-string v3, "    mRecords("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 117
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_2

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_2
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "countdownDesc":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 121
    const-string v3, "        ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 124
    .end local v0    # "countdownDesc":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    const-string v3, "    mSystemConditionProviders: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 126
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    if-eqz v3, :cond_4

    .line 127
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/CountdownConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v3, :cond_5

    .line 130
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/DowntimeConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 132
    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    if-eqz v3, :cond_6

    .line 133
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NextAlarmConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 135
    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v3, :cond_7

    .line 136
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NextAlarmTracker;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 138
    :cond_7
    return-void
.end method

.method public getAutomaticZenModeConditions()[Landroid/service/notification/Condition;
    .locals 6

    .prologue
    .line 491
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 492
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 493
    .local v0, "N":I
    const/4 v3, 0x0

    .line 494
    .local v3, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 495
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 496
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_1

    .line 497
    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .restart local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    :cond_0
    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    if-nez v3, :cond_3

    sget-object v4, Lcom/android/server/notification/ConditionProviders;->NO_CONDITIONS:[Landroid/service/notification/Condition;

    :goto_1
    monitor-exit v5

    return-object v4

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/Condition;

    goto :goto_1

    .line 502
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 95
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 96
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 97
    const-string v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 98
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 99
    const-string v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 100
    const v1, 0x1040563

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 101
    return-object v0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 17
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v14

    .line 304
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "notifyConditions pkg="

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " info="

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " conditions="

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez p3, :cond_2

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p3

    .line 307
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v13, v0

    if-nez v13, :cond_3

    :cond_1
    monitor-exit v14

    .line 369
    :goto_1
    return-void

    .line 304
    :cond_2
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    goto :goto_0

    .line 308
    :cond_3
    move-object/from16 v0, p3

    array-length v3, v0

    .line 309
    .local v3, "N":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/notification/IConditionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .local v10, "listener":Landroid/service/notification/IConditionListener;
    :try_start_1
    move-object/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/service/notification/IConditionListener;->onConditionsReceived([Landroid/service/notification/Condition;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 312
    :catch_0
    move-exception v6

    .line 313
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error sending conditions to listener "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 368
    .end local v3    # "N":I
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "listener":Landroid/service/notification/IConditionListener;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 316
    .restart local v3    # "N":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_13

    .line 317
    :try_start_3
    aget-object v4, p3, v8

    .line 318
    .local v4, "c":Landroid/service/notification/Condition;
    iget-object v13, v4, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v12

    .line 319
    .local v12, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v11, v12, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 320
    .local v11, "oldCondition":Landroid/service/notification/Condition;
    if-eqz v11, :cond_b

    invoke-virtual {v11, v4}, Landroid/service/notification/Condition;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const/4 v5, 0x1

    .line 321
    .local v5, "conditionUpdate":Z
    :goto_4
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 322
    iput-object v4, v12, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 324
    iget-boolean v13, v12, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v13, :cond_7

    .line 325
    iget v13, v4, Landroid/service/notification/Condition;->state:I

    if-eqz v13, :cond_5

    iget v13, v4, Landroid/service/notification/Condition;->state:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_e

    .line 326
    :cond_5
    iget v13, v4, Landroid/service/notification/Condition;->state:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_c

    const/4 v7, 0x1

    .line 327
    .local v7, "failed":Z
    :goto_5
    if-eqz v7, :cond_d

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exit zen: manual condition failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_6
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ConditionProviders;->onManualConditionClearing()V

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v8, v1}, Lcom/android/server/notification/ConditionProviders;->changeZenMode(II[Landroid/service/notification/Condition;)V

    .line 342
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 343
    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 351
    .end local v7    # "failed":Z
    :cond_7
    :goto_7
    iget-boolean v13, v12, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v13, :cond_a

    .line 352
    iget v13, v4, Landroid/service/notification/Condition;->state:I

    if-eqz v13, :cond_8

    iget v13, v4, Landroid/service/notification/Condition;->state:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_12

    .line 353
    :cond_8
    iget v13, v4, Landroid/service/notification/Condition;->state:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_10

    const/4 v7, 0x1

    .line 354
    .restart local v7    # "failed":Z
    :goto_8
    if-eqz v7, :cond_11

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exit zen: automatic condition failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v15, 0x0

    const-string v16, "automaticConditionExit"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 316
    .end local v7    # "failed":Z
    :cond_a
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 320
    .end local v5    # "conditionUpdate":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 326
    .restart local v5    # "conditionUpdate":Z
    :cond_c
    const/4 v7, 0x0

    goto :goto_5

    .line 329
    .restart local v7    # "failed":Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v13, :cond_6

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exit zen: manual condition false: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 344
    .end local v7    # "failed":Z
    :cond_e
    iget v13, v4, Landroid/service/notification/Condition;->state:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_7

    if-eqz v5, :cond_7

    .line 345
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current condition updated, still true. old="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " new="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_f
    const-string v13, "conditionUpdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 353
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 356
    .restart local v7    # "failed":Z
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v13, :cond_9

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exit zen: automatic condition false: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 361
    .end local v7    # "failed":Z
    :cond_12
    iget v13, v4, Landroid/service/notification/Condition;->state:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_a

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Enter zen: automatic condition true: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v15, 0x1

    const-string v16, "automaticConditionEnter"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 368
    .end local v4    # "c":Landroid/service/notification/Condition;
    .end local v5    # "conditionUpdate":Z
    .end local v11    # "oldCondition":Landroid/service/notification/Condition;
    .end local v12    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_13
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 148
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0}, Lcom/android/server/notification/NextAlarmTracker;->init()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/CountdownConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NextAlarmConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/NextAlarmConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NextAlarmConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 166
    :cond_3
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v8, 0x1

    .line 178
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v3

    .line 180
    .local v3, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_0
    invoke-interface {v3}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 185
    :try_start_1
    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v5, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 193
    .local v2, "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 194
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 199
    .end local v2    # "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_0
    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v5, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 203
    .restart local v2    # "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 204
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 208
    .end local v2    # "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 209
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 210
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 211
    .local v4, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 209
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_3
    iput-object p1, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 214
    iget-boolean v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v5, :cond_2

    .line 215
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    goto :goto_2

    .line 218
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_5
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    return-void

    .line 181
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 238
    :cond_0
    return-void

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 226
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    :cond_2
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v2, :cond_3

    .line 229
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->onManualConditionClearing()V

    .line 230
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "manualServiceRemoved"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 232
    :cond_3
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v2, :cond_4

    .line 234
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "automaticServiceRemoved"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onUserSwitched()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onUserSwitched()V

    .line 171
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0}, Lcom/android/server/notification/NextAlarmTracker;->onUserSwitched()V

    .line 174
    :cond_0
    return-void
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 4
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestZenModeConditions callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " relevance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    if-nez p1, :cond_1

    monitor-exit v1

    .line 262
    :goto_0
    return-void

    .line 251
    :cond_1
    and-int/lit8 p2, p2, 0x3

    .line 252
    if-eqz p2, :cond_3

    .line 253
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-direct {p0, p2}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V

    .line 261
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 256
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setAutomaticZenModeConditions([Landroid/net/Uri;)V
    .locals 1
    .param p1, "conditionIds"    # [Landroid/net/Uri;

    .prologue
    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 460
    return-void
.end method

.method public setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V
    .locals 10
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 382
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setZenModeCondition "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, "conditionComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    .line 386
    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    if-eqz v8, :cond_1

    iget-object v8, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 387
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v8}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    sget-object v9, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/service/notification/Condition;Landroid/service/notification/IConditionProvider;Landroid/content/ComponentName;)V

    .line 390
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v8, :cond_2

    iget-object v8, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 391
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v8}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    sget-object v9, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/service/notification/Condition;Landroid/service/notification/IConditionProvider;Landroid/content/ComponentName;)V

    .line 395
    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 396
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 397
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 398
    .local v4, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p1, :cond_5

    iget-object v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    iget-object v9, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v5

    .line 399
    .local v3, "idEqual":Z
    :goto_1
    iget-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v8, :cond_6

    if-nez v3, :cond_6

    .line 401
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 402
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 408
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 409
    iget-object v1, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    .line 396
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "idEqual":Z
    :cond_5
    move v3, v6

    .line 398
    goto :goto_1

    .line 403
    .restart local v3    # "idEqual":Z
    :cond_6
    if-eqz v3, :cond_3

    iget-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-nez v8, :cond_3

    .line 405
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 406
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    goto :goto_2

    .line 425
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "idEqual":Z
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 423
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_7
    :try_start_1
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/notification/ConditionProviders;->updateZenModeCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 425
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    return-void
.end method
