.class public Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "LoopSideCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoopSideCtrl"


# instance fields
.field private final LOOP_SWITCH_OFF:I

.field private final LOOP_SWITCH_ON:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 20
    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->LOOP_SWITCH_OFF:I

    .line 21
    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->LOOP_SWITCH_ON:I

    .line 26
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeListener;)V

    .line 29
    return-void
.end method

.method private clearRecentTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.auto_test.clear"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "paly_animation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v1, "show_toast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 75
    return-void
.end method

.method private doLoopGesture()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->getGestureSwitchState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->clearRecentTask()V

    .line 61
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->getInstance()Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "clear_task"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->singleSideLoop(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method private getGestureSwitchState()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getLoopSlideSwitch()I

    move-result v0

    return v0
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 34
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isSystemUIApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isCurrentFreeSnapshot(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isFitSettingApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isSuperSnapApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 42
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

    .line 54
    const-string v1, "LoopSideCtrl"

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

    .line 56
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->doLoopGesture()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
