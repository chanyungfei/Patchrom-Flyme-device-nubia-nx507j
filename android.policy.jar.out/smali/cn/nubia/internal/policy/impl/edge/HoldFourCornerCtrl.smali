.class public Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "HoldFourCornerCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;,
        Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HoldCornerCtrl"


# instance fields
.field private final CORNER_SWITCH_OFF:I

.field private final CORNER_SWITCH_ON:I

.field private mAnimEnd:Z

.field private mGestureState:I

.field private mHoldFourCornerAnim:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

.field private mOrientationHandler:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

.field private mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

.field private mOrientationThread:Landroid/os/HandlerThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSuccess:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 29
    iput v5, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->CORNER_SWITCH_OFF:I

    .line 30
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->CORNER_SWITCH_ON:I

    .line 36
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mAnimEnd:Z

    .line 189
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->initOrientationListener()V

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeListener;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mAnimEnd:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mSuccess:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->holdFourCornerSuccessWithAnim()V

    return-void
.end method

.method private doHoldCornerCancel()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mAnimEnd:Z

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->endHoldFourCornerAnim()V

    .line 122
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mGestureState:I

    .line 123
    return-void
.end method

.method private doHoldCornerDown(Lcn/nubia/edgegesture/EdgeArg;)V
    .locals 3
    .param p1, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    const/4 v2, 0x0

    .line 110
    instance-of v1, p1, Lcn/nubia/edgegesture/FourCornerArg;

    if-nez v1, :cond_1

    .line 116
    .end local p1    # "arg":Lcn/nubia/edgegesture/EdgeArg;
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local p1    # "arg":Lcn/nubia/edgegesture/EdgeArg;
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mSuccess:Z

    .line 112
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/16 v1, 0x13

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mGestureState:I

    .line 114
    check-cast p1, Lcn/nubia/edgegesture/FourCornerArg;

    .end local p1    # "arg":Lcn/nubia/edgegesture/EdgeArg;
    invoke-virtual {p1}, Lcn/nubia/edgegesture/FourCornerArg;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 115
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-direct {p0, v0, v2}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->playHoldFourCornerAnim(Landroid/view/MotionEvent;Z)Z

    goto :goto_0
.end method

.method private doHoldCornerGesture(Lcn/nubia/edgegesture/EdgeArg;)V
    .locals 4
    .param p1, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    const/4 v3, 0x7

    .line 131
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isLandScape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    .end local p1    # "arg":Lcn/nubia/edgegesture/EdgeArg;
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local p1    # "arg":Lcn/nubia/edgegesture/EdgeArg;
    :cond_1
    instance-of v1, p1, Lcn/nubia/edgegesture/FourCornerArg;

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mGestureState:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mGestureState:I

    if-ne v1, v3, :cond_0

    .line 136
    :cond_2
    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mGestureState:I

    .line 137
    check-cast p1, Lcn/nubia/edgegesture/FourCornerArg;

    .end local p1    # "arg":Lcn/nubia/edgegesture/EdgeArg;
    invoke-virtual {p1}, Lcn/nubia/edgegesture/FourCornerArg;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 138
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->holdFourCornerSuccessWithAnim()V

    goto :goto_0
.end method

.method private endHoldFourCornerAnim()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mAnimEnd:Z

    .line 223
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mHoldFourCornerAnim:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->removeAnim()V

    .line 224
    return-void
.end method

.method private getGestureSwitchState()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getHoldFourCornerSwitch()I

    move-result v0

    return v0
.end method

.method private holdFourCornerSuccessWithAnim()V
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mAnimEnd:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mSuccess:Z

    .line 228
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mSuccess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mHoldFourCornerAnim:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    if-nez v0, :cond_2

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mHoldFourCornerAnim:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->holdFourCornerSuccess()V

    .line 232
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->lunchApp()V

    goto :goto_1
.end method

.method private initOrientationListener()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HoldCornerCtrl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationThread:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationHandler:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

    .line 65
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationHandler:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    .line 67
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;->enable()V

    .line 69
    return-void
.end method

.method private isLandScape()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;->getProposedRotation()I

    move-result v0

    .line 127
    .local v0, "orientation":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lunchApp()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->luncherCamera()V

    .line 143
    return-void
.end method

.method private luncherCamera()V
    .locals 7

    .prologue
    .line 146
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isCameraApp(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    const v5, 0x3040001

    const v6, 0x3040002

    invoke-static {v4, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 152
    .local v3, "opts":Landroid/app/ActivityOptions;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const v4, 0x10304000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const-string v4, "com.android.camera"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :try_start_0
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :goto_0
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->getInstance()Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    const-string v6, "start_camera"

    invoke-virtual {v4, v5, v6}, Lcn/nubia/internal/policy/impl/edge/StatisticsCollector;->fourCornerHold(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_0
    return-void

    .line 161
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "el":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private playHoldFourCornerAnim(Landroid/view/MotionEvent;Z)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "posChanged"    # Z

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mAnimEnd:Z

    .line 205
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mHoldFourCornerAnim:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationHandler:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mHoldFourCornerAnim:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    .line 208
    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mHoldFourCornerAnim:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    new-instance v1, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$2;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$2;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)V

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->setExtListener(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;)V

    .line 217
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mHoldFourCornerAnim:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->play(Landroid/view/MotionEvent;Z)V

    .line 218
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->getCurrentRunAppComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 74
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->getGestureSwitchState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isSystemUIApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isSetupWizardApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isCurrentFreeSnapshot(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isCameraApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isFitSettingApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isSuperSnapApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 84
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
    .line 94
    invoke-virtual {p1}, Lcn/nubia/edgegesture/EdgeArg;->getType()I

    move-result v0

    .line 95
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 105
    :goto_0
    const-string v1, "HoldCornerCtrl"

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

    .line 107
    :goto_1
    return-void

    .line 97
    :sswitch_0
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->doHoldCornerDown(Lcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_1

    .line 100
    :sswitch_1
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->doHoldCornerGesture(Lcn/nubia/edgegesture/EdgeArg;)V

    goto :goto_1

    .line 103
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->doHoldCornerCancel()V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
    .end sparse-switch
.end method
