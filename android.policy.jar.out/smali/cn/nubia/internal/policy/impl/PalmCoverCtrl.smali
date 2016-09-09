.class public Lcn/nubia/internal/policy/impl/PalmCoverCtrl;
.super Ljava/lang/Object;
.source "PalmCoverCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/ISettingListener;
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "PalmCoverCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyCode:I

.field private mPalmCoverEnable:I

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mPalmCoverEnable:I

    .line 32
    iput v0, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mKeyCode:I

    .line 35
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mPowerManager:Landroid/os/PowerManager;

    .line 37
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->getKeyEvent()V

    .line 38
    return-void
.end method

.method private enablePalmGesture(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 101
    :try_start_0
    const-string v2, "PalmCoverCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set palm detector "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mContext:Landroid/content/Context;

    const-string v3, "system_access"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnubia/os/SystemAccessManager;

    .line 104
    .local v1, "systemAccessManager":Lnubia/os/SystemAccessManager;
    invoke-virtual {v1, p1}, Lnubia/os/SystemAccessManager;->enablePalmGesture(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "systemAccessManager":Lnubia/os/SystemAccessManager;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PalmCoverCtrl"

    const-string v3, "enablePalmCoverEvent failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getKeyEvent()V
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 44
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v3, "android.view.KeyEvent"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-string v3, "KEYCODE_PALM_LOCK"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mKeyCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v6, -0x8000000000000000L

    .line 58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget v3, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mKeyCode:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mPalmCoverEnable:I

    if-ne v2, v4, :cond_0

    if-nez p3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-wide v6

    .line 65
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mContext:Landroid/content/Context;

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 66
    .local v1, "telephonyManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    const-string v2, "PalmCoverCtrl"

    const-string v3, "palm error because phone"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v1    # "telephonyManager":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "PalmCoverCtrl"

    const-string v3, "getPhoneInterface() error"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v2, "PalmCoverCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "go to sleep for palm cover keycode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mKeyCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 82
    const-string v0, "palm_cover"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    return-void
.end method

.method public updateSettings()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "palm_cover"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 92
    .local v0, "palmCover":I
    iget v3, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mPalmCoverEnable:I

    if-eq v3, v0, :cond_0

    .line 93
    iput v0, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mPalmCoverEnable:I

    .line 94
    iget v3, p0, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->mPalmCoverEnable:I

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;->enablePalmGesture(Z)V

    .line 96
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 94
    goto :goto_0
.end method
