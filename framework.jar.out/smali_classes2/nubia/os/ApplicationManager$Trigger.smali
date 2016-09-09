.class public Lnubia/os/ApplicationManager$Trigger;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trigger"
.end annotation


# static fields
.field private static sService:Lnubia/os/IApplicationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 320
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allow3rdPartyPushImpl(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$200(Lnubia/os/IApplicationManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowBackgroundSyncToRun()Z
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 381
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowBackgroundSyncToRunImpl(Lnubia/os/IApplicationManager;)Z
    invoke-static {v0}, Lnubia/os/ApplicationManager;->access$1400(Lnubia/os/IApplicationManager;)Z

    move-result v0

    return v0
.end method

.method public static allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 324
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 325
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowDeliverPendingNonWakeupAlarmInScreenOffImpl(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$300(Lnubia/os/IApplicationManager;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public static allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 310
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowPartialWakelockImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$000(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 315
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->allowWakeupAlarmImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$100(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static ensureService()V
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    if-nez v0, :cond_0

    .line 303
    const-string v0, "nubia.application.manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IApplicationManager;

    move-result-object v0

    sput-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    .line 306
    :cond_0
    return-void
.end method

.method public static isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 391
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isControlledByMotionDozeImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$1600(Lnubia/os/IApplicationManager;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNetworkBlocked(II)Z
    .locals 1
    .param p0, "networkType"    # I
    .param p1, "uid"    # I

    .prologue
    .line 385
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 386
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->isNetworkBlockedImpl(Lnubia/os/IApplicationManager;II)Z
    invoke-static {v0, p0, p1}, Lnubia/os/ApplicationManager;->access$1500(Lnubia/os/IApplicationManager;II)Z

    move-result v0

    return v0
.end method

.method public static noteActivityStackRemoved(I)V
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 355
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 356
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteActivityStackRemovedImpl(Lnubia/os/IApplicationManager;I)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$900(Lnubia/os/IApplicationManager;I)V

    .line 357
    return-void
.end method

.method public static noteAppTransitionAnimation(Z)V
    .locals 1
    .param p0, "execute"    # Z

    .prologue
    .line 365
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 366
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteAppTransitionAnimationImpl(Lnubia/os/IApplicationManager;Z)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1100(Lnubia/os/IApplicationManager;Z)V

    .line 367
    return-void
.end method

.method public static noteMagicBookAnimation(Z)V
    .locals 1
    .param p0, "execute"    # Z

    .prologue
    .line 375
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 376
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteMagicBookAnimationImpl(Lnubia/os/IApplicationManager;Z)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1300(Lnubia/os/IApplicationManager;Z)V

    .line 377
    return-void
.end method

.method public static notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 336
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->notePausingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$500(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public static noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 351
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteRemovingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2}, Lnubia/os/ApplicationManager;->access$800(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public static noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 361
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteResumedAppDieImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$1000(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public static noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "isHomeActivity"    # Z

    .prologue
    .line 330
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 331
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    # invokes: Lnubia/os/ApplicationManager;->noteResumingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lnubia/os/ApplicationManager;->access$400(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 332
    return-void
.end method

.method public static noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 346
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteStartingProcessImpl(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$700(Lnubia/os/IApplicationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static noteStatusBarExpanding(Z)V
    .locals 1
    .param p0, "expanding"    # Z

    .prologue
    .line 370
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 371
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteStatusBarExpandingImpl(Lnubia/os/IApplicationManager;Z)V
    invoke-static {v0, p0}, Lnubia/os/ApplicationManager;->access$1200(Lnubia/os/IApplicationManager;Z)V

    .line 372
    return-void
.end method

.method public static noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->ensureService()V

    .line 341
    sget-object v0, Lnubia/os/ApplicationManager$Trigger;->sService:Lnubia/os/IApplicationManager;

    # invokes: Lnubia/os/ApplicationManager;->noteStoppingActivityImpl(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p0, p1, p2, p3}, Lnubia/os/ApplicationManager;->access$600(Lnubia/os/IApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method
