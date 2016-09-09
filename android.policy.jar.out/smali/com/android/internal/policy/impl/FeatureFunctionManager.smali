.class public final Lcom/android/internal/policy/impl/FeatureFunctionManager;
.super Ljava/lang/Object;
.source "FeatureFunctionManager.java"


# instance fields
.field private mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

.field private final mContext:Landroid/content/Context;

.field final mDispatchingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

.field private mFingerprintCtrl:Lcom/android/internal/policy/impl/FingerprintCtrl;

.field private mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

.field private final mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

.field final mQueueingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mSettingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/ISettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

.field private mSplitscreenCtrl:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

.field private mVolleyGestureCtrl:Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 58
    iput-object p3, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FeatureFunctionManager;->init()V

    .line 60
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    .line 64
    new-instance v6, Lcom/android/internal/policy/impl/FingerprintCtrl;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v6, v7}, Lcom/android/internal/policy/impl/FingerprintCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/internal/policy/impl/FingerprintCtrl;

    .line 65
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFingerprintCtrl:Lcom/android/internal/policy/impl/FingerprintCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v6, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    .line 69
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v6, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    .line 73
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v6, Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-direct {v6}, Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    .line 78
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v6, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v6, v7}, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;-><init>(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    .line 84
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v2, v6, v7}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 89
    .local v2, "mTouchHomeLightCtrl":Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v6, "1"

    const-string v7, "persist.sys.singlehand"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    new-instance v6, Lcom/android/internal/policy/impl/SingleUICtrl;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/policy/impl/SingleUICtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    .line 96
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    new-instance v5, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    .line 105
    .local v5, "touchGestureFuncsCtrl":Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v6, Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

    .line 109
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/tp/easy_wakeup_gesture"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "gestureFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    new-instance v0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v7}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    .line 116
    .local v0, "doubleClickScreenCtrl":Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v3, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcn/nubia/internal/policy/impl/PalmCoverCtrl;-><init>(Landroid/content/Context;)V

    .line 119
    .local v3, "palmCoverCtrl":Lcn/nubia/internal/policy/impl/PalmCoverCtrl;
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v0    # "doubleClickScreenCtrl":Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;
    .end local v3    # "palmCoverCtrl":Lcn/nubia/internal/policy/impl/PalmCoverCtrl;
    :cond_1
    new-instance v6, Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcn/nubia/internal/policy/impl/SplitscreenCtrl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

    .line 125
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-boolean v6, Lnubia/smartkey/Utils;->sHasSmartKey:Z

    if-eqz v6, :cond_2

    .line 129
    new-instance v4, Lcom/android/internal/policy/impl/SmartKeyCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v4, v6}, Lcom/android/internal/policy/impl/SmartKeyCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 130
    .local v4, "smartKeyCtrl":Lcom/android/internal/policy/impl/SmartKeyCtrl;
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v4    # "smartKeyCtrl":Lcom/android/internal/policy/impl/SmartKeyCtrl;
    :cond_2
    return-void
.end method


# virtual methods
.method interceptBottomKey(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/internal/policy/impl/SplitscreenCtrl;->interceptBottomKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public interceptFreeSnapshot()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->doFreeSnapshot()Z

    move-result v0

    return v0
.end method

.method interceptMotionAfterPressKey(I)Z
    .locals 1
    .param p1, "policyFlags"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

    invoke-virtual {v0, p1}, Lcn/nubia/internal/policy/impl/SplitscreenCtrl;->interceptMotionAfterPressKey(I)Z

    move-result v0

    return v0
.end method

.method public isSystemReady()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    return v0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;->systemReady()V

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSplitscreenCtrl:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/SplitscreenCtrl;->systemReady(Landroid/os/Handler;)V

    .line 154
    return-void
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "sys.perf.activate"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
