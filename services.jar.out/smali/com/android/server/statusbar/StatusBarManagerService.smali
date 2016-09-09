.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled:I

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mLock:Ljava/lang/Object;

.field private mMenuVisible:Z

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mShowImeSwitcher:Z

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private mSystemUiVisibility:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v1}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 62
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 63
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled:I

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 67
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    .line 68
    iput-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    .line 69
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 104
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 92
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v2, 0x107000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    .line 98
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/statusbar/StatusBarManagerService;IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/notification/NotificationDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationDelegate;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method private disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 204
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 217
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(I)I

    move-result v0

    .line 218
    .local v0, "net":I
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled:I

    if-eq v0, v1, :cond_0

    .line 219
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled:I

    .line 221
    const-string v1, "StatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageDisableList userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->disable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private shouldUpdateStatusBarColor(ILjava/lang/String;)[I
    .locals 3
    .param p1, "color"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 724
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 725
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWmsFuncs()Lcom/android/server/wm/IWmSmartShowFuncs;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWmsFuncs()Lcom/android/server/wm/IWmSmartShowFuncs;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/IWmSmartShowFuncs;->shouldUpdateStatusBarColor(ILjava/lang/String;)[I

    move-result-object v0

    .line 731
    .end local v0    # "ret":[I
    :goto_0
    return-object v0

    .line 729
    .restart local v0    # "ret":[I
    :cond_0
    aput v2, v0, v2

    .line 730
    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method

.method private updateUiVisibilityLocked(II)V
    .locals 2
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 387
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 388
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    .line 389
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPreloadRecentApps()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearNotificationEffects()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 521
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    return-void

    .line 523
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public collapsePanels()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 176
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 198
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 697
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v4

    .line 706
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 707
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 710
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisabled=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 712
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 714
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 715
    .local v2, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] userId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " what=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 707
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 720
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1
    :try_start_3
    monitor-exit v4

    goto/16 :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public expandNotificationsPanel()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 164
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public expandSettingsPanel()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 188
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method gatherDisableActionsLocked(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 680
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 682
    .local v0, "N":I
    const/4 v2, 0x0

    .line 683
    .local v2, "net":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 684
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 685
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_0

    .line 686
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what:I

    or-int/2addr v2, v4

    .line 683
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    .end local v3    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1
    return v2
.end method

.method public hideRecentApps(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 645
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 646
    .local v0, "N":I
    const/4 v4, 0x0

    .line 648
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 649
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 650
    .local v3, "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p3, :cond_3

    iget v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v5, p1, :cond_3

    .line 651
    move-object v4, v3

    .line 655
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_4

    .line 656
    :cond_1
    if-eqz v4, :cond_2

    .line 657
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 658
    iget-object v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 676
    :cond_2
    :goto_1
    return-void

    .line 648
    .restart local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_4
    if-nez v4, :cond_5

    .line 662
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    .line 663
    .restart local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iput p1, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 665
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_5
    iput p2, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what:I

    .line 673
    iput-object p3, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 674
    iput-object p4, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_1

    .line 667
    :catch_0
    move-exception v1

    .line 668
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onClearAllNotifications(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 623
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 624
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 625
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 627
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    return-void

    .line 629
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationActionClick(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 555
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 556
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 558
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    return-void

    .line 561
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 585
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 586
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 588
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    return-void

    .line 590
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 542
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 543
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 545
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    return-void

    .line 547
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 570
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 571
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 574
    .local v10, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    return-void

    .line 577
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 613
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 618
    return-void

    .line 616
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "newlyVisibleKeys"    # [Ljava/lang/String;
    .param p2, "noLongerVisibleKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 600
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    return-void

    .line 603
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelHidden()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 532
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    return-void

    .line 534
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelRevealed(Z)V
    .locals 3
    .param p1, "clearNotificationEffects"    # Z

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    return-void

    .line 512
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preloadRecentApps()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    .locals 5
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 483
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 485
    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 487
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 488
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 489
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 491
    const/4 v2, 0x0

    :try_start_1
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(I)I

    move-result v4

    aput v4, p3, v2

    .line 492
    const/4 v2, 0x1

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    aput v4, p3, v2

    .line 493
    const/4 v4, 0x2

    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    aput v2, p3, v4

    .line 494
    const/4 v2, 0x3

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    aput v4, p3, v2

    .line 495
    const/4 v2, 0x4

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    aput v4, p3, v2

    .line 496
    const/4 v2, 0x5

    iget-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    if-eqz v4, :cond_1

    :goto_1
    aput v0, p3, v2

    .line 497
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    return-void

    .line 489
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    move v2, v1

    .line 493
    goto :goto_0

    :cond_1
    move v0, v1

    .line 496
    goto :goto_1

    .line 498
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 296
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 299
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 302
    .restart local v0    # "index":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 304
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 306
    :try_start_2
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    return-void

    .line 307
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 451
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 243
    iget-object v8, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v8

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    .line 245
    .local v7, "index":I
    if-gez v7, :cond_0

    .line 246
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status bar icon slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    .end local v7    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 249
    .restart local v7    # "index":I
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 253
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v7, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 257
    :try_start_2
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v7, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    return-void

    .line 258
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 268
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 270
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 271
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 274
    .restart local v1    # "index":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 275
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_1

    .line 276
    monitor-exit v3

    .line 290
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_2

    .line 280
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 282
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 284
    :try_start_2
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 348
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 352
    :try_start_0
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    .line 353
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    .line 354
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 355
    iput-boolean p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    .line 356
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    monitor-exit v6

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStatusBarIconsColor(ILjava/lang/String;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 740
    :try_start_0
    sget-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v1, :cond_2

    .line 741
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->shouldUpdateStatusBarColor(ILjava/lang/String;)[I

    move-result-object v0

    .line 742
    .local v0, "newColor":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    if-ltz v1, :cond_0

    .line 743
    const/4 v1, 0x0

    aget v1, v0, v1

    if-nez v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setStatusBarIconsColor(ILjava/lang/String;)V

    .line 755
    .end local v0    # "newColor":[I
    :cond_0
    :goto_0
    return-void

    .line 746
    .restart local v0    # "newColor":[I
    :cond_1
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/statusbar/IStatusBar;->setStatusBarIconsColor(ILjava/lang/String;)V

    goto :goto_0

    .line 753
    .end local v0    # "newColor":[I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 750
    :cond_2
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setStatusBarIconsColor(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .locals 4
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 376
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(II)V

    .line 378
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/high16 v2, 0x3ff0000

    and-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    invoke-direct {p0, v0, v2, v3, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowState(II)V
    .locals 1
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showRecentApps(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "menuVisible"    # Z

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 324
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    .line 326
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    monitor-exit v1

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
