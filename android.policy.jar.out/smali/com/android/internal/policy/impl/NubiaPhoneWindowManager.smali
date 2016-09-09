.class public Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;
.super Ljava/lang/Object;
.source "NubiaPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaPhoneWindowManager"


# instance fields
.field private mCameraCtrl:Lcn/nubia/internal/policy/impl/CameraCtrl;

.field private final mContext:Landroid/content/Context;

.field private mEdgeGestureFuncsCtrl:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

.field private final mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

.field private mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

.field private final mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 62
    new-instance v0, Lcom/android/internal/policy/impl/FeatureFunctionManager;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/internal/policy/impl/FeatureFunctionManager;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->initCtrls()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCtrls()V
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "cn.nubia.smartface.feature"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 70
    .local v0, "smartFaceEnable":Z
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcn/nubia/internal/policy/impl/SmartFaceManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v1, v2, v3}, Lcn/nubia/internal/policy/impl/SmartFaceManager;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .line 72
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    new-instance v1, Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/internal/policy/impl/GarbageCleanManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    .line 76
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcn/nubia/internal/policy/impl/CameraCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v1, v2, v3}, Lcn/nubia/internal/policy/impl/CameraCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcn/nubia/internal/policy/impl/CameraCtrl;

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcn/nubia/internal/policy/impl/CameraCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcn/nubia/internal/policy/impl/CameraCtrl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method static isFinishKeyBeforDispatching(J)Z
    .locals 2
    .param p0, "result"    # J

    .prologue
    .line 153
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinishKeyBeforQueueing(J)Z
    .locals 2
    .param p0, "result"    # J

    .prologue
    .line 125
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinishRotationForOrientationLw(I)Z
    .locals 1
    .param p0, "result"    # I

    .prologue
    .line 157
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 87
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ISettingListener;

    .line 88
    .local v2, "listener":Lcom/android/internal/policy/impl/ISettingListener;
    new-instance v3, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;Landroid/os/Handler;Lcom/android/internal/policy/impl/ISettingListener;)V

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;->observe()V

    goto :goto_0

    .line 90
    .end local v2    # "listener":Lcom/android/internal/policy/impl/ISettingListener;
    :cond_0
    return-void
.end method

.method interceptBottomKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/FeatureFunctionManager;->interceptBottomKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public interceptFreeSnapshot()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FeatureFunctionManager;->interceptFreeSnapshot()Z

    move-result v0

    return v0
.end method

.method interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 137
    const-wide/high16 v4, -0x8000000000000000L

    .line 138
    .local v4, "result":J
    const/4 v2, 0x0

    .line 139
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;

    .line 140
    .local v0, "handler":Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v4

    .line 142
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 143
    const-string v3, "NubiaPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intercept Key Before Dispatching result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v4

    .line 149
    .end local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    .end local v4    # "result":J
    .local v6, "result":J
    :goto_1
    return-wide v6

    .line 147
    .end local v6    # "result":J
    .restart local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    .restart local v4    # "result":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 148
    goto :goto_0

    .end local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    :cond_1
    move-wide v6, v4

    .line 149
    .end local v4    # "result":J
    .restart local v6    # "result":J
    goto :goto_1
.end method

.method interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 109
    const-wide/high16 v4, -0x8000000000000000L

    .line 110
    .local v4, "result":J
    const/4 v2, 0x0

    .line 111
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;

    .line 112
    .local v0, "handler":Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J

    move-result-wide v4

    .line 114
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 115
    const-string v3, "NubiaPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intercept Key Before Queueing result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v4

    .line 121
    .end local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    .end local v4    # "result":J
    .local v6, "result":J
    :goto_1
    return-wide v6

    .line 119
    .end local v6    # "result":J
    .restart local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    .restart local v4    # "result":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 120
    goto :goto_0

    .end local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    :cond_1
    move-wide v6, v4

    .line 121
    .end local v4    # "result":J
    .restart local v6    # "result":J
    goto :goto_1
.end method

.method interceptMotionAfterPressKey(I)Z
    .locals 1
    .param p1, "policyFlags"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/FeatureFunctionManager;->interceptMotionAfterPressKey(I)Z

    move-result v0

    return v0
.end method

.method playSoundEffect(Landroid/view/KeyEvent;IZ)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I
    .param p3, "keyguardOn"    # Z

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 208
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 212
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method rotationForOrientationLw(I)I
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 162
    const/4 v0, -0x1

    .line 163
    .local v0, "currentOrientation":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->needRotationScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :cond_0
    return v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mEdgeGestureFuncsCtrl:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->startSmartFaceService()V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->startGarbageCleanService()V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/fingerprints/FingerPrintsSettingUtils;->disableFingerPrints(Landroid/content/Context;)V

    .line 186
    invoke-static {}, Lcn/nubia/internal/policy/impl/fingerprints/FingerPrintsSettingUtils;->enableFingerprintDaemon()V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FeatureFunctionManager;->systemReady()V

    .line 189
    return-void
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/FeatureFunctionManager;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mEdgeGestureFuncsCtrl:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method updateSettings()V
    .locals 3

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/FeatureFunctionManager;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFeatureFunctionManager:Lcom/android/internal/policy/impl/FeatureFunctionManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ISettingListener;

    .line 95
    .local v0, "handler":Lcom/android/internal/policy/impl/ISettingListener;
    invoke-interface {v0}, Lcom/android/internal/policy/impl/ISettingListener;->updateSettings()V

    goto :goto_0

    .line 98
    .end local v0    # "handler":Lcom/android/internal/policy/impl/ISettingListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
