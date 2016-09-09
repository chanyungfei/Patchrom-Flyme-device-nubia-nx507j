.class public Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "HoldAndHoldCtrl.java"


# static fields
.field private static final KEYGUARD_SETTING_FLAG:Ljava/lang/String; = "nubia_edge_keyguard_setting_flag"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE_EXTERNAL:Ljava/lang/String; = "single_ui_mode_external"

.field private static final SU_MODE_EXTERNAL_INVALID:I = 0x64

.field private static final SU_MODE_EXTERNAL_LEFT_A:I = 0xa

.field private static final SU_MODE_EXTERNAL_LEFT_B:I = 0xb

.field private static final SU_MODE_EXTERNAL_RIGHT_A:I = 0x0

.field private static final SU_MODE_EXTERNAL_RIGHT_B:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HoldAndHoldCtrl"


# instance fields
.field private final HOLD_AND_HOLD_SWITCH_OFF:I

.field private final HOLD_AND_HOLD_SWITCH_SCREENSHOT:I

.field private final HOLD_AND_HOLD_SWITCH_SINGLEUI:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 16
    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->HOLD_AND_HOLD_SWITCH_OFF:I

    .line 17
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->HOLD_AND_HOLD_SWITCH_SCREENSHOT:I

    .line 18
    iput v5, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->HOLD_AND_HOLD_SWITCH_SINGLEUI:I

    .line 26
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeListener;)V

    .line 30
    return-void
.end method

.method private doHoldAndHold()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->getPinchGestureSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->takeScreenshot()V

    .line 74
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->getInstance()Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    const-string v2, "take_screenshot"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->holdAndHold(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method private doSingleHandHold(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->getPinchGestureSwitch()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->setSingleMode(I)V

    .line 81
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->getInstance()Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    const-string v2, "start_single_ui"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->holdAndHold(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method private getPinchGestureSwitch()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getHoldHoldSwtich()I

    move-result v0

    return v0
.end method

.method private isKeyguardGestureSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "nubia_edge_keyguard_setting_flag"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, "flag":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private setSingleMode(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 101
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 102
    const-string v0, "HoldAndHoldCtrl"

    const-string v1, "setSingleMode left hand!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->startLeftSingleUI()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 105
    const-string v0, "HoldAndHoldCtrl"

    const-string v1, "setSingleMode right hand!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->startRightSingleUI()V

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 35
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->getPinchGestureSwitch()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isCurrentFreeSnapshot(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isFitSettingApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isHoldUnlockSet(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isKeyguardGestureSetting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isSuperSnapApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 45
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
    .line 57
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeArg;->getType()I

    move-result v0

    .line 58
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 67
    :pswitch_0
    const-string v1, "HoldAndHoldCtrl"

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

    .line 69
    :goto_0
    return-void

    .line 60
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->doHoldAndHold()V

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->doSingleHandHold(I)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public startLeftSingleUI()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 132
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "single_ui_mode_external"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, "mode":I
    if-ne v1, v4, :cond_0

    .line 136
    const-string v2, "single_ui_mode_external"

    const/16 v3, 0xb

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v2, "single_ui_mode_external"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public startRightSingleUI()V
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "single_ui_mode_external"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, "mode":I
    if-nez v1, :cond_0

    .line 123
    const-string v2, "single_ui_mode_external"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v2, "single_ui_mode_external"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
