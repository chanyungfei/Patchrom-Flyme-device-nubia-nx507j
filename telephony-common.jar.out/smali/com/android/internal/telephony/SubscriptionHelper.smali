.class Lcom/android/internal/telephony/SubscriptionHelper;
.super Landroid/os/Handler;
.source "SubscriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;
    }
.end annotation


# static fields
.field private static final APM_SIM_NOT_PWDN_PROPERTY:Ljava/lang/String; = "persist.radio.apm_sim_not_pwdn"

.field private static final EVENT_REFRESH:I = 0x2

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubHelper"

.field private static final SUBSCRIPTION_INDEX_INVALID:I = -0x1

.field public static final SUB_INIT_STATE:I = -0x1

.field private static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static final SUB_SETUICC_FAILED:Ljava/lang/String; = "SETUICC FAILED"

.field private static final SUB_SETUICC_SUCCESS:Ljava/lang/String; = "SETUICC SUCCESS"

.field public static final SUB_SET_UICC_FAIL:I = -0x64

.field public static final SUB_SIM_NOT_INSERTED:I = -0x63

.field private static mNwModeUpdated:Z

.field private static final sApmSIMNotPwdn:Z

.field private static sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

.field private static sNumPhones:I

.field private static sTriggerDds:Z


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mSubStatus:[I

.field private final nwModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    sput-boolean v1, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 71
    const-string v2, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    .line 80
    sput-boolean v1, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    return-void

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    new-instance v2, Lcom/android/internal/telephony/SubscriptionHelper$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper$1;-><init>(Lcom/android/internal/telephony/SubscriptionHelper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->nwModeObserver:Landroid/database/ContentObserver;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    .line 124
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 127
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 129
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionHelper;->nwModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriptionHelper init by Context, num phones = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ApmSIMNotPwdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwModesInSubIdTable(Z)V

    return-void
.end method

.method private broadcastSetUiccResult(III)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "newSubState"    # I
    .param p3, "result"    # I

    .prologue
    .line 406
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v1

    .line 407
    .local v1, "subId":[I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, p1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 410
    const-string v2, "operationResult"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string v2, "newSubState"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 413
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    .line 114
    const-string v0, "SubHelper"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 102
    const-class v1, Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    .line 108
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-exit v1

    return-object v0

    .line 106
    :cond_0
    const-string v0, "SubHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v0, "SubHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 478
    const-string v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method private processDualApplicationsSetUiccSuccess(II[II)V
    .locals 3
    .param p1, "newSubState"    # I
    .param p2, "subStatus"    # I
    .param p3, "subId"    # [I
    .param p4, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 527
    .local v0, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    if-eq p1, p2, :cond_0

    .line 528
    aget v1, p3, v2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    .line 530
    :cond_0
    invoke-direct {p0, p4, p1, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(III)V

    .line 531
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput p1, v1, p4

    .line 532
    return-void
.end method

.method private processSetUiccError(ILcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;II)Z
    .locals 6
    .param p1, "appIndexId"    # I
    .param p2, "uiccSubsParams"    # Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;
    .param p3, "slotId"    # I
    .param p4, "newSubState"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0x64

    const/4 v3, -0x1

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "done":Z
    iget v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppId:I

    if-ne p1, v1, :cond_0

    .line 486
    const-string v1, "SETUICC FAILED"

    iput-object v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    .line 488
    :cond_0
    iget v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2Id:I

    if-ne p1, v1, :cond_1

    .line 489
    const-string v1, "SETUICC FAILED"

    iput-object v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    .line 491
    :cond_1
    iget v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppId:I

    if-eq v1, v3, :cond_2

    iget v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2Id:I

    if-ne v1, v3, :cond_4

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v4, v1, p3

    .line 495
    invoke-direct {p0, p3, p4, v5}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(III)V

    .line 496
    const/4 v0, 0x1

    .line 509
    :cond_3
    :goto_0
    return v0

    .line 497
    :cond_4
    iget-object v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v2, "SETUICC FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v2, "SETUICC FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 500
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v4, v1, p3

    .line 501
    invoke-direct {p0, p3, p4, v5}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(III)V

    .line 502
    const/4 v0, 0x1

    goto :goto_0

    .line 503
    :cond_5
    iget v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppId:I

    if-eq v1, v3, :cond_3

    iget v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2Id:I

    if-eq v1, v3, :cond_3

    iget-object v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v2, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p2, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v2, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 299
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    .line 300
    .local v7, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 305
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;

    .line 306
    .local v4, "mUiccSubsParams":Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;
    iget v6, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->slotId:I

    .line 307
    .local v6, "slotId":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 309
    .local v0, "appIndexId":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 310
    .local v5, "newSubState":I
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v8

    .line 312
    .local v8, "subId":[I
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    .line 323
    invoke-direct {p0, v0, v4, v6, v5}, Lcom/android/internal/telephony/SubscriptionHelper;->processSetUiccError(ILcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;II)Z

    move-result v2

    .line 324
    .local v2, "done":Z
    if-eqz v2, :cond_3

    .line 386
    .end local v2    # "done":Z
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppId:I

    if-ne v0, v10, :cond_2

    .line 332
    const-string v10, "SETUICC SUCCESS"

    iput-object v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    .line 334
    :cond_2
    iget v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2Id:I

    if-ne v0, v10, :cond_3

    .line 335
    const-string v10, "SETUICC SUCCESS"

    iput-object v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    .line 338
    :cond_3
    iget v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppId:I

    if-eq v10, v11, :cond_5

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2Id:I

    if-eq v10, v11, :cond_5

    iget-object v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v11, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v11, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 342
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GLOBAL in SET_UICC_SUBSCRIPTION to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " slotId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , but one cardApplication doesn\'t come back ,wait"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_5
    aget v10, v8, v12

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v9

    .line 361
    .local v9, "subStatus":I
    iget-object v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    const-string v11, "SETUICC FAILED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, v4, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    const-string v11, "SETUICC FAILED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 363
    :cond_6
    invoke-direct {p0, v5, v9, v8, v6}, Lcom/android/internal/telephony/SubscriptionHelper;->processSingleApplicationSetUiccFailed(II[II)V

    .line 369
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->isAllSubsAvailable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 370
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received all subs, now update user preferred subs, slotid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " newSubState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sTriggerDds = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 376
    const-string v10, "persist.radio.primarycard"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 378
    .local v3, "isPrimarySubFeatureEnable":Z
    if-nez v3, :cond_9

    .line 379
    new-array v10, v13, [Z

    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    aput-boolean v11, v10, v12

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs([Z)V

    .line 384
    :cond_7
    :goto_2
    sput-boolean v12, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    goto/16 :goto_0

    .line 365
    .end local v3    # "isPrimarySubFeatureEnable":Z
    :cond_8
    invoke-direct {p0, v5, v9, v8, v6}, Lcom/android/internal/telephony/SubscriptionHelper;->processDualApplicationsSetUiccSuccess(II[II)V

    goto :goto_1

    .line 380
    .restart local v3    # "isPrimarySubFeatureEnable":Z
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 381
    const/4 v10, 0x2

    new-array v10, v10, [Z

    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    aput-boolean v11, v10, v12

    aput-boolean v12, v10, v13

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs([Z)V

    goto :goto_2
.end method

.method private processSimRefresh(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 389
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 390
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 391
    .local v0, "index":Ljava/lang/Integer;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 392
    .restart local v0    # "index":Ljava/lang/Integer;
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 393
    .local v1, "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Received SIM refresh, reset sub state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old sub state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refreshResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 396
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 403
    .end local v0    # "index":Ljava/lang/Integer;
    .end local v1    # "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    const-string v2, "processSimRefresh received without input"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSingleApplicationSetUiccFailed(II[II)V
    .locals 3
    .param p1, "newSubState"    # I
    .param p2, "subStatus"    # I
    .param p3, "subId"    # [I
    .param p4, "slotId"    # I

    .prologue
    .line 514
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 515
    .local v0, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    if-eq p1, p2, :cond_0

    .line 517
    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    .line 520
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p4, p1, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(III)V

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/16 v2, -0x64

    aput v2, v1, p4

    .line 522
    return-void
.end method

.method private updateNwModesInSubIdTable(Z)V
    .locals 9
    .param p1, "override"    # Z

    .prologue
    const/4 v8, 0x0

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 141
    .local v4, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v6, :cond_2

    .line 142
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 143
    .local v5, "subIdList":[I
    if-eqz v5, :cond_1

    aget v6, v5, v8

    if-lez v6, :cond_1

    .line 146
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    .local v1, "nwModeInDb":I
    :goto_1
    aget v6, v5, v8

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v2

    .line 154
    .local v2, "nwModeinSubIdTable":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNwModesInSubIdTable: nwModeinSubIdTable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nwModeInDb: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 159
    if-nez p1, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 160
    :cond_0
    aget v6, v5, v8

    invoke-virtual {v4, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 141
    .end local v1    # "nwModeInDb":I
    .end local v2    # "nwModeinSubIdTable":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v3

    .line 149
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings Exception Reading Value At Index["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Settings.Global.PREFERRED_NETWORK_MODE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    .line 151
    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .restart local v1    # "nwModeInDb":I
    goto :goto_1

    .line 164
    .end local v1    # "nwModeInDb":I
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .end local v5    # "subIdList":[I
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 170
    :pswitch_0
    const-string v0, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->processSetUiccSubscriptionDone(Landroid/os/Message;)V

    goto :goto_0

    .line 174
    :pswitch_1
    const-string v0, "EVENT_REFRESH"

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->processSimRefresh(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAllSubsAvailable()Z
    .locals 4

    .prologue
    .line 559
    const/4 v0, 0x1

    .line 561
    .local v0, "allSubsAvailable":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 561
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_1
    return v0
.end method

.method public isApmSIMNotPwdn()Z
    .locals 1

    .prologue
    .line 437
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    return v0
.end method

.method public isRadioAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isRadioOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    return v0
.end method

.method public needSubActivationAfterRefresh(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x1

    .line 183
    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public proceedToHandleIccEvent(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 441
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 446
    .local v0, "apmState":I
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 447
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " proceedToHandleIccEvent, radio off/unavailable, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v5, v3, p1

    .line 452
    :cond_1
    if-ne v0, v2, :cond_2

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    if-nez v3, :cond_2

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " proceedToHandleIccEvent, sApmSIMNotPwdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 466
    :goto_0
    return v1

    .line 459
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioAvailable(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " proceedToHandleIccEvent, radio not available, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v5, v2, p1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 466
    goto :goto_0
.end method

.method public setUiccSubscription(II)V
    .locals 12
    .param p1, "slotId"    # I
    .param p2, "subStatus"    # I

    .prologue
    const/4 v11, 0x1

    .line 247
    const/4 v9, 0x0

    .local v9, "set3GPPDone":Z
    const/4 v8, 0x0

    .line 248
    .local v8, "set3GPP2Done":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v10

    .line 249
    .local v10, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v10, :cond_1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiccSubscription: slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " card info not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void

    .line 255
    :cond_1
    new-instance v7, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;

    invoke-direct {v7, p1, p2}, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;-><init>(II)V

    .line 258
    .local v7, "mUiccSubsParams":Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 259
    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    .line 260
    .local v6, "appType":I
    if-nez v9, :cond_5

    const/4 v0, 0x2

    if-eq v6, v0, :cond_2

    if-ne v6, v11, :cond_5

    .line 268
    :cond_2
    iput v2, v7, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppId:I

    .line 269
    invoke-static {p0, v11, v2, p2, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 272
    .local v5, "msgSetUiccSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 273
    const/4 v9, 0x1

    .line 290
    .end local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    if-nez v8, :cond_0

    .line 258
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_5
    if-nez v8, :cond_3

    const/4 v0, 0x4

    if-eq v6, v0, :cond_6

    const/4 v0, 0x3

    if-ne v6, v0, :cond_3

    .line 282
    :cond_6
    iput v2, v7, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2Id:I

    .line 283
    invoke-static {p0, v11, v2, p2, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 286
    .restart local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 287
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public updateNwMode()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwModesInSubIdTable(Z)V

    .line 242
    invoke-static {}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getInstance()Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updatePrefNwTypeIfRequired()V

    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    .line 244
    return-void
.end method

.method public updateSubAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/16 v1, -0x63

    aput v1, v0, p1

    .line 556
    return-void
.end method

.method public updateSubActivation([IZ)V
    .locals 10
    .param p1, "simStatus"    # [I
    .param p2, "isStackReadyEvent"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 187
    const-string v6, "persist.radio.primarycard"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 189
    .local v0, "isPrimarySubFeatureEnable":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 190
    .local v3, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v1, 0x0

    .line 193
    .local v1, "setUiccSent":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 194
    sput-boolean v9, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 197
    :cond_0
    const/4 v2, 0x0

    .local v2, "slotId":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v2, v6, :cond_5

    .line 206
    aget v6, p1, v2

    const/16 v7, -0x63

    if-ne v6, v7, :cond_2

    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v7, p1, v2

    aput v7, v6, v2

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Sim not inserted in slot ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] simStatus= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 197
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->isSupportLtePlusC()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->isCdmaCardOnSub1(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->isSupportCDMA()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubAbsent(I)V

    .line 214
    const-string v6, " Cdma card on sub1"

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 219
    .local v4, "subId":[I
    aget v6, v4, v8

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v5

    .line 221
    .local v5, "subState":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUicc for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " prev subState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stackReady "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 224
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v6, v6, v2

    if-ne v6, v5, :cond_4

    if-eqz p2, :cond_1

    .line 227
    :cond_4
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    .line 228
    const/4 v1, 0x1

    goto :goto_1

    .line 233
    .end local v4    # "subId":[I
    .end local v5    # "subState":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->isAllSubsAvailable()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received all sim info, update user pref subs, triggerDds= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 235
    new-array v6, v9, [Z

    sget-boolean v7, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    aput-boolean v7, v6, v8

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs([Z)V

    .line 236
    sput-boolean v8, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 238
    :cond_6
    return-void
.end method
