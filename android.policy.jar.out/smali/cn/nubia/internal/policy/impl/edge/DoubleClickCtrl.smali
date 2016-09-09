.class public Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "DoubleClickCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DoubleClickCtrl"


# instance fields
.field private final TAP_SWITCH_OFF:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 17
    const-string v0, "off"

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->TAP_SWITCH_OFF:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeListener;)V

    .line 25
    return-void
.end method

.method private doDoubleTap()V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->getDoubleGestureSwitch()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "enable":Ljava/lang/String;
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->injectBackKey()V

    .line 63
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->getInstance()Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->mContext:Landroid/content/Context;

    const-string v3, "inject_back_key"

    invoke-virtual {v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->doubleClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :cond_1
    return-void
.end method

.method private getDoubleGestureSwitch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getDoubleClickSwitch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private injectBackKey()V
    .locals 9

    .prologue
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 69
    .local v2, "now":J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 73
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x64

    add-long/2addr v4, v2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 77
    return-void
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 30
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->isLauncherApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->isHoldUnlockSet(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->isFitSettingApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->isSuperSnapApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleEdgeGesture(Lcn/nubia/edgegesture/EdgeArg;)V
    .locals 4
    .param p1, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeArg;->getType()I

    move-result v0

    .line 49
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 55
    const-string v1, "DoubleClickCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEdgeGesture Not listen this type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;->doDoubleTap()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
