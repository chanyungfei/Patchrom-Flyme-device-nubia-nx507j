.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$1;,
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"

.field private static final TIMING_ZEN_MODE:Ljava/lang/String; = "timing_zen_mode"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private mEffectsSuppressed:Z

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field private mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

.field private mNumber:Ljava/lang/String;

.field private mPreviousRingerMode:I

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 98
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 100
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 102
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 103
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 104
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 106
    new-instance v0, Lcn/nubia/server/notification/NubiaZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p1, v1, p0}, Lcn/nubia/server/notification/NubiaZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    .line 108
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper;)Lcn/nubia/server/notification/NubiaZenModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method private applyRestrictions()V
    .locals 4

    .prologue
    .line 294
    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 297
    .local v2, "zen":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    .line 298
    .local v1, "muteNotifications":Z
    const/4 v3, 0x5

    invoke-direct {p0, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    .line 305
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    .line 307
    .local v0, "muteCalls":Z
    const/4 v3, 0x6

    invoke-direct {p0, v0, v3}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    .line 316
    return-void

    .line 294
    .end local v0    # "muteCalls":Z
    .end local v1    # "muteNotifications":Z
    .end local v2    # "zen":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private applyRestrictions(ZI)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x3

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1c

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v4, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 326
    return-void

    :cond_0
    move v1, v3

    .line 320
    goto :goto_0

    :cond_1
    move v2, v3

    .line 323
    goto :goto_1
.end method

.method private applyZenToRingerMode()V
    .locals 3

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v2, :cond_0

    .line 407
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v1

    .line 372
    .local v1, "ringerModeInternal":I
    move v0, v1

    .line 373
    .local v0, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_0

    .line 405
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v2, v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setRingerModeInternal(I)V

    goto :goto_0

    .line 375
    :pswitch_0
    if-eqz v1, :cond_1

    .line 376
    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 377
    const/4 v0, 0x0

    goto :goto_1

    .line 382
    :pswitch_1
    if-nez v1, :cond_1

    .line 391
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getLastRingerMode()I

    move-result v0

    .line 392
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    goto :goto_1

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private audienceMatches(F)Z
    .locals 4
    .param p1, "contactAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 612
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    packed-switch v2, :pswitch_data_0

    .line 624
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 616
    :pswitch_1
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 618
    :pswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 621
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->customizeMatches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private customizeMatches(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 630
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->customizeContacts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 632
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v2, v4

    .line 642
    :goto_0
    return v2

    .line 635
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 637
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 638
    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_2
    move v2, v4

    .line 642
    goto :goto_0
.end method

.method private dispatchOnConfigChanged()V
    .locals 3

    .prologue
    .line 508
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 509
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_0

    .line 511
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 3

    .prologue
    .line 514
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 515
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_0

    .line 517
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x4

    .line 524
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 550
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 551
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 554
    :goto_0
    return v2

    .line 552
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms_default_application"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 542
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 543
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 542
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 545
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 530
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 558
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 520
    const-string v0, "sys"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110003

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 114
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 115
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 116
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 121
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_0
    return-object v0

    .line 121
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 123
    :goto_1
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private setZenMode(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "zenMode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    .line 275
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 276
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v0, p1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 277
    :cond_0
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceUpdateZenMode(II)V

    .line 278
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 279
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    if-eqz p3, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 284
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$100(Lcom/android/server/notification/ZenModeHelper$H;)V

    goto :goto_0
.end method

.method private shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 253
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "mmsNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setRepeatcomingCallsNumber(Ljava/lang/String;)V

    .line 259
    .end local v0    # "mmsNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    const-string v2, "!audienceMatches"

    invoke-static {p1, v2}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 261
    const/4 v2, 0x1

    .line 263
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static zenModeFromListenerInterruptionFilter(II)I
    .locals 0
    .param p0, "listenerInterruptionFilter"    # I
    .param p1, "defValue"    # I

    .prologue
    .line 159
    packed-switch p0, :pswitch_data_0

    .line 167
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 161
    .restart local p1    # "defValue":I
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 163
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 165
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPreviousRingerMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEffectsSuppressed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 336
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getLastExitCondition()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getLastExitCondition()I

    move-result v0

    return v0
.end method

.method public getLastSilentExitCondition()I
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getLastSilentExitCondition()I

    move-result v0

    return v0
.end method

.method public getLastZenMode()I
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getLastZenMode()I

    move-result v0

    return v0
.end method

.method public getLastZenModeHelper()Lcn/nubia/server/notification/NubiaZenModeHelper;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    return-object v0
.end method

.method public getZenMode()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v0, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 147
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 151
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 534
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 10
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 569
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 571
    .local v5, "zen":I
    const-string v8, "number"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "phoneNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber:Ljava/lang/String;

    .line 573
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    iget-object v9, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setRepeatcomingCallsNumber(Ljava/lang/String;)V

    .line 575
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v7

    .line 576
    :cond_1
    if-ne v5, v6, :cond_a

    .line 581
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v8, :cond_8

    .line 582
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v8}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getIsNeedRinging()Z

    move-result v3

    .line 583
    .local v3, "needRinging":Z
    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v8, :cond_5

    move v1, v6

    .line 584
    .local v1, "isZen":Z
    :goto_1
    if-eqz v1, :cond_2

    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v8, :cond_3

    :cond_2
    iget-boolean v8, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    if-eqz v8, :cond_6

    :cond_3
    move v2, v6

    .line 585
    .local v2, "muteCalls":Z
    :goto_2
    if-eqz v2, :cond_4

    .line 586
    if-nez v3, :cond_7

    move v2, v6

    .line 588
    :cond_4
    :goto_3
    const/4 v6, 0x6

    invoke-direct {p0, v2, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    move v7, v3

    .line 589
    goto :goto_0

    .end local v1    # "isZen":Z
    .end local v2    # "muteCalls":Z
    :cond_5
    move v1, v7

    .line 583
    goto :goto_1

    .restart local v1    # "isZen":Z
    :cond_6
    move v2, v7

    .line 584
    goto :goto_2

    .restart local v2    # "muteCalls":Z
    :cond_7
    move v2, v7

    .line 586
    goto :goto_3

    .line 592
    .end local v1    # "isZen":Z
    .end local v2    # "muteCalls":Z
    .end local v3    # "needRinging":Z
    :cond_8
    if-eqz p3, :cond_a

    .line 593
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 599
    .local v0, "contactAffinity":F
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v8}, Lcn/nubia/server/notification/NubiaZenModeHelper;->getIsNeedRinging()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_9
    move v7, v6

    goto :goto_0

    .end local v0    # "contactAffinity":F
    :cond_a
    move v7, v6

    .line 603
    goto :goto_0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;I)I
    .locals 7
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 454
    move v3, p2

    .line 455
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_2

    move v0, v1

    .line 456
    .local v0, "isChange":Z
    :goto_0
    if-ne p4, v1, :cond_3

    .line 458
    .local v1, "isVibrate":Z
    :goto_1
    const/4 v2, -0x1

    .line 459
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 498
    :cond_0
    :goto_2
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 499
    const-string v5, "ringerModeExternal"

    invoke-direct {p0, v2, v5, v4}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 502
    :cond_1
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 504
    return v3

    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_2
    move v0, v4

    .line 455
    goto :goto_0

    .restart local v0    # "isChange":Z
    :cond_3
    move v1, v4

    .line 456
    goto :goto_1

    .line 461
    .restart local v1    # "isVibrate":Z
    .restart local v2    # "newZen":I
    :pswitch_0
    if-eqz v0, :cond_4

    .line 474
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v5, v6, :cond_0

    .line 475
    const/4 v2, 0x2

    goto :goto_2

    .line 479
    :cond_4
    move v3, p4

    .line 481
    goto :goto_2

    .line 492
    :pswitch_1
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v5, v6, :cond_0

    .line 493
    const/4 v2, 0x0

    goto :goto_2

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;I)I
    .locals 7
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 412
    if-eq p1, p2, :cond_4

    const/4 v0, 0x1

    .line 414
    .local v0, "isChange":Z
    :goto_0
    move v2, p2

    .line 416
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 417
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 440
    :cond_0
    :goto_1
    if-eq v1, v5, :cond_1

    .line 441
    const-string v4, "ringerModeInternal"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 444
    :cond_1
    if-nez v0, :cond_2

    if-ne v1, v5, :cond_2

    if-eq p4, v2, :cond_3

    .line 445
    :cond_2
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 448
    :cond_3
    return v2

    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_4
    move v0, v3

    .line 412
    goto :goto_0

    .line 419
    .restart local v0    # "isChange":Z
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v0, :cond_0

    .line 420
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v4, v6, :cond_0

    .line 421
    const/4 v1, 0x2

    goto :goto_1

    .line 427
    :pswitch_1
    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v6, :cond_5

    .line 429
    const/4 v1, 0x0

    goto :goto_1

    .line 430
    :cond_5
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_0

    .line 435
    move v2, p2

    goto :goto_1

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 135
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 136
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0, p0}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0, v1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setAudioManager(Landroid/media/AudioManagerInternal;)V

    .line 142
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 340
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 343
    :cond_0
    return-void
.end method

.method public readZenModeFromSetting()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 290
    .local v0, "newMode":I
    const-string v1, "setting"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 291
    return-void
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "interruptionFilter"    # I

    .prologue
    const/4 v1, -0x1

    .line 172
    invoke-static {p2, v1}, Lcom/android/server/notification/ZenModeHelper;->zenModeFromListenerInterruptionFilter(II)I

    move-result v0

    .line 173
    .local v0, "newZen":I
    if-eq v0, v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 176
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v1, 0x1

    .line 354
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 365
    :cond_1
    :goto_0
    return v1

    .line 355
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 358
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v2}, Lcn/nubia/server/notification/NubiaZenModeHelper;->saveLastExitCondition()V

    .line 360
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 361
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 362
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "val":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode_config_etag"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    goto :goto_0
.end method

.method public setEffectsSuppressed(Z)V
    .locals 1
    .param p1, "effectsSuppressed"    # Z

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    if-ne v0, p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    .line 181
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    goto :goto_0
.end method

.method public setLastDownTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/notification/NubiaZenModeHelper;->setLastDownTime(J)V

    .line 726
    return-void
.end method

.method public setZenMode(ILjava/lang/String;)V
    .locals 1
    .param p1, "zenMode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 185
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_2

    .line 209
    const-string v0, "!allowCalls"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 210
    goto :goto_0

    .line 191
    :pswitch_1
    const-string v0, "none"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 192
    goto :goto_0

    .line 212
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_0

    .line 214
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_4

    .line 216
    const-string v0, "!allowMessages"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 217
    goto :goto_0

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->isIntercepted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 221
    goto :goto_0

    .line 224
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_0

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_7

    .line 239
    const-string v0, "allowEvents"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNubiaZenModeHelper:Lcn/nubia/server/notification/NubiaZenModeHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/server/notification/NubiaZenModeHelper;->isIntercepted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_0

    .line 243
    :cond_7
    const-string v0, "!priority"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 244
    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 347
    return-void
.end method
