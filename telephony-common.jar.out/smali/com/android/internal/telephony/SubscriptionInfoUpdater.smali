.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# static fields
.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_ICC_CHANGED:I = 0x6

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_READY_OR_LOCKED:I = 0x5

.field private static final EVENT_STACK_READY:I = 0x7

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "DUMMY_NV_ID"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final PROJECT_SIM_NUM:I

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mContext:Landroid/content/Context;

.field private static mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private static mIccId:[Ljava/lang/String;

.field private static mInsertSimState:[I

.field private static mNeedUpdate:Z

.field private static mPhone:[Lcom/android/internal/telephony/Phone;

.field private static mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field private isNVSubAvailable:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 99
    sput-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 100
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 101
    sput-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 103
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 104
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 105
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    .line 106
    sput-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 107
    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 109
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 132
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    const-string v2, "Constructor invoked"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 116
    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 117
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 118
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 119
    sput-object p3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 120
    invoke-static {p1, p3}, Lcom/android/internal/telephony/SubscriptionHelper;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;

    .line 121
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 122
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x6

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 125
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 455
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hot plug out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 458
    :cond_0
    return-void
.end method

.method private handleSimLoaded(I)V
    .locals 13
    .param p1, "slotId"    # I

    .prologue
    const/4 v12, 0x0

    .line 380
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSimStateLoadedInternal: slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 384
    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v10, v10, p1

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 385
    .local v5, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v5, :cond_1

    .line 386
    const-string v10, "onRecieve: IccRecords null"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    .line 390
    const-string v10, "onRecieve: IccID null"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, p1

    .line 395
    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-nez v10, :cond_3

    .line 396
    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 399
    :cond_3
    const v7, 0x7fffffff

    .line 400
    .local v7, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v8

    .line 401
    .local v8, "subIds":[I
    if-eqz v8, :cond_4

    .line 402
    aget v7, v8, v12

    .line 405
    :cond_4
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 406
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "operator":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 408
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v10

    if-ne v7, v10, :cond_5

    .line 409
    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v10, v4, v12}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 411
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v10

    invoke-virtual {v10, v4, v7}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 416
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "msisdn":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v10, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 431
    .local v9, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "simCarrierName":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 435
    .local v2, "name":Landroid/content/ContentValues;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 437
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 438
    move-object v3, v6

    .line 442
    .local v3, "nameToSet":Ljava/lang/String;
    :goto_2
    const-string v10, "display_name"

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sim name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 444
    sget-object v10, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v2, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 413
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v2    # "name":Landroid/content/ContentValues;
    .end local v3    # "nameToSet":Ljava/lang/String;
    .end local v6    # "simCarrierName":Ljava/lang/String;
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_6
    const-string v10, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 440
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "msisdn":Ljava/lang/String;
    .restart local v2    # "name":Landroid/content/ContentValues;
    .restart local v6    # "simCarrierName":Ljava/lang/String;
    .restart local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CARD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, p1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "nameToSet":Ljava/lang/String;
    goto :goto_2

    .line 450
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v2    # "name":Landroid/content/ContentValues;
    .end local v3    # "nameToSet":Ljava/lang/String;
    .end local v4    # "operator":Ljava/lang/String;
    .end local v6    # "simCarrierName":Ljava/lang/String;
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_8
    const-string v10, "Invalid subId, could not update ContentResolver"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSimReadyOrLocked(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 374
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hot plug in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 377
    :cond_0
    return-void
.end method

.method private isAllIccIdQueryDone()Z
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 180
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    .line 187
    :goto_1
    return v1

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const-string v1, "All IccIds query complete"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 662
    const/4 v1, 0x1

    .line 663
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 664
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    const/4 v1, 0x0

    .line 669
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 671
    return v1

    .line 663
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 680
    const-string v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method

.method private queryIccId(I)V
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    .line 461
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryIccId: slotid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 462
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    if-nez v6, :cond_1

    .line 463
    const-string v6, "Getting IccFileHandler"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 465
    const/4 v5, 0x0

    .line 466
    .local v5, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 467
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    .line 468
    .local v3, "numApps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 469
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 470
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v6, v7, :cond_2

    .line 471
    move-object v5, v0

    .line 475
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    if-eqz v5, :cond_1

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v7

    aput-object v7, v6, p1

    .line 477
    .end local v1    # "i":I
    .end local v3    # "numApps":I
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    if-eqz v6, :cond_4

    .line 478
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v6, p1

    .line 479
    .local v2, "iccId":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 480
    const-string v6, "Querying IccId"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 481
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    const/16 v7, 0x2fe2

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 491
    .end local v2    # "iccId":Ljava/lang/String;
    :goto_1
    return-void

    .line 468
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "i":I
    .restart local v3    # "numApps":I
    .restart local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    .end local v3    # "numApps":I
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v2    # "iccId":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 488
    .end local v2    # "iccId":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v7, v6, p1

    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFh["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is null, SIM not inserted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateIccAvailability(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 287
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v4, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v3

    .line 291
    .local v3, "subHelper":Lcom/android/internal/telephony/SubscriptionHelper;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccAvailability: Enter, slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 292
    sget v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-le v4, v7, :cond_3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->proceedToHandleIccEvent(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 293
    const-string v4, "updateIccAvailability: radio is OFF/unavailable, ignore "

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->isApmSIMNotPwdn()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioAvailable(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v6, v4, p1

    .line 306
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, p1

    goto :goto_0

    .line 312
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 313
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 314
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v4, :cond_4

    .line 317
    const-string v4, "SubscriptionInfoUpdater"

    const-string v5, "updateIccAvailability: Returning NV mode "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v4, p1

    .line 322
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v1, v4, p1

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: New Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Old Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-nez v4, :cond_6

    .line 327
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hot plug out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 329
    sput-boolean v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 331
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, p1

    .line 332
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, p1

    .line 333
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    if-eqz v4, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_0

    .line 336
    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 338
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hot plug in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 340
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v6, v4, p1

    .line 341
    sput-boolean v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 343
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    goto/16 :goto_0

    .line 344
    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->isApmSIMNotPwdn()Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_a

    :cond_9
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 349
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " powered up from APM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 350
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v6, v4, p1

    .line 351
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, p1

    .line 352
    sput-boolean v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 353
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    goto/16 :goto_0

    .line 354
    :cond_b
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->needSubActivationAfterRefresh(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refresh happened, need sub activation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 364
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_0

    .line 366
    :cond_c
    sput-boolean v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 367
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    goto/16 :goto_0
.end method

.method private updateSubStateIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 686
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v1, v1, v0

    const/16 v2, -0x63

    if-ne v1, v2, :cond_0

    .line 687
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubAbsent(I)V

    .line 688
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Z

    aput-boolean v3, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs([Z)V

    .line 685
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_1
    return-void
.end method

.method private declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 17

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    const-string v13, "updateSubscriptionInfoByIccId:+ Start"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 510
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 514
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v13, :cond_0

    .line 515
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v14, 0x0

    aput v14, v13, v2

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    :cond_0
    sget v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 519
    .local v4, "insertedSimCount":I
    const/4 v2, 0x0

    :goto_1
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v13, :cond_2

    .line 520
    const-string v13, ""

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 521
    add-int/lit8 v4, v4, -0x1

    .line 522
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v14, -0x63

    aput v14, v13, v2

    .line 519
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 525
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertedSimCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 527
    const/4 v3, 0x0

    .line 528
    .local v3, "index":I
    const/4 v2, 0x0

    :goto_2
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v13, :cond_6

    .line 529
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v2

    const/16 v14, -0x63

    if-ne v13, v14, :cond_4

    .line 528
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 532
    :cond_4
    const/4 v3, 0x2

    .line 533
    add-int/lit8 v5, v2, 0x1

    .local v5, "j":I
    :goto_3
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v5, v13, :cond_3

    .line 534
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v5

    if-nez v13, :cond_5

    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 535
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v14, 0x1

    aput v14, v13, v2

    .line 536
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v3, v13, v5

    .line 537
    add-int/lit8 v3, v3, 0x1

    .line 533
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 542
    .end local v5    # "j":I
    :cond_6
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 543
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v9, v13, [Ljava/lang/String;

    .line 544
    .local v9, "oldIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_4
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v13, :cond_b

    .line 545
    const/4 v13, 0x0

    aput-object v13, v9, v2

    .line 546
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;

    move-result-object v10

    .line 548
    .local v10, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v10, :cond_9

    .line 549
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v2

    .line 550
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSubscriptionInfoByIccId: oldSubId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 552
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v2

    if-nez v13, :cond_7

    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v13, v13, v2

    aget-object v14, v9, v2

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 553
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v14, -0x1

    aput v14, v13, v2

    .line 555
    :cond_7
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v2

    if-eqz v13, :cond_8

    .line 556
    new-instance v12, Landroid/content/ContentValues;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 557
    .local v12, "value":Landroid/content/ContentValues;
    const-string v13, "sim_id"

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    sget-object v14, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v12, v13, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 544
    .end local v12    # "value":Landroid/content/ContentValues;
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 564
    :cond_9
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v2

    if-nez v13, :cond_a

    .line 566
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v14, -0x1

    aput v14, v13, v2

    .line 568
    :cond_a
    const-string v13, ""

    aput-object v13, v9, v2

    .line 569
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSubscriptionInfoByIccId: No SIM in slot "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " last time"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 509
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "insertedSimCount":I
    .end local v9    # "oldIccId":[Ljava/lang/String;
    .end local v10    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 573
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "insertedSimCount":I
    .restart local v9    # "oldIccId":[Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    :goto_6
    :try_start_1
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v13, :cond_c

    .line 574
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSubscriptionInfoByIccId: oldIccId["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v9, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mIccId["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 579
    :cond_c
    const/4 v6, 0x0

    .line 580
    .local v6, "nNewCardCount":I
    const/4 v7, 0x0

    .line 581
    .local v7, "nNewSimStatus":I
    const/4 v2, 0x0

    :goto_7
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v13, :cond_10

    .line 582
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v2

    const/16 v14, -0x63

    if-ne v13, v14, :cond_e

    .line 583
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No SIM inserted in slot "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " this time"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 584
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 585
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-boolean v16, v14, v15

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs([Z)V

    .line 581
    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 588
    :cond_e
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v2

    if-lez v13, :cond_f

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v15, v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v15, v15, v2

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 593
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SUB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has invalid IccId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 597
    :goto_9
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 598
    add-int/lit8 v6, v6, 0x1

    .line 599
    packed-switch v2, :pswitch_data_0

    .line 614
    :goto_a
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v14, -0x2

    aput v14, v13, v2

    goto :goto_8

    .line 595
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14, v2}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_9

    .line 601
    :pswitch_0
    or-int/lit8 v7, v7, 0x1

    .line 602
    goto :goto_a

    .line 604
    :pswitch_1
    or-int/lit8 v7, v7, 0x2

    .line 605
    goto :goto_a

    .line 607
    :pswitch_2
    or-int/lit8 v7, v7, 0x4

    goto :goto_a

    .line 619
    :cond_10
    const/4 v2, 0x0

    :goto_b
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v13, :cond_12

    .line 620
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v2

    const/4 v14, -0x1

    if-ne v13, v14, :cond_11

    .line 621
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v14, -0x3

    aput v14, v13, v2

    .line 623
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSubscriptionInfoByIccId: mInsertSimState["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v14, v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 633
    :cond_12
    sget v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_13

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubStateIfNeeded()V

    .line 637
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v11

    .line 638
    .local v11, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v11, :cond_14

    const/4 v8, 0x0

    .line 639
    .local v8, "nSubCount":I
    :goto_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSubscriptionInfoByIccId: nSubCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 658
    const-string v13, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    .line 638
    .end local v8    # "nSubCount":I
    :cond_14
    :try_start_2
    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    goto :goto_c

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 675
    const-string v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 677
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 215
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown msg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 218
    .local v4, "slotId":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 219
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 220
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 221
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 222
    .local v2, "data":[B
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    array-length v7, v2

    invoke-static {v2, v8, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 231
    .end local v2    # "data":[B
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    if-eqz v5, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto :goto_0

    .line 224
    :cond_1
    const-string v5, "Null ar"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 225
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, ""

    aput-object v7, v5, v6

    goto :goto_1

    .line 228
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, ""

    aput-object v7, v5, v6

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query IccId fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    .end local v4    # "slotId":Ljava/lang/Integer;
    :pswitch_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 239
    .local v1, "cardIndex":Ljava/lang/Integer;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 240
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1    # "cardIndex":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 245
    .restart local v1    # "cardIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateIccAvailability(I)V

    goto/16 :goto_0

    .line 242
    :cond_3
    const-string v5, "SubscriptionInfoUpdater"

    const-string v6, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 248
    .end local v1    # "cardIndex":Ljava/lang/Integer;
    :pswitch_2
    const-string v5, "EVENT_STACK_READY"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :pswitch_3
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 258
    .restart local v4    # "slotId":Ljava/lang/Integer;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 259
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v3, v5

    check-cast v3, [I

    .line 260
    .local v3, "modes":[I
    aget v5, v3, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 261
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 264
    .end local v3    # "modes":[I
    :cond_4
    const-string v5, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .end local v4    # "slotId":Ljava/lang/Integer;
    :pswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    goto/16 :goto_0

    .line 274
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    goto/16 :goto_0

    .line 278
    :pswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimReadyOrLocked(I)V

    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    .prologue
    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 192
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    .line 194
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    .line 195
    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 196
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNameForNewSub] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldSimName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSubName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 199
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    int-to-long v6, p3

    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 210
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    .line 208
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSubIdForNV(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    .line 494
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, "DUMMY_NV_ID"

    aput-object v1, v0, p1

    .line 495
    sput-boolean v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 496
    const-string v0, "[updateSubIdForNV]+ Start"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "[updateSubIdForNV]+ updating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 500
    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 502
    :cond_0
    return-void
.end method
