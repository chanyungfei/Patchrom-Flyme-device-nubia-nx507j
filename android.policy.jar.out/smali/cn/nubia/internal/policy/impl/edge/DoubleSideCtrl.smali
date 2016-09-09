.class public Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "DoubleSideCtrl.java"


# static fields
.field private static final AUTOMATIC_MODE_RANGE:F = 0.1f

.field private static final MANUAL_MODE_RANGE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DoubleSideCtrl"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "zte_auto_brightness_adj"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_0:Ljava/lang/String; = "zte_auto_brightness_adj_0"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_1:Ljava/lang/String; = "zte_auto_brightness_adj_1"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_2:Ljava/lang/String; = "zte_auto_brightness_adj_2"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_3:Ljava/lang/String; = "zte_auto_brightness_adj_3"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_4:Ljava/lang/String; = "zte_auto_brightness_adj_4"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_5:Ljava/lang/String; = "zte_auto_brightness_adj_5"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_6:Ljava/lang/String; = "zte_auto_brightness_adj_6"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_7:Ljava/lang/String; = "zte_auto_brightness_adj_7"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_8:Ljava/lang/String; = "zte_auto_brightness_adj_8"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_MODE:Ljava/lang/String; = "zte_auto_brightness_adj_mode"

.field private static final ZTE_AUTO_BRIGHTNESS_CONTROL_MODE:Ljava/lang/String; = "zte_auto_brightness_control_mode"

.field private static final ZTE_AUTO_BRIGHTNESS_LEVEL:Ljava/lang/String; = "zte_auto_brightness_level"

.field private static final ZTE_AUTO_BRIGHTNESS_MODE_ALL_SCENE:I = 0x0

.field private static final ZTE_AUTO_BRIGHTNESS_MODE_CURRENT_SCENE:I = 0x1


# instance fields
.field private final SWITCH_BRIGHTNESS:I

.field private final SWITCH_OFF:I

.field private final SWITCH_VOLUME:I

.field private mDownCount:J

.field private mUpCount:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 25
    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->SWITCH_OFF:I

    .line 26
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->SWITCH_BRIGHTNESS:I

    .line 27
    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->SWITCH_VOLUME:I

    .line 29
    iput-wide v6, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mUpCount:J

    .line 30
    iput-wide v6, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mDownCount:J

    .line 36
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeListener;)V

    .line 39
    return-void
.end method

.method private checkCounterValue()V
    .locals 6

    .prologue
    const-wide v4, 0x7ffffffffffffffeL

    const-wide/16 v2, 0x0

    .line 242
    iget-wide v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mUpCount:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 243
    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mUpCount:J

    .line 245
    :cond_0
    iget-wide v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mDownCount:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 246
    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mDownCount:J

    .line 248
    :cond_1
    return-void
.end method

.method private doDoubleSideGesture(I)V
    .locals 1
    .param p1, "gestureType"    # I

    .prologue
    .line 71
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->executeFunction(Z)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->executeFunction(Z)V

    goto :goto_0
.end method

.method private executeFunction(Z)V
    .locals 3
    .param p1, "isUp"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->getGestureSwitchState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->getInstance()Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "adjust_brightness"

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->doubleSideMove(Landroid/content/Context;ZLjava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->setBrightness(Z)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->getGestureSwitchState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->getInstance()Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "adjust_volume"

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->doubleSideMove(Landroid/content/Context;ZLjava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->setVolume(Z)V

    goto :goto_0
.end method

.method private getGestureSwitchState()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getDoubleSlideSwitch()I

    move-result v0

    return v0
.end method

.method private getZteAutoBrightnessLevel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zte_auto_brightness_level"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    .line 207
    const-string v1, "zte_auto_brightness_adj_5"

    :goto_0
    return-object v1

    .line 189
    :pswitch_0
    const-string v1, "zte_auto_brightness_adj_0"

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v1, "zte_auto_brightness_adj_1"

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v1, "zte_auto_brightness_adj_2"

    goto :goto_0

    .line 195
    :pswitch_3
    const-string v1, "zte_auto_brightness_adj_3"

    goto :goto_0

    .line 197
    :pswitch_4
    const-string v1, "zte_auto_brightness_adj_4"

    goto :goto_0

    .line 199
    :pswitch_5
    const-string v1, "zte_auto_brightness_adj_5"

    goto :goto_0

    .line 201
    :pswitch_6
    const-string v1, "zte_auto_brightness_adj_6"

    goto :goto_0

    .line 203
    :pswitch_7
    const-string v1, "zte_auto_brightness_adj_7"

    goto :goto_0

    .line 205
    :pswitch_8
    const-string v1, "zte_auto_brightness_adj_8"

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setBrightness(Z)V
    .locals 9
    .param p1, "isIncrease"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 115
    iget-object v6, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 117
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v6, "screen_brightness_mode"

    invoke-static {v1, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 121
    .local v3, "mode":I
    const-string v6, "zte_auto_brightness_control_mode"

    invoke-static {v1, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 124
    .local v5, "zteControlMode":I
    if-ne v3, v7, :cond_2

    .line 125
    if-ne v5, v7, :cond_0

    .line 126
    if-eqz p1, :cond_1

    .line 127
    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v6}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->setZteAutoBrightnessAdjValue(F)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const v6, -0x42333333    # -0.1f

    invoke-direct {p0, v6}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->setZteAutoBrightnessAdjValue(F)V

    goto :goto_0

    .line 134
    :cond_2
    :try_start_0
    const-string v6, "screen_brightness"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 137
    .local v2, "currentBrightness":I
    if-eqz p1, :cond_4

    .line 138
    add-int/lit8 v0, v2, 0xa

    .line 143
    .local v0, "brightness":I
    :goto_1
    const/4 v6, 0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    const/16 v6, 0xff

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 148
    .local v4, "power":Landroid/os/IPowerManager;
    if-eqz v4, :cond_3

    .line 149
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 151
    :cond_3
    const-string v6, "screen_brightness"

    invoke-static {v1, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 153
    .end local v0    # "brightness":I
    .end local v2    # "currentBrightness":I
    .end local v4    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 140
    .restart local v2    # "currentBrightness":I
    :cond_4
    add-int/lit8 v0, v2, -0xa

    .restart local v0    # "brightness":I
    goto :goto_1

    .line 154
    .end local v0    # "brightness":I
    .end local v2    # "currentBrightness":I
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private setVolume(Z)V
    .locals 9
    .param p1, "isIncrease"    # Z

    .prologue
    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 213
    .local v2, "now":J
    if-eqz p1, :cond_1

    .line 214
    iget-wide v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mUpCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mUpCount:J

    .line 215
    iget-wide v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mUpCount:J

    const-wide/16 v4, 0x2

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 220
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x64

    add-long/2addr v4, v2

    const/4 v6, 0x1

    const/16 v7, 0x18

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 238
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->checkCounterValue()V

    .line 239
    return-void

    .line 226
    :cond_1
    iget-wide v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mDownCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mDownCount:J

    .line 227
    iget-wide v0, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mDownCount:J

    const-wide/16 v4, 0x2

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x19

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 232
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x64

    add-long/2addr v4, v2

    const/4 v6, 0x1

    const/16 v7, 0x19

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    goto :goto_0
.end method

.method private setZteAutoBrightnessAdjValue(F)V
    .locals 9
    .param p1, "value"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    .line 160
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_adj_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, "zteAutoBrightnessAdjMode":I
    if-nez v2, :cond_0

    .line 164
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_adj"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 166
    .local v1, "currentAdj":F
    add-float v0, v1, p1

    .line 167
    .local v0, "adj":F
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 168
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 169
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_adj"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 181
    :goto_0
    return-void

    .line 172
    .end local v0    # "adj":F
    .end local v1    # "currentAdj":F
    :cond_0
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->getZteAutoBrightnessLevel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 175
    .restart local v1    # "currentAdj":F
    add-float v0, v1, p1

    .line 176
    .restart local v0    # "adj":F
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 177
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 178
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->getZteAutoBrightnessLevel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 44
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->getGestureSwitchState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->isCurrentFreeSnapshot(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->isHoldUnlockSet(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->isFitSettingApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->isSuperSnapApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 52
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
    .line 58
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeArg;->getType()I

    move-result v0

    .line 59
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 65
    const-string v1, "DoubleSideCtrl"

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

    .line 68
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;->doDoubleSideGesture(I)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
