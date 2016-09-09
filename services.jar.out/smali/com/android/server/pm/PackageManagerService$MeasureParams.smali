.class Lcom/android/server/pm/PackageManagerService$MeasureParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureParams"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mStats:Landroid/content/pm/PackageStats;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageStats;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 2
    .param p2, "stats"    # Landroid/content/pm/PackageStats;
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .prologue
    .line 9309
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9310
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p2, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 9311
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    .line 9312
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    .line 9313
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .prologue
    .line 9384
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    if-eqz v1, :cond_0

    .line 9386
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9391
    :cond_0
    :goto_0
    return-void

    .line 9387
    :catch_0
    move-exception v0

    .line 9388
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceError()V
    .locals 3

    .prologue
    .line 9395
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not measure application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v2, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " external storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9397
    return-void
.end method

.method handleStartCopy()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9324
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 9325
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v6, v6, Landroid/content/pm/PackageStats;->userHandle:I

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    .line 9326
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9328
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    if-eqz v3, :cond_0

    .line 9330
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9331
    const/4 v0, 0x1

    .line 9338
    .local v0, "mounted":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 9339
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v3, v3, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 9342
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    sget-boolean v3, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v3, :cond_4

    .line 9343
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppOpsInternal:Lcom/android/server/AppOpsInternal;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/AppOpsInternal;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v7, v7, Landroid/content/pm/PackageStats;->extUserHandle:I

    invoke-interface {v6, v7}, Lcom/android/server/AppOpsInternal;->getInstanceId(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;I)[Ljava/io/File;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 9347
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppOpsInternal:Lcom/android/server/AppOpsInternal;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/AppOpsInternal;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v7, v7, Landroid/content/pm/PackageStats;->extUserHandle:I

    invoke-interface {v6, v7}, Lcom/android/server/AppOpsInternal;->getInstanceId(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;I)[Ljava/io/File;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 9352
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v6, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 9354
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppOpsInternal:Lcom/android/server/AppOpsInternal;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/AppOpsInternal;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v7, v7, Landroid/content/pm/PackageStats;->extUserHandle:I

    invoke-interface {v6, v7}, Lcom/android/server/AppOpsInternal;->getInstanceId(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;I)[Ljava/io/File;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 9358
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppOpsInternal:Lcom/android/server/AppOpsInternal;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/AppOpsInternal;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v7, v7, Landroid/content/pm/PackageStats;->extUserHandle:I

    invoke-interface {v6, v7}, Lcom/android/server/AppOpsInternal;->getInstanceId(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;I)[Ljava/io/File;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 9380
    .end local v0    # "mounted":Z
    .end local v2    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_0
    :goto_1
    return-void

    .line 9326
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 9333
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 9334
    .local v1, "status":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "mounted":Z
    :goto_2
    goto/16 :goto_0

    .end local v0    # "mounted":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 9362
    .end local v1    # "status":Ljava/lang/String;
    .restart local v0    # "mounted":Z
    .restart local v2    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 9365
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 9369
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v6, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 9371
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 9374
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->calculateDirectorySize(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalObbSize:J

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasureParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v1, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
