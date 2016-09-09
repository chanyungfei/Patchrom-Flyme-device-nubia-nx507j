.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x2000000L

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LAST_SPACE_FILE:Ljava/lang/String; = "/data/system/last_space"

.field private static final LAST_SPACE_SIZE:J = 0x500000L

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field public static final SMARTSHOW_MANAGER_SERVICE:Ljava/lang/String; = "com.powermo.smartshow.frameworks.SmartShowManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field SmartShowManagerInit:Ljava/lang/reflect/Method;

.field SmartShowManagerService:Ljava/lang/Class;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field mSmartShowManager:Ljava/lang/Object;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object v0, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    .line 136
    iput-object v0, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    .line 137
    iput-object v0, p0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    .line 268
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 127
    invoke-static {}, Lcom/android/server/SystemServer;->createLastSpaceFile()V

    return-void
.end method

.method private static createLastSpaceFile()V
    .locals 6

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/last_space"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    new-instance v1, Lcom/android/server/SystemServer$1;

    const-string v2, "lastspace-create"

    invoke-direct {v1, v2}, Lcom/android/server/SystemServer$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemServer$1;->start()V

    .line 263
    :cond_1
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 395
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 396
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 397
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 398
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 203
    const-string v1, "sys.android.reboot"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "androidRebootFlag":Ljava/lang/String;
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys.android.reboot flag  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "SystemServer"

    const-string v2, "Android SystemServer reboot"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v1, "SystemServer"

    const-string v2, "About to start catchreboot service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v1, "ctl.start"

    const-string v2, "catchreboot"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    invoke-static {}, Lcom/android/server/SystemServer;->removeLastSpaceFile()V

    .line 214
    new-instance v1, Lcom/android/server/SystemServer;

    invoke-direct {v1}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v1}, Lcom/android/server/SystemServer;->run()V

    .line 215
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 378
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 384
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 385
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 392
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 387
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private static removeLastSpaceFile()V
    .locals 8

    .prologue
    .line 219
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v2

    .line 221
    .local v2, "free":J
    const-wide/32 v4, 0x2000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 222
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemServer data free="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/system/last_space"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemServer delete lastspace size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 229
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 373
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 277
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 282
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 292
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 297
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 298
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$2;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 307
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 311
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 315
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 319
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 322
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 325
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 327
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 328
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 331
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 336
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 339
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 342
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 343
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 347
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 348
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 350
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startNubiaServicesAtFirst()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 354
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startNubiaServicesAtLast()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 369
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :catch_0
    move-exception v6

    .line 357
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 411
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 414
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v4, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v4, :cond_0

    .line 415
    const-string v4, "SystemServer"

    const-string v7, "Load SmartShowManager"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v7, "com.powermo.smartshow.frameworks.SmartShowManagerService"

    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    .line 418
    iget-object v4, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 419
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 420
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    .line 421
    const-string v7, "SmartShowManager"

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    const/4 v8, 0x1

    invoke-static {v7, v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 433
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 434
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 440
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 444
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 448
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService;

    iput-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 451
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 454
    const-string v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "cryptState":Ljava/lang/String;
    const-string v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 456
    const-string v4, "SystemServer"

    const-string v7, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 464
    :cond_1
    :goto_1
    const-string v4, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v7, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 467
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 468
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 470
    const-string v4, "SystemServer"

    const-string v5, "User Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v4, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 474
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 477
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 478
    return-void

    .line 422
    .end local v0    # "cryptState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "System"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load SmartShowManager: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    .line 425
    invoke-static {}, Landroid/util/PowerMoConfig;->reset()V

    goto/16 :goto_0

    .line 458
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_2
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    const-string v4, "SystemServer"

    const-string v7, "Device encrypted - only parsing core apps"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_1

    :cond_3
    move v4, v6

    .line 465
    goto :goto_2
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 488
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 491
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 492
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 495
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 498
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 499
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1410
    const/4 v4, 0x0

    .line 1411
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1412
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 1415
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1418
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1419
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1421
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1423
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1424
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1425
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1434
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1427
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1428
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1431
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1432
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startNubiaServicesAtFirst()V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcn/nubia/server/NubiaServer;->startServicesAtFirst(Landroid/content/Context;Lcom/android/server/SystemServiceManager;)V

    .line 1439
    return-void
.end method

.method private startNubiaServicesAtLast()V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcn/nubia/server/NubiaServer;->startServicesAtLast(Landroid/content/Context;Lcom/android/server/SystemServiceManager;)V

    .line 1443
    return-void
.end method

.method private startOtherServices()V
    .locals 114

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 507
    .local v4, "context":Landroid/content/Context;
    const/16 v33, 0x0

    .line 508
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v49, 0x0

    .line 509
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    const/16 v104, 0x0

    .line 510
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    const/16 v35, 0x0

    .line 511
    .local v35, "alarm":Landroid/app/IAlarmManager;
    const/16 v84, 0x0

    .line 512
    .local v84, "mountService":Lcom/android/server/MountService;
    const/4 v8, 0x0

    .line 513
    .local v8, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v7, 0x0

    .line 514
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v86, 0x0

    .line 515
    .local v86, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v45, 0x0

    .line 516
    .local v45, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v87, 0x0

    .line 517
    .local v87, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v96, 0x0

    .line 518
    .local v96, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v113, 0x0

    .line 519
    .local v113, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v40, 0x0

    .line 520
    .local v40, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v103, 0x0

    .line 521
    .local v103, "usb":Lcom/android/server/usb/UsbService;
    const/16 v94, 0x0

    .line 522
    .local v94, "serial":Lcom/android/server/SerialService;
    const/16 v90, 0x0

    .line 523
    .local v90, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v42, 0x0

    .line 524
    .local v42, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v72, 0x0

    .line 525
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v99, 0x0

    .line 526
    .local v99, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v47, 0x0

    .line 527
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v38, 0x0

    .line 528
    .local v38, "audioService":Landroid/media/AudioService;
    const/16 v83, 0x0

    .line 531
    .local v83, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v68, 0x0

    .line 534
    .local v68, "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    const-string v5, "config.disable_storage"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 535
    .local v64, "disableStorage":Z
    const-string v5, "config.disable_media"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 536
    .local v60, "disableMedia":Z
    const-string v5, "config.disable_bluetooth"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 537
    .local v58, "disableBluetooth":Z
    const-string v5, "config.disable_telephony"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    .line 538
    .local v66, "disableTelephony":Z
    const-string v5, "config.disable_location"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 539
    .local v59, "disableLocation":Z
    const-string v5, "config.disable_systemui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 540
    .local v65, "disableSystemUI":Z
    const-string v5, "config.disable_noncore"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 541
    .local v63, "disableNonCoreServices":Z
    const-string v5, "config.disable_network"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 542
    .local v61, "disableNetwork":Z
    const-string v5, "config.disable_networktime"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 543
    .local v62, "disableNetworkTime":Z
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    .line 544
    .local v74, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v53

    .line 546
    .local v53, "digitalPenCapable":Z
    const-string v5, "config.disable_atlas"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 549
    .local v57, "disableAtlas":Z
    :try_start_0
    const-string v5, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 552
    const-string v5, "SystemServer"

    const-string v6, "Scheduling Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v5, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 557
    const-string v5, "SystemServer"

    const-string v6, "Telephony Registry"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v100, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_41

    .line 559
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v100, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v5, "telephony.registry"

    move-object/from16 v0, v100

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 561
    const-string v5, "SystemServer"

    const-string v6, "Entropy Mixer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v5, "entropy"

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 564
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 569
    :try_start_2
    const-string v5, "SystemServer"

    const-string v6, "Account Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v34, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 571
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v5, "account"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_42

    move-object/from16 v33, v34

    .line 576
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v5, "SystemServer"

    const-string v6, "Content Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    const/4 v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v49

    .line 580
    const-string v5, "SystemServer"

    const-string v6, "System Content Providers"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 583
    const-string v5, "SystemServer"

    const-string v6, "Vibrator Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v105, Lcom/android/server/VibratorService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 585
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v105, "vibrator":Lcom/android/server/VibratorService;
    :try_start_5
    const-string v5, "vibrator"

    move-object/from16 v0, v105

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 587
    const-string v5, "SystemServer"

    const-string v6, "Consumer IR Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v48, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_43

    .line 589
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_6
    const-string v5, "consumer_ir"

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 592
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v35

    .line 595
    const-string v5, "SystemServer"

    const-string v6, "Init Watchdog"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v109

    .line 597
    .local v109, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v109

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 599
    const-string v5, "SystemServer"

    const-string v6, "Input Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v73, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_44

    .line 602
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_7
    const-string v5, "SystemServer"

    const-string v6, "Window Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_29

    const/4 v5, 0x1

    move v6, v5

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v5, :cond_2a

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v73

    invoke-static {v4, v0, v6, v5, v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v113

    .line 606
    const-string v5, "window"

    move-object/from16 v0, v113

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 607
    const-string v5, "input"

    move-object/from16 v0, v73

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 610
    sget-boolean v5, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    if-nez v5, :cond_0

    .line 612
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    const-string v6, "init"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/android/server/am/ActivityManagerService;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Lcom/android/server/wm/WindowManagerService;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-class v11, Lcom/android/server/display/DisplayManagerService;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    .line 614
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v113, v9, v10

    const/4 v10, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 621
    :cond_0
    :goto_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v113

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 623
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    move-object/from16 v0, v73

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 624
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/input/InputManagerService;->start()V

    .line 627
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 628
    const-string v5, "SystemServer"

    const-string v6, "Edge Pointer Event Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v69, Lcn/nubia/server/edge/EdgePointerEventService;

    move-object/from16 v0, v69

    move-object/from16 v1, v113

    move-object/from16 v2, v73

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/server/edge/EdgePointerEventService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    .line 630
    .end local v68    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .local v69, "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    :try_start_a
    const-string v5, "nubia.edge.touch"

    move-object/from16 v0, v69

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_45

    move-object/from16 v68, v69

    .line 635
    .end local v69    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v68    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    :cond_1
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 640
    if-eqz v74, :cond_2b

    .line 641
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooh Service (emulator)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    :goto_5
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .line 659
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :goto_6
    const/16 v97, 0x0

    .line 660
    .local v97, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v92, 0x0

    .line 661
    .local v92, "notification":Landroid/app/INotificationManager;
    const/16 v70, 0x0

    .line 662
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v107, 0x0

    .line 663
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v76, 0x0

    .line 664
    .local v76, "location":Lcom/android/server/LocationManagerService;
    const/16 v50, 0x0

    .line 665
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v101, 0x0

    .line 666
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v78, 0x0

    .line 667
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v36, 0x0

    .line 668
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v80, 0x0

    .line 671
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 675
    :try_start_c
    const-string v5, "SystemServer"

    const-string v6, "Input Method Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v71, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v71

    move-object/from16 v1, v113

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 677
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string v5, "input_method"

    move-object/from16 v0, v71

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_40

    move-object/from16 v70, v71

    .line 683
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_e
    const-string v5, "SystemServer"

    const-string v6, "Accessibility Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v5, "accessibility"

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 693
    :cond_2
    :goto_8
    :try_start_f
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 698
    :goto_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 699
    if-nez v64, :cond_3

    const-string v5, "0"

    const-string v6, "system_init.startmountservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 706
    :try_start_10
    const-string v5, "SystemServer"

    const-string v6, "Mount Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v85, Lcom/android/server/MountService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 708
    .end local v84    # "mountService":Lcom/android/server/MountService;
    .local v85, "mountService":Lcom/android/server/MountService;
    :try_start_11
    const-string v5, "mount"

    move-object/from16 v0, v85

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3f

    move-object/from16 v84, v85

    .line 716
    .end local v85    # "mountService":Lcom/android/server/MountService;
    .restart local v84    # "mountService":Lcom/android/server/MountService;
    :cond_3
    :goto_a
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 722
    :goto_b
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x10404af

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v5, v6, v9}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_3e

    .line 729
    :goto_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_32

    .line 730
    if-nez v63, :cond_5

    .line 732
    :try_start_14
    const-string v5, "SystemServer"

    const-string v6, "LockSettingsService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v79, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 734
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_15
    const-string v5, "lock_settings"

    move-object/from16 v0, v79

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3d

    move-object/from16 v78, v79

    .line 739
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_d
    const-string v5, "ro.frp.pst"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 740
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 745
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 748
    :cond_5
    if-nez v65, :cond_6

    .line 750
    :try_start_16
    const-string v5, "SystemServer"

    const-string v6, "Status Bar"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v98, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v113

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 752
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v98, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_17
    const-string v5, "statusbar"

    move-object/from16 v0, v98

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3c

    move-object/from16 v97, v98

    .line 758
    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_e
    if-nez v63, :cond_7

    .line 760
    :try_start_18
    const-string v5, "SystemServer"

    const-string v6, "Clipboard Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v5, "clipboard"

    new-instance v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 768
    :cond_7
    :goto_f
    if-nez v61, :cond_8

    .line 770
    :try_start_19
    const-string v5, "SystemServer"

    const-string v6, "NetworkManagement Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v8

    .line 772
    const-string v5, "network_management"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    .line 778
    :cond_8
    :goto_10
    if-nez v63, :cond_9

    .line 780
    :try_start_1a
    const-string v5, "SystemServer"

    const-string v6, "Text Service Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v102, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .line 782
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v102, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1b
    const-string v5, "textservices"

    move-object/from16 v0, v102

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3b

    move-object/from16 v101, v102

    .line 788
    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_11
    if-nez v61, :cond_31

    .line 790
    :try_start_1c
    const-string v5, "SystemServer"

    const-string v6, "Network Score Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v88, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 792
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v88, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1d
    const-string v5, "network_score"

    move-object/from16 v0, v88

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3a

    move-object/from16 v87, v88

    .line 798
    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_12
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v6, "NetworkStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v89, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v89

    move-object/from16 v1, v35

    invoke-direct {v0, v4, v8, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .line 800
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v89, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1f
    const-string v5, "netstats"

    move-object/from16 v0, v89

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_39

    move-object/from16 v7, v89

    .line 806
    .end local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_13
    :try_start_20
    const-string v5, "SystemServer"

    const-string v6, "NetworkPolicy Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Landroid/os/IPowerManager;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 811
    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_21
    const-string v5, "netpolicy"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_38

    .line 816
    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 817
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 818
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 821
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.RttService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 823
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.ethernet"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 824
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 828
    :cond_a
    :try_start_22
    const-string v5, "SystemServer"

    const-string v6, "Connectivity Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v46, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v8, v7, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 831
    .end local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v46, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_23
    const-string v5, "connectivity"

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 832
    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 833
    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_37

    move-object/from16 v45, v46

    .line 839
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_15
    :try_start_24
    const-string v5, "SystemServer"

    const-string v6, "Network Service Discovery Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v96

    .line 841
    const-string v5, "servicediscovery"

    move-object/from16 v0, v96

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 847
    :goto_16
    :try_start_25
    const-string v5, "SystemServer"

    const-string v6, "DPM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-static {v4}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 854
    :goto_17
    if-nez v63, :cond_b

    .line 856
    :try_start_26
    const-string v5, "SystemServer"

    const-string v6, "UpdateLock Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v5, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 869
    :cond_b
    :goto_18
    if-eqz v84, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_c

    .line 870
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 874
    :cond_c
    if-eqz v33, :cond_d

    .line 875
    :try_start_27
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15

    .line 881
    :cond_d
    :goto_19
    if-eqz v49, :cond_e

    .line 882
    :try_start_28
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_16

    .line 887
    :cond_e
    :goto_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 888
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v92

    .line 890
    move-object/from16 v0, v92

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 894
    if-nez v59, :cond_f

    .line 896
    :try_start_29
    const-string v5, "SystemServer"

    const-string v6, "Location Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v77, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17

    .line 898
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .local v77, "location":Lcom/android/server/LocationManagerService;
    :try_start_2a
    const-string v5, "location"

    move-object/from16 v0, v77

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_36

    move-object/from16 v76, v77

    .line 904
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    :goto_1b
    :try_start_2b
    const-string v5, "SystemServer"

    const-string v6, "Country Detector"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v51, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_18

    .line 906
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2c
    const-string v5, "country_detector"

    move-object/from16 v0, v51

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_35

    move-object/from16 v50, v51

    .line 912
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_1c
    if-nez v63, :cond_10

    .line 914
    :try_start_2d
    const-string v5, "SystemServer"

    const-string v6, "Search Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v5, "search"

    new-instance v6, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_19

    .line 923
    :cond_10
    :goto_1d
    :try_start_2e
    const-string v5, "SystemServer"

    const-string v6, "DropBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v5, "dropbox"

    new-instance v6, Lcom/android/server/DropBoxManagerService;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/dropbox"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v9}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1a

    .line 930
    :goto_1e
    if-nez v63, :cond_11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 933
    :try_start_2f
    const-string v5, "SystemServer"

    const-string v6, "Wallpaper Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    new-instance v108, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1b

    .line 935
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v108, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_30
    const-string v5, "wallpaper"

    move-object/from16 v0, v108

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_34

    move-object/from16 v107, v108

    .line 941
    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_11
    :goto_1f
    if-nez v60, :cond_12

    const-string v5, "0"

    const-string v6, "system_init.startaudioservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 943
    :try_start_31
    const-string v5, "SystemServer"

    const-string v6, "Audio Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v39, Landroid/media/AudioService;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1c

    .line 945
    .end local v38    # "audioService":Landroid/media/AudioService;
    .local v39, "audioService":Landroid/media/AudioService;
    :try_start_32
    const-string v5, "audio"

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_33

    move-object/from16 v38, v39

    .line 951
    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v38    # "audioService":Landroid/media/AudioService;
    :cond_12
    :goto_20
    if-nez v63, :cond_13

    .line 952
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 955
    :cond_13
    if-nez v60, :cond_14

    .line 957
    :try_start_33
    const-string v5, "SystemServer"

    const-string v6, "Wired Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v5, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v72

    invoke-direct {v5, v4, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1d

    .line 966
    :cond_14
    :goto_21
    if-nez v63, :cond_17

    .line 967
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.host"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 971
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 975
    :cond_16
    :try_start_34
    const-string v5, "SystemServer"

    const-string v6, "Serial Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v95, Lcom/android/server/SerialService;

    move-object/from16 v0, v95

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .line 978
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .local v95, "serial":Lcom/android/server/SerialService;
    :try_start_35
    const-string v5, "serial"

    move-object/from16 v0, v95

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_32

    move-object/from16 v94, v95

    .line 984
    .end local v95    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    :cond_17
    :goto_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 986
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 988
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 990
    if-nez v63, :cond_1a

    .line 991
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 992
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 995
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 996
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 999
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.voice_recognizers"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1005
    :cond_1a
    :try_start_36
    const-string v5, "SystemServer"

    const-string v6, "DiskStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v5, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1f

    .line 1016
    :goto_23
    :try_start_37
    const-string v5, "SystemServer"

    const-string v6, "SamplingProfiler Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string v5, "samplingprofiler"

    new-instance v6, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v6, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_20

    .line 1023
    :goto_24
    if-nez v61, :cond_1b

    if-nez v62, :cond_1b

    .line 1025
    :try_start_38
    const-string v5, "SystemServer"

    const-string v6, "NetworkTimeUpdateService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v91, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .end local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v91, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v90, v91

    .line 1032
    .end local v91    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_25
    if-nez v60, :cond_1c

    .line 1034
    :try_start_39
    const-string v5, "SystemServer"

    const-string v6, "CommonTimeManagementService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v43, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 1036
    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3a
    const-string v5, "commontime_management"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_31

    move-object/from16 v42, v43

    .line 1042
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1c
    :goto_26
    if-nez v61, :cond_1d

    .line 1044
    :try_start_3b
    const-string v5, "SystemServer"

    const-string v6, "CertBlacklister"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v5, Lcom/android/server/CertBlacklister;

    invoke-direct {v5, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_23

    .line 1051
    :cond_1d
    :goto_27
    if-nez v63, :cond_1e

    .line 1053
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1056
    :cond_1e
    if-nez v63, :cond_1f

    if-nez v57, :cond_1f

    .line 1058
    :try_start_3c
    const-string v5, "SystemServer"

    const-string v6, "Assets Atlas Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance v37, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_24

    .line 1060
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3d
    const-string v5, "assetatlas"

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_30

    move-object/from16 v36, v37

    .line 1066
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1f
    :goto_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.print"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1067
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.print.PrintManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1070
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1072
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1074
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.hdmi.cec"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1075
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1078
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.live_tv"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1079
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1082
    :cond_22
    if-nez v63, :cond_23

    .line 1084
    :try_start_3e
    const-string v5, "SystemServer"

    const-string v6, "Media Router Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    new-instance v81, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 1086
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3f
    const-string v5, "media_router"

    move-object/from16 v0, v81

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2f

    move-object/from16 v80, v81

    .line 1091
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1093
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1096
    :try_start_40
    const-string v5, "SystemServer"

    const-string v6, "BackgroundDexOptService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .line 1104
    :cond_23
    :goto_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1106
    const-string v5, "ro.bluetooth.wipower"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v75

    .line 1108
    .local v75, "isWipowerEnabled":Z
    if-eqz v75, :cond_2f

    .line 1110
    :try_start_41
    const-string v32, "wbc_service"

    .line 1111
    .local v32, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v5, "SystemServer"

    const-string v6, "WipowerBatteryControl Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v111, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v111

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1116
    .local v111, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v111

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v110

    .line 1117
    .local v110, "wbcClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v110

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    .line 1118
    .local v52, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v112

    .line 1119
    .local v112, "wbcObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded WbcService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v5, "wbc_service"

    check-cast v112, Landroid/os/IBinder;

    .end local v112    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v112

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27

    .line 1128
    .end local v32    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v52    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v110    # "wbcClass":Ljava/lang/Class;
    .end local v111    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_2b
    if-eqz v53, :cond_24

    .line 1130
    :try_start_42
    const-string v5, "SystemServer"

    const-string v6, "Digital Pen Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v55, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1134
    .local v55, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v54

    .line 1136
    .local v54, "digitalPenClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    .line 1137
    .restart local v52    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .line 1138
    .local v56, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded DigitalPenService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string v5, "DigitalPen"

    check-cast v56, Landroid/os/IBinder;

    .end local v56    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v56

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 1146
    .end local v52    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v54    # "digitalPenClass":Ljava/lang/Class;
    .end local v55    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    .end local v75    # "isWipowerEnabled":Z
    :cond_24
    :goto_2c
    if-nez v63, :cond_25

    .line 1147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1152
    :cond_25
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v93

    .line 1153
    .local v93, "safeMode":Z
    if-eqz v93, :cond_30

    .line 1154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1156
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1163
    :goto_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v83

    .end local v83    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v83, Lcom/android/server/MmsServiceBroker;

    .line 1168
    .restart local v83    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_43
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    .line 1173
    :goto_2e
    if-eqz v78, :cond_26

    .line 1175
    :try_start_44
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .line 1182
    :cond_26
    :goto_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1187
    :try_start_45
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    .line 1192
    :goto_30
    if-eqz v93, :cond_27

    .line 1193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1199
    :cond_27
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v44

    .line 1200
    .local v44, "config":Landroid/content/res/Configuration;
    new-instance v82, Landroid/util/DisplayMetrics;

    invoke-direct/range {v82 .. v82}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1201
    .local v82, "metrics":Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/view/WindowManager;

    .line 1202
    .local v106, "w":Landroid/view/WindowManager;
    invoke-interface/range {v106 .. v106}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, v82

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1203
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v44

    move-object/from16 v1, v82

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1207
    :try_start_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2c

    .line 1213
    :goto_31
    :try_start_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2d

    .line 1220
    :goto_32
    :try_start_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v93

    invoke-virtual {v5, v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    .line 1226
    :goto_33
    move-object/from16 v12, v84

    .line 1227
    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v8

    .line 1228
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v7

    .line 1229
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v3

    .line 1230
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v45

    .line 1231
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v87

    .line 1232
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v107

    .line 1233
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v70

    .line 1234
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v76

    .line 1235
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v50

    .line 1236
    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v90

    .line 1237
    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v42

    .line 1238
    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v101

    .line 1239
    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v97

    .line 1240
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v36

    .line 1241
    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v72

    .line 1242
    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v99

    .line 1243
    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v80

    .line 1244
    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v38

    .line 1245
    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v31, v83

    .line 1252
    .local v31, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/SystemServer$3;

    move-object/from16 v10, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v31}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1391
    return-void

    .line 572
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v82    # "metrics":Landroid/util/DisplayMetrics;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    .end local v93    # "safeMode":Z
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v106    # "w":Landroid/view/WindowManager;
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v67

    .line 573
    .local v67, "e":Ljava/lang/Throwable;
    :goto_34
    :try_start_49
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Account Manager"

    move-object/from16 v0, v67

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_1

    goto/16 :goto_0

    .line 654
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v67

    move-object/from16 v99, v100

    .line 655
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v67, "e":Ljava/lang/RuntimeException;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_35
    const-string v5, "System"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v5, "System"

    const-string v6, "************ Failure starting core service"

    move-object/from16 v0, v67

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 577
    .end local v67    # "e":Ljava/lang/RuntimeException;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 603
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "watchdog":Lcom/android/server/Watchdog;
    :cond_29
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_2

    :cond_2a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 615
    :catch_2
    move-exception v67

    .line 616
    .local v67, "e":Ljava/lang/Throwable;
    :try_start_4a
    const-string v5, "failed to init smartshow"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 654
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v67

    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_35

    .line 642
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    .line 643
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (factory test)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 644
    :cond_2c
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 646
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 647
    :cond_2d
    if-eqz v58, :cond_2e

    .line 648
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Service disabled by config"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 650
    :cond_2e
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v41, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_3

    .line 652
    .end local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v41, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_4b
    const-string v5, "bluetooth_manager"

    move-object/from16 v0, v41

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_46

    move-object/from16 v40, v41

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_5

    .line 678
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v92    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4
    move-exception v67

    .line 679
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string v5, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 686
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v67

    .line 687
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 694
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v67

    .line 695
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 709
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v67

    .line 710
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v5, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 717
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v67

    .line 718
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 735
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v67

    .line 736
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v5, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 753
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v67

    .line 754
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v5, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 763
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v67

    .line 764
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 773
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v67

    .line 774
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 783
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v67

    .line 784
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v5, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 793
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v67

    .line 794
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v5, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 801
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v67

    .line 802
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v5, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 812
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v67

    move-object/from16 v3, v86

    .line 813
    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v5, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 834
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v67

    .line 835
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v5, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 843
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v67

    .line 844
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 849
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v67

    .line 850
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 859
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v67

    .line 860
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 876
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v67

    .line 877
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 883
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v67

    .line 884
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 899
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v67

    .line 900
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v5, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 907
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v67

    .line 908
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v5, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 917
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v67

    .line 918
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 926
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v67

    .line 927
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 936
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v67

    .line 937
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v5, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 946
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v67

    .line 947
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v5, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 961
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v67

    .line 962
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 979
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v67

    .line 980
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SerialService"

    move-object/from16 v0, v67

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 1007
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v67

    .line 1008
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1019
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v67

    .line 1020
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1027
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v67

    .line 1028
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1037
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v67

    .line 1038
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v5, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1046
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v67

    .line 1047
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1061
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v67

    .line 1062
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v5, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1087
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v67

    .line 1088
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v5, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1098
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v67

    .line 1099
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1121
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v75    # "isWipowerEnabled":Z
    :catch_27
    move-exception v67

    .line 1122
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1125
    .end local v67    # "e":Ljava/lang/Throwable;
    :cond_2f
    const-string v5, "SystemServer"

    const-string v6, "Wipower not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1140
    :catch_28
    move-exception v67

    .line 1141
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1159
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v75    # "isWipowerEnabled":Z
    .restart local v93    # "safeMode":Z
    :cond_30
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2d

    .line 1169
    :catch_29
    move-exception v67

    .line 1170
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1176
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v67

    .line 1177
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1188
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v67

    .line 1189
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1208
    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v44    # "config":Landroid/content/res/Configuration;
    .restart local v82    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v106    # "w":Landroid/view/WindowManager;
    :catch_2c
    move-exception v67

    .line 1209
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1214
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v67

    .line 1215
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1221
    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v67

    .line 1222
    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v5, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1087
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v82    # "metrics":Landroid/util/DisplayMetrics;
    .end local v93    # "safeMode":Z
    .end local v106    # "w":Landroid/view/WindowManager;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2f
    move-exception v67

    move-object/from16 v80, v81

    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_46

    .line 1061
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_30
    move-exception v67

    move-object/from16 v36, v37

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_45

    .line 1037
    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_31
    move-exception v67

    move-object/from16 v42, v43

    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_44

    .line 979
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .restart local v95    # "serial":Lcom/android/server/SerialService;
    :catch_32
    move-exception v67

    move-object/from16 v94, v95

    .end local v95    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_43

    .line 946
    .end local v38    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    :catch_33
    move-exception v67

    move-object/from16 v38, v39

    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v38    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_42

    .line 936
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_34
    move-exception v67

    move-object/from16 v107, v108

    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_41

    .line 907
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_35
    move-exception v67

    move-object/from16 v50, v51

    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_40

    .line 899
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    :catch_36
    move-exception v67

    move-object/from16 v76, v77

    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3f

    .line 834
    .end local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_37
    move-exception v67

    move-object/from16 v45, v46

    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3e

    .line 812
    :catch_38
    move-exception v67

    goto/16 :goto_3d

    .line 801
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_39
    move-exception v67

    move-object/from16 v7, v89

    .end local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3c

    .line 793
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3a
    move-exception v67

    move-object/from16 v87, v88

    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3b

    .line 783
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3b
    move-exception v67

    move-object/from16 v101, v102

    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3a

    .line 753
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3c
    move-exception v67

    move-object/from16 v97, v98

    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_39

    .line 735
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3d
    move-exception v67

    move-object/from16 v78, v79

    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_38

    .line 726
    :catch_3e
    move-exception v5

    goto/16 :goto_c

    .line 709
    .end local v84    # "mountService":Lcom/android/server/MountService;
    .restart local v85    # "mountService":Lcom/android/server/MountService;
    :catch_3f
    move-exception v67

    move-object/from16 v84, v85

    .end local v85    # "mountService":Lcom/android/server/MountService;
    .restart local v84    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_37

    .line 678
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_40
    move-exception v67

    move-object/from16 v70, v71

    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_36

    .line 654
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_41
    move-exception v67

    goto/16 :goto_35

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_42
    move-exception v67

    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_43
    move-exception v67

    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_44
    move-exception v67

    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v68    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v69    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "watchdog":Lcom/android/server/Watchdog;
    :catch_45
    move-exception v67

    move-object/from16 v68, v69

    .end local v69    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v68    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_46
    move-exception v67

    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v41

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .line 572
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_47
    move-exception v67

    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v92    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_31
    move-object/from16 v3, v86

    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_17

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_32
    move-object/from16 v3, v86

    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2c
.end method

.method static final startPresetPackageInstall(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1403
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.presetpackageinstaller"

    const-string v3, "cn.nubia.presetpackageinstaller.PresetPackageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1405
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1406
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1395
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1398
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1399
    return-void
.end method
