.class public final Lcn/nubia/server/ApplicationManagerService;
.super Lcn/nubia/server/NubiaSystemService;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/ApplicationManagerService$ApplicationManagerStub;
    }
.end annotation


# static fields
.field private static final DATA_SCHEME:Ljava/lang/String; = "package"

.field private static final DATA_SSP:Ljava/lang/String; = "cn.nubia.security2"

.field public static final TAG:Ljava/lang/String; = "ApplicationManagerService"


# instance fields
.field private mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

.field private mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

.field private mCABCController:Lcn/nubia/server/appmgmt/CABCController;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

.field private mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

.field private final mStub:Lcn/nubia/server/ApplicationManagerService$ApplicationManagerStub;

.field private mSyncController:Lcn/nubia/server/appmgmt/SyncController;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationManagerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    .line 111
    new-instance v0, Lcn/nubia/server/ApplicationManagerService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/ApplicationManagerService$1;-><init>(Lcn/nubia/server/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcn/nubia/server/ApplicationManagerService$ApplicationManagerStub;

    invoke-direct {v0, p0}, Lcn/nubia/server/ApplicationManagerService$ApplicationManagerStub;-><init>(Lcn/nubia/server/ApplicationManagerService;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mStub:Lcn/nubia/server/ApplicationManagerService$ApplicationManagerStub;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/ApplicationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/server/ApplicationManagerService;->updateAllControllersData()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/ApplicationManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/ApplicationManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/ApplicationManagerService;->dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private createAllControllers()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController;

    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationPushController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 85
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;

    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 86
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController;

    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/CABCController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    .line 87
    new-instance v0, Lcn/nubia/server/appmgmt/SyncController;

    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/SyncController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    .line 88
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 89
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .line 90
    new-instance v0, Lcn/nubia/server/appmgmt/MotionDozeController;

    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/MotionDozeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mMotionDozeController:Lcn/nubia/server/appmgmt/MotionDozeController;

    .line 91
    return-void
.end method

.method private dumpApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 262
    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump meminfo from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void

    .line 270
    :cond_1
    const/4 v1, 0x0

    .line 271
    .local v1, "opti":I
    :cond_2
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 272
    aget-object v0, p3, v1

    .line 273
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 276
    add-int/lit8 v1, v1, 0x1

    .line 277
    const-string v2, "-list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-direct {p0, p2}, Lcn/nubia/server/ApplicationManagerService;->dumpListArray(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 279
    :cond_3
    const-string v2, "-debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    invoke-direct {p0, p2}, Lcn/nubia/server/ApplicationManagerService;->dumpDebug(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method private dumpDebug(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 307
    sget-boolean v0, Lcn/nubia/server/ApplicationManagerConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "ApplicationManagerService has already set to debug status"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/ApplicationManagerConfig;->DEBUG:Z

    .line 311
    const-string v0, "set to debug successful,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dumpListArray(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 286
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mSyncController:Lcn/nubia/server/appmgmt/SyncController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SyncController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_4

    .line 299
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 301
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->dumpListArray(Ljava/io/PrintWriter;)V

    .line 304
    :cond_5
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    const-string v1, "cn.nubia.security2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 126
    iget-object v1, p0, Lcn/nubia/server/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/ApplicationManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method private updateAllControllersData()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPushController:Lcn/nubia/server/appmgmt/ApplicationPushController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->updateNubiaData()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mPowerController:Lcn/nubia/server/appmgmt/ApplicationPowerController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->updateNubiaData()V

    .line 100
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mCABCController:Lcn/nubia/server/appmgmt/CABCController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/CABCController;->updateNubiaData()V

    .line 103
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAlarmWakeupController:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->updateNubiaData()V

    .line 106
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mAppNetworkController:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->updateNubiaData()V

    .line 109
    :cond_4
    return-void
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/server/ApplicationManagerService;->mStub:Lcn/nubia/server/ApplicationManagerService$ApplicationManagerStub;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "nubia.application.manager"

    return-object v0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->getBuildType()I

    move-result v0

    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->INTERNATIONAL_BUILD:I

    if-ne v0, v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/ApplicationManagerService;->createAllControllers()V

    .line 75
    invoke-direct {p0}, Lcn/nubia/server/ApplicationManagerService;->registerReceiver()V

    goto :goto_0
.end method
