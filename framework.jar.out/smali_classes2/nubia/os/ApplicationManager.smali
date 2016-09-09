.class public Lnubia/os/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/ApplicationManager$Trigger;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field private static sDumpDebugLog:Z


# instance fields
.field private final mService:Lnubia/os/IApplicationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lnubia/os/IApplicationManager;)V
    .locals 0
    .param p1, "service"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$1200(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$1300(Lnubia/os/IApplicationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteMagicBookAnimationImpl(Lnubia/os/IApplicationManager;Z)V

    return-void
.end method

.method static synthetic access$1400(Lnubia/os/IApplicationManager;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 11
    invoke-static {p0}, Lnubia/os/ApplicationManager;->allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lnubia/os/IApplicationManager;II)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->isNetworkBlockedImpl(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Lnubia/os/ApplicationManager;->allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 11
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .prologue
    .line 11
    invoke-static/range {p0 .. p5}, Lnubia/os/ApplicationManager;->noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->noteRemovingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lnubia/os/IApplicationManager;I)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/IApplicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 11
    invoke-static {p0, p1}, Lnubia/os/ApplicationManager;->noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V

    return-void
.end method

.method private static allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p0, :cond_0

    .line 116
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;

    .prologue
    .line 260
    if-eqz p0, :cond_0

    .line 262
    :try_start_0
    invoke-interface {p0}, Lnubia/os/IApplicationManager;->allowBackgroundSyncToRun()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    :goto_0
    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 128
    if-eqz p0, :cond_0

    .line 130
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowPartialWakelock(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 103
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->allowWakeupAlarm(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 286
    if-eqz p0, :cond_0

    .line 288
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->isControlledByMotionDoze(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 295
    :goto_0
    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 291
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNetworkBlockedImpl(Lnubia/os/IApplicationManager;II)Z
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 273
    if-eqz p0, :cond_0

    .line 275
    :try_start_0
    invoke-interface {p0, p1, p2}, Lnubia/os/IApplicationManager;->isNetworkBlocked(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 282
    :goto_0
    return v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "stackId"    # I

    .prologue
    .line 204
    if-eqz p0, :cond_0

    .line 206
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteActivityStackRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "execute"    # Z

    .prologue
    .line 227
    if-eqz p0, :cond_0

    .line 229
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteAppTransitionAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteMagicBookAnimationImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "execute"    # Z

    .prologue
    .line 249
    if-eqz p0, :cond_0

    .line 251
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteMagicBookAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 157
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteRemovingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 194
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lnubia/os/IApplicationManager;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 216
    if-eqz p0, :cond_0

    .line 218
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    .line 143
    if-eqz p0, :cond_0

    .line 145
    :try_start_0
    invoke-interface/range {p0 .. p5}, Lnubia/os/IApplicationManager;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 180
    if-eqz p0, :cond_0

    .line 182
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "expanding"    # Z

    .prologue
    .line 238
    if-eqz p0, :cond_0

    .line 240
    :try_start_0
    invoke-interface {p0, p1}, Lnubia/os/IApplicationManager;->noteStatusBarExpanding(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 243
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Lnubia/os/IApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 167
    if-eqz p0, :cond_0

    .line 169
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lnubia/os/IApplicationManager;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lnubia/os/ApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "ApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowBackgroundSyncToRun()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0}, Lnubia/os/ApplicationManager;->allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 33
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkBlocked(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2}, Lnubia/os/ApplicationManager;->isNetworkBlockedImpl(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method public noteActivityStackRemoved(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V

    .line 58
    return-void
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 1
    .param p1, "execute"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V

    .line 66
    return-void
.end method

.method public noteMagicBookAnimation(Z)V
    .locals 1
    .param p1, "execute"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteMagicBookAnimationImpl(Lnubia/os/IApplicationManager;Z)V

    .line 74
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3}, Lnubia/os/ApplicationManager;->noteRemovingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 1
    .param p1, "expanding"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1}, Lnubia/os/ApplicationManager;->noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V

    .line 70
    return-void
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lnubia/os/ApplicationManager;->mService:Lnubia/os/IApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Lnubia/os/ApplicationManager;->noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
