.class public Lcom/android/internal/telephony/UiccSmsController;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "UiccSmsController.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UiccSmsController"

.field private static mFlowrateCheckedNumber:[Ljava/lang/String;

.field private static mIsFlowrateChecked:[Z

.field private static mTimer:[Ljava/util/Timer;


# instance fields
.field protected mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 497
    new-array v0, v1, [Z

    sput-object v0, Lcom/android/internal/telephony/UiccSmsController;->mIsFlowrateChecked:[Z

    .line 498
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/UiccSmsController;->mFlowrateCheckedNumber:[Ljava/lang/String;

    .line 499
    new-array v0, v1, [Ljava/util/Timer;

    sput-object v0, Lcom/android/internal/telephony/UiccSmsController;->mTimer:[Ljava/util/Timer;

    return-void
.end method

.method protected constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/UiccSmsController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 49
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "isms"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic access$000()[Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/telephony/UiccSmsController;->mIsFlowrateChecked:[Z

    return-object v0
.end method

.method private static declared-synchronized checkFlowrateChecked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 542
    const-class v2, Lcom/android/internal/telephony/UiccSmsController;

    monitor-enter v2

    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    .line 559
    :goto_0
    monitor-exit v2

    return-void

    .line 546
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/UiccSmsController;->mIsFlowrateChecked:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, p2

    .line 547
    sget-object v1, Lcom/android/internal/telephony/UiccSmsController;->mFlowrateCheckedNumber:[Ljava/lang/String;

    aput-object p1, v1, p2

    .line 549
    sget-object v1, Lcom/android/internal/telephony/UiccSmsController;->mTimer:[Ljava/util/Timer;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1

    .line 550
    sget-object v1, Lcom/android/internal/telephony/UiccSmsController;->mTimer:[Ljava/util/Timer;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 552
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/UiccSmsController;->mTimer:[Ljava/util/Timer;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    aput-object v3, v1, p2

    .line 553
    new-instance v0, Lcom/android/internal/telephony/UiccSmsController$1;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/UiccSmsController$1;-><init>(I)V

    .line 558
    .local v0, "task":Ljava/util/TimerTask;
    sget-object v1, Lcom/android/internal/telephony/UiccSmsController;->mTimer:[Ljava/util/Timer;

    aget-object v1, v1, p2

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 542
    .end local v0    # "task":Ljava/util/TimerTask;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getDefaultSmsSubId()I
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getFlowrateCheckedNumber(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    .line 530
    const-class v1, Lcom/android/internal/telephony/UiccSmsController;

    monitor-enter v1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 531
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/UiccSmsController;->mFlowrateCheckedNumber:[Ljava/lang/String;

    aget-object v0, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 383
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 385
    :cond_0
    const/4 v1, 0x0

    .line 389
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 398
    :goto_0
    return-object v2

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "RIL_UiccSmsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v3

    .line 394
    goto :goto_0

    .line 395
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "RIL_UiccSmsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v3

    .line 398
    goto :goto_0
.end method

.method public static declared-synchronized isFlowrateChecked(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    .line 506
    const-class v1, Lcom/android/internal/telephony/UiccSmsController;

    monitor-enter v1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 507
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/UiccSmsController;->mIsFlowrateChecked:[Z

    aget-boolean v0, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setFlowrateChecked(ZI)V
    .locals 2
    .param p0, "isFlowrateChecked"    # Z
    .param p1, "phoneId"    # I

    .prologue
    .line 517
    const-class v1, Lcom/android/internal/telephony/UiccSmsController;

    monitor-enter v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 518
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/UiccSmsController;->mIsFlowrateChecked:[Z

    aput-boolean p0, v0, p1

    .line 521
    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/UiccSmsController;->mTimer:[Ljava/util/Timer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 522
    sget-object v0, Lcom/android/internal/telephony/UiccSmsController;->mTimer:[Ljava/util/Timer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :cond_2
    monitor-exit v1

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/UiccSmsController;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 83
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 86
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastForSubscriber(III)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastForSubscriber(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 265
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(III)Z

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 268
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCellBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastForSubscriber(III)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastForSubscriber(III)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 235
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(III)Z

    move-result v1

    .line 241
    :goto_0
    return v1

    .line 238
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCellBroadcast iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 100
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 103
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllMessagesFromIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccSmsController;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 359
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    .line 364
    :goto_0
    return-object v1

    .line 362
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "getImsSmsFormat iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreferredSmsSubscription()I
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v0

    return v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 281
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 284
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "getPremiumSmsPermission iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmsCapacityOnIccForSubscriber(I)I
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 452
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsCapacityOnIcc()I

    move-result v1

    .line 456
    :goto_0
    return v1

    .line 455
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccSmsIntMgr is null for  subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSmscAddressFromIccForSubscriber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 464
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmscAddressFromIcc()Ljava/lang/String;

    move-result-object v1

    .line 468
    :goto_0
    return-object v1

    .line 467
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccSmsIntMgr is null for  subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectSmsPdu(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "pdu"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 375
    return-void
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 369
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/UiccSmsController;->injectSmsPdu(I[BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 370
    return-void
.end method

.method public isImsSmsSupported()Z
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccSmsController;->isImsSmsSupportedForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public isImsSmsSupportedForSubscriber(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 311
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    move-result v1

    .line 316
    :goto_0
    return v1

    .line 314
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "isImsSmsSupported iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmsSimPickActivityNeeded(I)Z
    .locals 11
    .param p1, "subId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 321
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    .local v0, "context":Landroid/content/Context;
    const-string v10, "phone"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 325
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 327
    .local v2, "identity":J
    :try_start_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 329
    .local v6, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    if-eqz v6, :cond_0

    .line 333
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 335
    .local v5, "subInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 336
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 337
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    if-ne v10, p1, :cond_1

    .line 349
    .end local v1    # "i":I
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subInfoLength":I
    :cond_0
    :goto_1
    return v8

    .line 329
    .end local v6    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 335
    .restart local v1    # "i":I
    .restart local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v5    # "subInfoLength":I
    .restart local v6    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    if-lez v5, :cond_0

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v10

    if-le v10, v9, :cond_0

    move v8, v9

    .line 345
    goto :goto_1
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/UiccSmsController;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 113
    return-void
.end method

.method public sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 119
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 120
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "origPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/UiccSmsController;->sendDataWithOrigPortUsingSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 133
    return-void
.end method

.method public sendDataWithOrigPortUsingSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "origPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 139
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 140
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextWithOrigPort iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccSmsController;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 191
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 192
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextWithOptionsUsingSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZI)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "isExpectMore"    # Z
    .param p10, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 205
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 206
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZI)V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextWithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendRegisterData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 489
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 490
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendRegisterData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 493
    :cond_0
    return-void
.end method

.method public sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 436
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 437
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "scAddress"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 423
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 424
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredText iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccSmsController;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 152
    return-void
.end method

.method public sendTextForFlowrate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 566
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    .line 568
    .local v8, "phoneId":I
    if-eqz v8, :cond_0

    const/4 v1, 0x1

    if-ne v8, v1, :cond_2

    .line 569
    :cond_0
    invoke-static {p2, p3, v8}, Lcom/android/internal/telephony/UiccSmsController;->checkFlowrateChecked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 570
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 571
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_1

    .line 572
    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 581
    .end local v0    # "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    :goto_0
    return-void

    .line 575
    .restart local v0    # "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    :cond_1
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    .end local v0    # "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    :cond_2
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 157
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 158
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextWithOptionsUsingSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "parts"    # Ljava/lang/String;
    .param p6, "sentIntents"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntents"    # Landroid/app/PendingIntent;
    .param p8, "priority"    # I
    .param p9, "isExpectMore"    # Z
    .param p10, "validityPeriod"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 171
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 172
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextWithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    .line 292
    return-void
.end method

.method public setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 297
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "setPremiumSmsPermission iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmscAddressToIccForSubscriber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "scAdress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 476
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setSmscAddressToIcc(Ljava/lang/String;)Z

    move-result v1

    .line 480
    :goto_0
    return v1

    .line 479
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccSmsIntMgr is null for  subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/UiccSmsController;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "status"    # I
    .param p5, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 65
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 68
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMessageOnIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method
