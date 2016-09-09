.class public Lcom/android/internal/telephony/ModemStackController;
.super Landroid/os/Handler;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;,
        Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    }
.end annotation


# static fields
.field private static final BIND_TO_STACK:I = 0x1

.field private static final CMD_DEACTIVATE_ALL_SUBS:I = 0x1

.field private static final CMD_TRIGGER_BIND:I = 0x5

.field private static final CMD_TRIGGER_UNBIND:I = 0x3

.field private static final DEFAULT_MAX_DATA_ALLOWED:I = 0x1

.field private static final EVENT_BIND_DONE:I = 0x6

.field private static final EVENT_GET_MODEM_CAPS_DONE:I = 0x2

.field private static final EVENT_MODEM_CAPABILITY_CHANGED:I = 0xa

.field private static final EVENT_RADIO_AVAILABLE:I = 0x9

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xb

.field private static final EVENT_SET_PREF_MODE_DONE:I = 0x7

.field private static final EVENT_SUB_DEACTIVATED:I = 0x8

.field private static final EVENT_UNBIND_DONE:I = 0x4

.field private static final FAILURE:I = 0x0

.field private static final GET_MODEM_CAPS_BUFFER_LEN:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "ModemStackController"

.field private static final PRIMARY_STACK_ID:I = 0x0

.field private static final STATE_BIND:I = 0x5

.field private static final STATE_GOT_MODEM_CAPS:I = 0x2

.field private static final STATE_SET_PREF_MODE:I = 0x7

.field private static final STATE_SUB_ACT:I = 0x6

.field private static final STATE_SUB_DEACT:I = 0x3

.field private static final STATE_UNBIND:I = 0x4

.field private static final STATE_UNKNOWN:I = 0x1

.field private static final SUCCESS:I = 0x1

.field private static final UNBIND_TO_STACK:I

.field private static sModemStackController:Lcom/android/internal/telephony/ModemStackController;


# instance fields
.field private mActiveSubCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdFailed:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mDeactivationInProgress:Z

.field private mDeactivedSubCount:I

.field private mIsPhoneInEcbmMode:Z

.field private mIsRecoveryInProgress:Z

.field private mIsStackReady:Z

.field private mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

.field private mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mModemRatCapabilitiesAvailable:Z

.field private mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mNumPhones:I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStackReadyRegistrants:Landroid/os/RegistrantList;

.field private mSubState:[I

.field private mSubcriptionStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStackMsg:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 161
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    .line 162
    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 163
    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 164
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    .line 165
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    .line 166
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    .line 167
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    .line 168
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 169
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 170
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    .line 171
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 172
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 173
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    .line 174
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 176
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 178
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    .line 181
    iput-object v7, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 183
    new-instance v2, Lcom/android/internal/telephony/ModemStackController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ModemStackController$1;-><init>(Lcom/android/internal/telephony/ModemStackController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 259
    iput-object p3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 260
    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    .line 261
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 265
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0xa

    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemCapEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0xb

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aput v1, v2, v1

    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aput v1, v2, v1

    .line 272
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v6, v2, v1

    .line 273
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v5, v2, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ne v2, v6, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 279
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v2, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ModemStackController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method private areAllModemCapInfoReceived()Z
    .locals 1

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAllModemCapInfoReceived()Z

    move-result v0

    return v0
.end method

.method private areAllSubsinSameState(I)Z
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 586
    .local v3, "subState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areAllSubsinSameState state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " substate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 587
    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    .line 589
    .end local v3    # "subState":I
    :goto_1
    return v4

    .line 585
    .restart local v3    # "subState":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v3    # "subState":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private bindStackOnSub(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 480
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 481
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 482
    return-void
.end method

.method private deactivateAllSubscriptions()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 777
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 778
    .local v1, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 779
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput v8, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 780
    if-nez v3, :cond_1

    .line 782
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v5, :cond_0

    .line 783
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 784
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 786
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady(Z)V

    .line 804
    :goto_0
    return-void

    .line 789
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 790
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v4

    .line 791
    .local v4, "subStatus":I
    if-ne v4, v9, :cond_2

    .line 792
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 793
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/SubscriptionController;->deactivateSubId(I)V

    .line 795
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 797
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "subStatus":I
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-lez v5, :cond_4

    .line 798
    iput v8, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 799
    iput-boolean v9, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    goto :goto_0

    .line 801
    :cond_4
    iput-boolean v8, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 802
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/ModemStackController;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0
.end method

.method private isAllModemCapInfoReceived()Z
    .locals 2

    .prologue
    .line 903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 904
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 906
    :goto_1
    return v1

    .line 903
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isAnyCallsInProgress()Z
    .locals 4

    .prologue
    .line 676
    const/4 v1, 0x0

    .line 677
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 678
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 679
    .local v2, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 681
    const/4 v1, 0x1

    .line 685
    .end local v2    # "subId":I
    :cond_0
    return v1

    .line 677
    .restart local v2    # "subId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAnyCmdFailed()Z
    .locals 3

    .prologue
    .line 612
    const/4 v1, 0x0

    .line 613
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 614
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 615
    const/4 v1, 0x1

    .line 613
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_1
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 894
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 898
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ModemStackController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 238
    const-string v0, "ModemStackController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ModemStackController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 244
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyModemDataCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 840
    const-string v0, "notifyGetDataCapabilitiesDone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 842
    return-void
.end method

.method private notifyModemRatCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 834
    const-string v0, "notifyGetRatCapabilitiesDone: Got RAT capabilities for all Stacks!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 837
    return-void
.end method

.method private notifyStackReady(Z)V
    .locals 3
    .param p1, "isCrossMapDone"    # Z

    .prologue
    .line 807
    const-string v1, "notifyStackReady: Stack is READY!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 808
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 810
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 812
    if-eqz p1, :cond_0

    .line 813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 821
    return-void
.end method

.method private onBindComplete(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x5

    .line 509
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 517
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 522
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->setPrefNwTypeOnAllSubs()V

    goto :goto_0
.end method

.method private onGetModemCapabilityDone(Landroid/os/AsyncResult;[BI)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "result"    # [B
    .param p3, "phoneId"    # I

    .prologue
    .line 397
    if-nez p2, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone: EXIT!, result null or Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady(Z)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone on phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 407
    if-ltz p3, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p3, v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    const/4 v1, 0x2

    aput v1, v0, p3

    .line 410
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 413
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyModemRatCapabilitiesAvailable()V

    goto :goto_0

    .line 417
    :cond_2
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSetPrefNwModeDone(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 527
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v2, v0, p2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v3, v0, p2

    .line 535
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 545
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->updateNetworkSelectionMode()V

    .line 546
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady(Z)V

    goto :goto_0
.end method

.method private onSubDeactivated(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 441
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    .line 442
    .local v0, "subStatus":Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    if-eq v1, v0, :cond_1

    .line 444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubDeactivated on phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Failed!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    .line 448
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubDeactivated on phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aget v1, v1, p2

    if-ne v1, v4, :cond_3

    .line 476
    :cond_2
    :goto_0
    return-void

    .line 453
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v4, v1, p2

    .line 454
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 457
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-ne v1, v2, :cond_2

    .line 460
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 466
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 468
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 470
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady(Z)V

    goto :goto_0

    .line 472
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private onUnbindComplete(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x4

    .line 491
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 499
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 506
    :cond_1
    :goto_0
    return-void

    .line 504
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerBindingOnAllSubs()V

    goto :goto_0
.end method

.method private onUnsolModemCapabilityChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 422
    const-string v3, "onUnsolModemCapabilityChanged"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 423
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;

    .line 425
    .local v2, "unsolOemHookBuffer":Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
    if-nez v2, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsolModemCapabilityChanged: EXIT!, result null or Exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 438
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->getUnsolOemHookBuffer()[B

    move-result-object v0

    check-cast v0, [B

    .line 431
    .local v0, "data":[B
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->getRilInstance()I

    move-result v1

    .line 433
    .local v1, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsolModemCapabilityChanged on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 435
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 436
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyModemDataCapabilitiesAvailable()V

    goto :goto_0
.end method

.method private parseGetModemCapabilityResponse([BI)V
    .locals 8
    .param p1, "result"    # [B
    .param p2, "phoneId"    # I

    .prologue
    const/4 v7, 0x7

    .line 640
    array-length v0, p1

    if-eq v0, v7, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGetModemCapabilityResponse: EXIT!, result length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and Expected length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not matching."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGetModemCapabilityResponse: buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 646
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 647
    .local v6, "respBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 649
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 651
    .local v2, "stackId":I
    if-ltz v2, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-lt v2, v0, :cond_2

    .line 652
    :cond_1
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 656
    .local v3, "supportedRatBitMask":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 657
    .local v4, "voiceDataCap":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .local v5, "maxDataCap":I
    move-object v0, p0

    move v1, p2

    .line 659
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController;->updateModemCapInfo(IIIII)V

    goto :goto_0
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable on phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 374
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p2, v1, :cond_0

    .line 375
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "getModemCapsMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getModemCapability(Landroid/os/Message;)V

    .line 383
    .end local v0    # "getModemCapsMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processRadioNotAvailable(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRadioNotAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 388
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p2, v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recoverToPrevState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 863
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    if-eqz v1, :cond_2

    .line 866
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 868
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 870
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 871
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aget v2, v2, v3

    if-ne v1, v2, :cond_1

    .line 874
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady(Z)V

    .line 885
    :cond_1
    :goto_0
    return-void

    .line 879
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 881
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_3

    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 884
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private resetSubStates()V
    .locals 3

    .prologue
    .line 605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 607
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_0
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 888
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 889
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 890
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 891
    return-void
.end method

.method private setPrefNwTypeOnAllSubs()V
    .locals 4

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 579
    const/4 v2, 0x7

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 580
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "resp":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 664
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 666
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    sget v3, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    aput v3, v2, v0

    goto :goto_1

    .line 673
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private triggerBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 566
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_0
    return-void
.end method

.method private triggerDeactivationOnAllSubs()V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 573
    return-void
.end method

.method private triggerUnBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 559
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method private unbindStackOnSub(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 486
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 487
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 488
    return-void
.end method

.method private updateModemCapInfo(IIIII)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "stackId"    # I
    .param p3, "supportedRatBitMask"    # I
    .param p4, "voiceDataCap"    # I
    .param p5, "maxDataCap"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aput p2, v0, p1

    .line 626
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v7, v0, p1

    new-instance v0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v1, p1

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;-><init>(Lcom/android/internal/telephony/ModemStackController;IIII)V

    aput-object v0, v6, v7

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateModemCapInfo: ModemCaps["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private updateNetworkSelectionMode()V
    .locals 3

    .prologue
    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentStackIdForPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMaxDataAllowed()I
    .locals 5

    .prologue
    .line 693
    const-string v4, "getMaxDataAllowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 694
    const/4 v2, 0x1

    .line 695
    .local v2, "ret":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v3, "unsortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 698
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 699
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getMaxDataCap()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 703
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 704
    .local v1, "listSize":I
    if-lez v1, :cond_2

    .line 705
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 707
    :cond_2
    return v2
.end method

.method public getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimarySub()I
    .locals 2

    .prologue
    .line 715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 716
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->getCurrentStackIdForPhoneId(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 720
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 715
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 294
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 295
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 296
    .local v1, "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_RADIO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 301
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 302
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 303
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_GET_MODEM_CAPS_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 304
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->onGetModemCapabilityDone(Landroid/os/AsyncResult;[BI)V

    goto :goto_0

    .line 308
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 309
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_MODEM_CAPABILITY_CHANGED ar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->onUnsolModemCapabilityChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 314
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v2, "CMD_DEACTIVATE_ALL_SUBS"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->deactivateAllSubscriptions()V

    goto :goto_0

    .line 319
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 320
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 321
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_SUB_DEACTIVATED"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onSubDeactivated(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 326
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 327
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "CMD_TRIGGER_UNBIND"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->unbindStackOnSub(I)V

    goto :goto_0

    .line 332
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 333
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 334
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_UNBIND_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onUnbindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 339
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 340
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "CMD_TRIGGER_BIND"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->bindStackOnSub(I)V

    goto/16 :goto_0

    .line 345
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 346
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 347
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_BIND_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onBindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 352
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 353
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 354
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_SET_PREF_MODE_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onSetPrefNwModeDone(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 359
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 360
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 361
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_NOT_AVAILABLE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->processRadioNotAvailable(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method public isStackReady()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    return v0
.end method

.method public registerForModemDataCapsUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 855
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 857
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 858
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 859
    monitor-exit v2

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 845
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 846
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 851
    monitor-exit v2

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 824
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 825
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    if-eqz v1, :cond_0

    .line 826
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 828
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 830
    monitor-exit v2

    .line 831
    return-void

    .line 830
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStackBinding([IZLandroid/os/Message;)I
    .locals 8
    .param p1, "prefStackIds"    # [I
    .param p2, "isBootUp"    # Z
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 728
    const/4 v3, 0x0

    .line 729
    .local v3, "isUpdateRequired":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCallsInProgress()Z

    move-result v0

    .line 731
    .local v0, "callInProgress":Z
    iget v6, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ne v6, v5, :cond_1

    .line 732
    const-string v5, "No need to update Stack Binding in case of Single Sim."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 773
    :cond_0
    :goto_0
    return v4

    .line 735
    :cond_1
    const-string v6, "persist.radio.disable_flexmap"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    move v2, v5

    .line 738
    .local v2, "isFlexmapDisabled":Z
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    if-nez v6, :cond_4

    if-nez p2, :cond_4

    .line 739
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStackBinding: Calls is progress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsPhoneInEcbmMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsStackReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". So EXITING!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isFlexmapDisabled":Z
    :cond_3
    move v2, v4

    .line 735
    goto :goto_1

    .line 744
    .restart local v2    # "isFlexmapDisabled":Z
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v6, :cond_5

    .line 745
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v7, p1, v1

    aput v7, v6, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 748
    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v6, :cond_6

    .line 749
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v7, v7, v1

    if-eq v6, v7, :cond_7

    .line 751
    const/4 v3, 0x1

    .line 756
    :cond_6
    if-nez v2, :cond_9

    if-eqz v3, :cond_9

    .line 757
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 759
    iput-object p3, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 761
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->syncPreferredNwModeFromDB()V

    .line 762
    if-eqz p2, :cond_8

    .line 763
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    :goto_4
    move v4, v5

    .line 773
    goto :goto_0

    .line 748
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 765
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerDeactivationOnAllSubs()V

    goto :goto_4

    .line 768
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStackBinding: FlexMap Disabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 770
    if-eqz p2, :cond_0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady(Z)V

    goto/16 :goto_0
.end method
