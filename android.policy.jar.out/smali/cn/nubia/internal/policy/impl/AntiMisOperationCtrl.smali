.class public Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;
.super Ljava/lang/Object;
.source "AntiMisOperationCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;


# static fields
.field private static final ACTION_SCREEN_SAVER_SHOW:Ljava/lang/String; = "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"


# instance fields
.field private final PACKNAME:Ljava/lang/String;

.field private final SERVICE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private isScreenSaverShow:Z

.field private mAvoidMistouchObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPocketModeObserver:Landroid/database/ContentObserver;

.field mScreenSaverReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "AntiMisoperation"

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->isScreenSaverShow:Z

    .line 26
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->PACKNAME:Ljava/lang/String;

    .line 27
    const-string v0, "com.android.systemui.screensaver.ScreenSaverService"

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->SERVICE_NAME:Ljava/lang/String;

    .line 64
    new-instance v0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$2;-><init>(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mPocketModeObserver:Landroid/database/ContentObserver;

    .line 129
    new-instance v0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$3;-><init>(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mAvoidMistouchObserver:Landroid/database/ContentObserver;

    .line 32
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 33
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->initScreenSaver()V

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->isScreenSaverShow:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->isPocketModeEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->stopScreenSaverService()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->startScreenSaverService()V

    return-void
.end method

.method private createDataBaseListener()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_Pocket_Profile_isenable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mPocketModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_palmrejection"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mAvoidMistouchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    return-void
.end method

.method private initScreenSaver()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->createDataBaseListener()V

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method

.method private isPocketModeEnable()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 74
    const/4 v5, 0x0

    .line 83
    .local v5, "pocketEnabled":Z
    const/4 v0, 0x0

    .line 84
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 86
    .local v4, "helper":Ljava/lang/Object;
    :try_start_0
    const-string v6, "ztemt.profilehelper.ProfileHelper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    const-string v6, "getInstance"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 88
    .local v3, "getInstance":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    aput-object v9, v6, v8

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 89
    const-string v6, "getPocketProfileEnable"

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 90
    .local v2, "getEnable":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v6, v5

    .line 96
    .end local v2    # "getEnable":Ljava/lang/reflect/Method;
    .end local v3    # "getInstance":Ljava/lang/reflect/Method;
    .end local v4    # "helper":Ljava/lang/Object;
    :goto_0
    return v6

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 94
    goto :goto_0
.end method

.method private startScreenSaverService()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.screensaver.ScreenSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 103
    return-void
.end method

.method private stopScreenSaverService()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.screensaver.ScreenSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 109
    return-void
.end method


# virtual methods
.method public initScreenSaverService()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->isPocketModeEnable()Z

    move-result v1

    .line 56
    .local v1, "pocketEnabled":Z
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_palmrejection"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 59
    .local v0, "avoidMistouchEnable":Z
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->startScreenSaverService()V

    .line 62
    :cond_0
    return-void

    .end local v0    # "avoidMistouchEnable":Z
    :cond_1
    move v0, v2

    .line 56
    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 150
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->isScreenSaverShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 151
    const-wide/16 v0, 0x0

    .line 153
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method
