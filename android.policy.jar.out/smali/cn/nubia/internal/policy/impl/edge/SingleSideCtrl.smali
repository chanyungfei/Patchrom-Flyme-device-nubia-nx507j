.class public Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "SingleSideCtrl.java"


# static fields
.field private static final MAX_TASKS:I = 0x15

.field private static final TAG:Ljava/lang/String; = "SingleSideCtrl"


# instance fields
.field private final APP_SEPARATOR:Ljava/lang/String;

.field private final COMPONENT_SEPARATOR:Ljava/lang/String;

.field private final SWITCH_APP:Ljava/lang/String;

.field private final SWITCH_OFF:Ljava/lang/String;

.field mActivityStackReceiver:Landroid/content/BroadcastReceiver;

.field private mAppEndAnim:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

.field private mChangeBySwitch:Z

.field private mCurrentAppIndex:I

.field private mNeedUpdate:Z

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 37
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 38
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    .line 39
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 41
    const-string v1, "off"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->SWITCH_OFF:Ljava/lang/String;

    .line 42
    const-string v1, "switch_app"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->SWITCH_APP:Ljava/lang/String;

    .line 43
    const-string v1, ";"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->APP_SEPARATOR:Ljava/lang/String;

    .line 44
    const-string v1, ","

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->COMPONENT_SEPARATOR:Ljava/lang/String;

    .line 380
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;)V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 54
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    .line 58
    iput-boolean v5, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    new-array v2, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeListener;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    return p1
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 274
    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isHomeApplication(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 283
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSplitScreenHome(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSystemUIApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isAppLockApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkComponentNameValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static collapseStatusBar(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 420
    :try_start_0
    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 421
    .local v2, "service":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 422
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 424
    .local v3, "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 426
    .local v1, "expand":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 427
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1    # "expand":Ljava/lang/reflect/Method;
    .end local v2    # "service":Ljava/lang/Object;
    .end local v3    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doGestureFunction(ZZLjava/lang/String;Lcn/nubia/edgegesture/EdgeArg;)V
    .locals 1
    .param p1, "isLeft"    # Z
    .param p2, "isUp"    # Z
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    .line 130
    const-string v0, "switch_app"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0, p1, p2, p4}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doSwitchApp(ZZLcn/nubia/edgegesture/EdgeArg;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->luncherPresetApp(ZZLjava/lang/String;Lcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_0
.end method

.method private doSideSlide(ZLcn/nubia/edgegesture/EdgeArg;)V
    .locals 7
    .param p1, "isLeft"    # Z
    .param p2, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getGestureSwitch(Z)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "switchState":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/edgegesture/EdgeArg;->getType()I

    move-result v1

    .line 108
    .local v1, "type":I
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->collapseStatusBar(Landroid/content/Context;)V

    .line 110
    if-eqz p1, :cond_4

    .line 111
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 112
    invoke-direct {p0, v2, v3, v0, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZZLjava/lang/String;Lcn/nubia/edgegesture/EdgeArg;)V

    .line 123
    :cond_2
    :goto_1
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->getInstance()Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    if-ne v1, v6, :cond_6

    :goto_2
    invoke-virtual {v4, v5, v2, p1, v0}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->singleSideMove(Landroid/content/Context;ZZLjava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    if-ne v1, v2, :cond_2

    .line 114
    invoke-direct {p0, v2, v2, v0, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZZLjava/lang/String;Lcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_1

    .line 117
    :cond_4
    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    .line 118
    invoke-direct {p0, v3, v3, v0, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZZLjava/lang/String;Lcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_1

    .line 119
    :cond_5
    if-ne v1, v6, :cond_2

    .line 120
    invoke-direct {p0, v3, v2, v0, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZZLjava/lang/String;Lcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_1

    :cond_6
    move v2, v3

    .line 123
    goto :goto_2
.end method

.method private filterRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 257
    const/4 v0, 0x1

    .line 259
    .local v0, "canBeAdd":Z
    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSystemUIApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    const/4 v0, 0x0

    .line 270
    :cond_1
    return v0
.end method

.method private getGestureSwitch(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isLeft"    # Z

    .prologue
    .line 377
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getSingleSlideSwitch(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launchAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;Z)V
    .locals 9
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "isUp"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    const-string v5, "SingleSideCtrl"

    const-string v6, "launchAppInternal: app is empty !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "component":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 334
    :cond_1
    const-string v5, "SingleSideCtrl"

    const-string v6, "launchAppInternal: app\'s component is invalid !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_2
    aget-object v5, v0, v7

    aget-object v6, v0, v8

    invoke-direct {p0, v5, v6}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->checkComponentNameValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 339
    const-string v5, "SingleSideCtrl"

    const-string v6, "launchAppInternal: app\'s component is empty !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 344
    .local v1, "currentComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_4

    aget-object v5, v0, v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 346
    const-string v5, "SingleSideCtrl"

    const-string v6, "launchAppInternal: app\'s component is current running !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    aget-object v5, v0, v7

    aget-object v6, v0, v8

    invoke-direct {p0, v5, v6, p3}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->showToast(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 351
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const v5, 0x10304000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    aget-object v5, v0, v7

    aget-object v6, v0, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :try_start_0
    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    .line 364
    .local v3, "el":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private luncherPresetApp(ZZLjava/lang/String;Lcn/nubia/edgegesture/EdgeArg;)V
    .locals 5
    .param p1, "isLeft"    # Z
    .param p2, "isUp"    # Z
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    .line 177
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    const-string v2, "SingleSideCtrl"

    const-string v3, "luncherPresetApp: presetapp is empty or keyguard locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v2, ";"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "apps":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 184
    :cond_2
    const-string v2, "SingleSideCtrl"

    const-string v3, "luncherPresetApp: presetapp is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_3
    if-eqz p2, :cond_4

    .line 189
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3040003

    const v4, 0x3040004

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 192
    .local v1, "opts":Landroid/app/ActivityOptions;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {p0, v2, v1, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->launchAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;Z)V

    goto :goto_0

    .line 195
    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3040005

    const v4, 0x3040006

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 198
    .restart local v1    # "opts":Landroid/app/ActivityOptions;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v2, v1, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->launchAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;Z)V

    goto :goto_0
.end method

.method private playAppEnd(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .prologue
    .line 411
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mAppEndAnim:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mAppEndAnim:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    .line 414
    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mAppEndAnim:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->prepare()V

    .line 415
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mAppEndAnim:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    invoke-virtual {v0, p1}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->play(Z)V

    .line 416
    return-void
.end method

.method private showToast(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "isUp"    # Z

    .prologue
    .line 394
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 397
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 398
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 399
    .local v1, "appName":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mToast:Landroid/widget/Toast;

    if-nez v6, :cond_0

    .line 400
    iget-object v6, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mToast:Landroid/widget/Toast;

    .line 402
    :cond_0
    if-eqz p3, :cond_1

    const v4, 0x30c0041

    .line 403
    .local v4, "resId":I
    :goto_0
    iget-object v6, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "tips":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v6, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v4    # "resId":I
    .end local v5    # "tips":Ljava/lang/String;
    :goto_1
    return-void

    .line 402
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appName":Ljava/lang/CharSequence;
    :cond_1
    const v4, 0x30c0042

    goto :goto_0

    .line 406
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private switchNextOrPreviousApp(ZZLcn/nubia/edgegesture/EdgeArg;)V
    .locals 5
    .param p1, "isLeft"    # Z
    .param p2, "isUp"    # Z
    .param p3, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-boolean v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    if-eqz v2, :cond_0

    .line 145
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 146
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 147
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->updateRecentAppSwitchList()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 150
    .local v0, "currentRunApp":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->filterRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 151
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 156
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 159
    if-eqz p2, :cond_4

    .line 160
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_3

    .line 161
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 173
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->switchToNewApp(ZZLcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_0

    .line 163
    :cond_3
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1

    .line 166
    :cond_4
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    if-nez v2, :cond_5

    .line 167
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1

    .line 169
    :cond_5
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1
.end method

.method private switchToNewApp(ZZLcn/nubia/edgegesture/EdgeArg;)V
    .locals 9
    .param p1, "isLeft"    # Z
    .param p2, "isUp"    # Z
    .param p3, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    const/4 v8, 0x1

    .line 203
    instance-of v4, p3, Lcn/nubia/edgegesture/SingleSideArg;

    if-nez v4, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    iget v5, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 206
    .local v2, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v2, :cond_0

    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, "opts":Landroid/app/ActivityOptions;
    if-eqz p2, :cond_2

    .line 213
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v5, 0x3040007

    const v6, 0x3040008

    invoke-static {v4, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 223
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "currentPackageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    const-string v4, "SingleSideCtrl"

    const-string v5, "currenr running app is the same as that to be started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 229
    invoke-direct {p0, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->playAppEnd(Z)V

    goto :goto_0

    .line 218
    .end local v0    # "currentPackageName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v5, 0x3040009

    const v6, 0x304000a

    invoke-static {v4, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_1

    .line 237
    .restart local v0    # "currentPackageName":Ljava/lang/String;
    :cond_3
    iget v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v4, :cond_4

    .line 238
    iget-object v1, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 239
    .local v1, "intent":Landroid/content/Intent;
    const v4, 0x10104000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 253
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    iput-boolean v8, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    goto :goto_0

    .line 245
    :cond_4
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 250
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v8, v6}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method private updateRecentAppSwitchList()V
    .locals 7

    .prologue
    .line 304
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 305
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 307
    :cond_0
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 310
    .local v3, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 324
    :cond_1
    return-void

    .line 312
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 313
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 314
    .local v2, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v2, :cond_4

    .line 312
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_4
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 318
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 319
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 73
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSystemUIApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isCurrentFreeSnapshot(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isFitSettingApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isCallApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSuperSnapApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 82
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method doSwitchApp(ZZLcn/nubia/edgegesture/EdgeArg;)V
    .locals 1
    .param p1, "isLeft"    # Z
    .param p2, "isUp"    # Z
    .param p3, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->switchNextOrPreviousApp(ZZLcn/nubia/edgegesture/EdgeArg;)V

    .line 141
    :cond_0
    return-void
.end method

.method handleEdgeGesture(Lcn/nubia/edgegesture/EdgeArg;)V
    .locals 4
    .param p1, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    .line 88
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeArg;->getType()I

    move-result v0

    .line 89
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 99
    const-string v1, "SingleSideCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not listen this type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doSideSlide(ZLcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doSideSlide(ZLcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
