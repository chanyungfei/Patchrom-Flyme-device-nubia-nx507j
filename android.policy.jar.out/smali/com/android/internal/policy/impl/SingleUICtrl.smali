.class public Lcom/android/internal/policy/impl/SingleUICtrl;
.super Ljava/lang/Object;
.source "SingleUICtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/ISettingListener;
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SingleUICtrl$LockScreenBroadcastReceiver;,
        Lcom/android/internal/policy/impl/SingleUICtrl$BlackListAppsBrocastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BLACK_APP_START:Ljava/lang/String; = "android.intent.action.SINGLE_UI_BLACK_APP_START"

.field private static final DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

.field private static final FIELD_MULTI_WINDOW:Ljava/lang/String; = "ss_multi_window_enabled"

.field private static final FIELD_SU_BLACK_LIST:Ljava/lang/String; = "single_ui_black_list"

.field private static KEY_MENU_AND_HOME_POS:Ljava/lang/String; = null

.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE_EXTERNAL:Ljava/lang/String; = "single_ui_mode_external"

.field private static final NUBIA_OVERLAY_DISPLAY_STATUS:Ljava/lang/String; = "single_ui_status"

.field private static final NUBIA_OVERLAY_DISPLAY_SWITCH:Ljava/lang/String; = "single_ui_on_off"

.field static final SEPARATOR_APP_LIST:Ljava/lang/String; = "/"

.field private static final SINGLE_UI_GUIDE_CLASS:Ljava/lang/String; = "cn.nubia.singlehandpageset.MainActivity"

.field private static final SINGLE_UI_GUIDE_LEFT_OR_RIGHT:Ljava/lang/String; = "leftorright"

.field private static final SINGLE_UI_GUIDE_PACKAGE:Ljava/lang/String; = "cn.nubia.singlehandpageset"

.field private static final SU_MODE_CLOSE:I = 0x0

.field private static final SU_MODE_EXTERNAL_INVALID:I = 0x64

.field private static final SU_MODE_EXTERNAL_LEFT_A:I = 0xa

.field private static final SU_MODE_EXTERNAL_LEFT_B:I = 0xb

.field private static final SU_MODE_EXTERNAL_RIGHT_A:I = 0x0

.field private static final SU_MODE_EXTERNAL_RIGHT_B:I = 0x1

.field private static final SU_MODE_LEFT:I = 0x2

.field private static final SU_MODE_RIGHT:I = 0x1

.field private static final SU_SWITCH_OFF:I = 0x0

.field private static final SU_SWITCH_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SingleUICtrl"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mArBlackAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultDisplay:Landroid/view/Display;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSingleMode:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.camera"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    .line 284
    const-string v0, "persist.sys.key.menu2back"

    sput-object v0, Lcom/android/internal/policy/impl/SingleUICtrl;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mSingleMode:I

    .line 79
    iput-object p2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    .line 80
    iput-object p1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 82
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->initDisplayForRotation()V

    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->initBlackListReceiver()V

    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->initLockScreenReceiver()V

    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->registerExternalControllerObserver()V

    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SingleUICtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SingleUICtrl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SingleUICtrl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/SingleUICtrl;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SingleUICtrl;->longPressedKey(I)V

    return-void
.end method

.method private collectSingleCtrlData(I)V
    .locals 3
    .param p1, "suModeLeftOrRight"    # I

    .prologue
    .line 274
    const-string v0, "right"

    .line 275
    .local v0, "suMode":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 276
    const-string v0, "right"

    .line 280
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v1

    const-string v2, "single_long_press_key"

    invoke-virtual {v1, v2, v0}, Lnubia/util/FrameworkDataStatisticsManager;->onEventWithStartOnce(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 277
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 278
    const-string v0, "left"

    goto :goto_0
.end method

.method private static currentAppIsInBlackList(Landroid/app/ActivityManager;Ljava/util/ArrayList;)Z
    .locals 4
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 369
    .local v0, "flag":Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->getCurrentRuningApp(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 370
    .local v1, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    const-string v2, ""

    .line 371
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 374
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    const/4 v0, 0x1

    .line 377
    :cond_1
    return v0
.end method

.method private dealwithSingleUILongPress(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x52

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 288
    const-string v4, "0"

    sget-object v5, Lcom/android/internal/policy/impl/SingleUICtrl;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 292
    .local v0, "isKeySideNotChanged":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v7, :cond_1

    move v1, v2

    .line 300
    .local v1, "isMenuKey":Z
    :goto_0
    xor-int v3, v1, v0

    if-eqz v3, :cond_2

    .line 301
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SingleUICtrl;->longPressedKey(I)V

    .line 308
    .end local v1    # "isMenuKey":Z
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 297
    goto :goto_0

    .line 303
    .restart local v1    # "isMenuKey":Z
    :cond_2
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SingleUICtrl;->longPressedKey(I)V

    goto :goto_1

    .end local v1    # "isMenuKey":Z
    :cond_3
    move v2, v3

    .line 308
    goto :goto_1
.end method

.method private static getCurrentRuningApp(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 386
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 387
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 388
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 389
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v0    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 390
    .restart local v0    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 391
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 392
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 397
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method private static getDefaultBlackList(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "single_ui_black_list"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "blackList":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "i":I
    sget-object v4, Lcom/android/internal/policy/impl/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    array-length v2, v4

    .line 352
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    if-ge v1, v2, :cond_1

    .line 354
    if-eqz v1, :cond_0

    .line 355
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/SingleUICtrl;->DEFAULT_SU_BLACK_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v0
.end method

.method private initBlackListReceiver()V
    .locals 4

    .prologue
    .line 101
    new-instance v1, Lcom/android/internal/policy/impl/SingleUICtrl$BlackListAppsBrocastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SingleUICtrl$BlackListAppsBrocastReceiver;-><init>(Lcom/android/internal/policy/impl/SingleUICtrl;Lcom/android/internal/policy/impl/SingleUICtrl$1;)V

    .line 102
    .local v1, "receiver":Lcom/android/internal/policy/impl/SingleUICtrl$BlackListAppsBrocastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SINGLE_UI_BLACK_APP_START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mActivityManager:Landroid/app/ActivityManager;

    .line 109
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SingleUICtrl;->getDefaultBlackList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SingleUICtrl;->updateBlackList(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private initDisplayForRotation()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mWindowManager:Landroid/view/WindowManager;

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mDefaultDisplay:Landroid/view/Display;

    .line 96
    return-void
.end method

.method private initLockScreenReceiver()V
    .locals 3

    .prologue
    .line 116
    new-instance v1, Lcom/android/internal/policy/impl/SingleUICtrl$LockScreenBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SingleUICtrl$LockScreenBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/SingleUICtrl;Lcom/android/internal/policy/impl/SingleUICtrl$1;)V

    .line 117
    .local v1, "receiver":Lcom/android/internal/policy/impl/SingleUICtrl$LockScreenBroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method private isLandscapeInDisplay()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 186
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 194
    const-string v2, "SingleUICtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undefined rotation in SingleUICtrl at rotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    :pswitch_0
    return v1

    .line 189
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isMultiWindowOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ss_multi_window_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, "multiWindowOpened":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSingleHandClosed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_on_off"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "suSwitch":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSingleHandNeverStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 207
    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "status":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private longPressedKey(I)V
    .locals 4
    .param p1, "suModeLeftOrRight"    # I

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, "mode":I
    if-eq v0, p1, :cond_5

    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->isSingleHandClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->isLandscapeInDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    const v1, 0x30c0022

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SingleUICtrl;->showToastByRunnable(I)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->isMultiWindowOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    const v1, 0x30c0023

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SingleUICtrl;->showToastByRunnable(I)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mArBlackAppList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SingleUICtrl;->currentAppIsInBlackList(Landroid/app/ActivityManager;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SingleUICtrl;->isSingleHandNeverStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SingleUICtrl;->startSingleHandGuidePage(I)V

    goto :goto_0

    .line 262
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SingleUICtrl;->collectSingleCtrlData(I)V

    goto :goto_0

    .line 268
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private registerExternalControllerObserver()V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode_external"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/internal/policy/impl/SingleUICtrl$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/SingleUICtrl$1;-><init>(Lcom/android/internal/policy/impl/SingleUICtrl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    return-void
.end method

.method private showToastByRunnable(I)V
    .locals 2
    .param p1, "toBeShowed"    # I

    .prologue
    .line 422
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 423
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/policy/impl/SingleUICtrl$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/SingleUICtrl$2;-><init>(Lcom/android/internal/policy/impl/SingleUICtrl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    return-void
.end method

.method private startSingleHandGuidePage(I)V
    .locals 4
    .param p1, "leftOrRight"    # I

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "leftorright"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.singlehandpageset"

    const-string v3, "cn.nubia.singlehandpageset.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method static string2list(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "array":[Ljava/lang/String;
    array-length v2, v0

    .line 413
    .local v2, "length":I
    const/4 v1, 0x0

    .line 414
    .local v1, "i":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .local v3, "outputArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-ge v1, v2, :cond_0

    .line 416
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    return-object v3
.end method

.method private updateBlackList(Ljava/lang/String;)V
    .locals 1
    .param p1, "blackList"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {p1}, Lcom/android/internal/policy/impl/SingleUICtrl;->string2list(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mArBlackAppList:Ljava/util/ArrayList;

    .line 405
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 315
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/SingleUICtrl;->dealwithSingleUILongPress(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 319
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    .line 154
    const-string v0, "single_ui_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    const-string v0, "single_ui_black_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 160
    const-string v0, "single_ui_on_off"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    return-void
.end method

.method public updateSettings()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SingleUICtrl;->updateSingleModeState(Landroid/content/ContentResolver;)V

    .line 168
    return-void
.end method

.method updateSingleModeState(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SingleUICtrl;->getDefaultBlackList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mBlackListStr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SingleUICtrl;->updateBlackList(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_on_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, "suSwitch":I
    if-nez v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    :cond_0
    return-void
.end method
