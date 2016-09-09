.class public Lcom/android/internal/policy/impl/NubiaGlobalActions;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;,
        Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;,
        Lcom/android/internal/policy/impl/NubiaGlobalActions$CallBackShutdownReboot;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

.field mAirplaneFrameLayout:Landroid/widget/FrameLayout;

.field mAirplaneImageView:Landroid/widget/ImageView;

.field mAirplaneLayout:Landroid/widget/LinearLayout;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mGlobalActionLayout:Landroid/widget/LinearLayout;

.field mGlobalActionView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field mPowerOffLayout:Landroid/widget/FrameLayout;

.field mRebootLayout:Landroid/widget/FrameLayout;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field mSilentFrameLayout:Landroid/widget/FrameLayout;

.field mSilentImageView:Landroid/widget/ImageView;

.field mSilentLayout:Landroid/widget/LinearLayout;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;

.field mVibratorFrameLayout:Landroid/widget/FrameLayout;

.field mVibratorImageView:Landroid/widget/ImageView;

.field mVibratorLayout:Landroid/widget/LinearLayout;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .line 120
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mKeyguardShowing:Z

    .line 121
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDeviceProvisioned:Z

    .line 122
    sget-object v3, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    .line 123
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mIsWaitingForEcmExit:Z

    .line 1113
    new-instance v3, Lcom/android/internal/policy/impl/NubiaGlobalActions$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$11;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1145
    new-instance v3, Lcom/android/internal/policy/impl/NubiaGlobalActions$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$12;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1155
    new-instance v3, Lcom/android/internal/policy/impl/NubiaGlobalActions$13;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/internal/policy/impl/NubiaGlobalActions$13;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1168
    new-instance v3, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHandler:Landroid/os/Handler;

    .line 151
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 153
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 155
    const-string v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 159
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 171
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasTelephony:Z

    .line 172
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 177
    .local v2, "vibrator":Landroid/os/Vibrator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasVibrator:Z

    .line 179
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x112007a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mShowSilentToggle:Z

    .line 182
    return-void

    :cond_0
    move v3, v5

    .line 177
    goto :goto_0

    :cond_1
    move v4, v5

    .line 179
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->setRingerModeView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->setAirplaneView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/NubiaGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/NubiaGlobalActions;Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;>;"
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 627
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 629
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v11, :cond_6

    .line 632
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 637
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 638
    .local v5, "user":Landroid/content/pm/UserInfo;
    if-nez v6, :cond_1

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_0

    move v8, v11

    .line 640
    .local v8, "isCurrentUser":Z
    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 642
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3
    new-instance v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$10;

    const v2, 0x10803cd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_5

    const-string v1, " \u2714"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions$10;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 663
    .local v0, "switchToUser":Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 634
    .end local v0    # "switchToUser":Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    :catch_0
    move-exception v9

    .line 635
    .local v9, "re":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6    # "currentUser":Landroid/content/pm/UserInfo;
    goto :goto_0

    .end local v9    # "re":Landroid/os/RemoteException;
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    move v8, v12

    .line 638
    goto :goto_2

    :cond_1
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_2

    move v8, v11

    goto :goto_2

    :cond_2
    move v8, v12

    goto :goto_2

    .line 640
    .restart local v8    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 642
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v1, "Primary"

    goto :goto_4

    :cond_5
    const-string v1, ""

    goto :goto_5

    .line 666
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1207
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1208
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1209
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1210
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    .line 1213
    :cond_0
    return-void

    .line 1203
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1210
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private createDialog()Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 422
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_3

    .line 423
    new-instance v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;

    .line 428
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;

    const v2, 0x108036f

    const v3, 0x1080371

    const v4, 0x104011a

    const v5, 0x104011b

    const v6, 0x104011c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/NubiaGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;

    .line 471
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->onAirplaneModeChanged()V

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$7;

    const v2, 0x1080030

    const v3, 0x1040111

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/NubiaGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$8;

    const v2, 0x108065e

    const v3, 0x1040113

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/NubiaGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_1
    const-string v0, "fw.power_user_switcher"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    .line 592
    :cond_2
    new-instance v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

    invoke-direct {v0, p0, v12}, Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;Lcom/android/internal/policy/impl/NubiaGlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

    .line 594
    new-instance v8, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 595
    .local v8, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

    iput-object v0, v8, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 596
    iput-object p0, v8, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 597
    iput-boolean v10, v8, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 599
    new-instance v7, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x30e0014

    invoke-direct {v7, v0, v8, v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;I)V

    .line 601
    .local v7, "dialog":Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    invoke-virtual {v7, v9}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->setCanceledOnTouchOutside(Z)V

    .line 602
    new-instance v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$CallBackShutdownReboot;

    invoke-direct {v0, p0, v12}, Lcom/android/internal/policy/impl/NubiaGlobalActions$CallBackShutdownReboot;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;Lcom/android/internal/policy/impl/NubiaGlobalActions$1;)V

    invoke-virtual {v7, v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->setCallbackShutdownOrReboot(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;)V

    .line 603
    invoke-virtual {v7}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 604
    invoke-virtual {v7}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 605
    invoke-virtual {v7}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$9;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 613
    invoke-virtual {v7}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 616
    invoke-virtual {v7}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v11, v11}, Landroid/view/Window;->setLayout(II)V

    .line 621
    invoke-virtual {v7, p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 623
    return-object v7

    .line 425
    .end local v7    # "dialog":Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    .end local v8    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_3
    new-instance v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;

    goto/16 :goto_0
.end method

.method private handleShow()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v1, -0x1

    .line 217
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->awakenIfNecessary()V

    .line 218
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->createDialog()Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->prepareDialog()V

    .line 221
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 222
    .local v7, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "GlobalActions"

    invoke-virtual {v7, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 225
    const v4, 0x40122

    .line 230
    .local v4, "flag":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 236
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x51

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 238
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 241
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->show()V

    .line 244
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 248
    .local v6, "airplaneModeOn":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->initView()V

    .line 249
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->setAirplaneView(Z)V

    .line 250
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->setRingerModeView()V

    .line 257
    return-void

    .end local v6    # "airplaneModeOn":Z
    :cond_0
    move v6, v8

    .line 246
    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x3030005

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mVibratorImageView:Landroid/widget/ImageView;

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionLayout:Landroid/widget/LinearLayout;

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mPowerOffLayout:Landroid/widget/FrameLayout;

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mRebootLayout:Landroid/widget/FrameLayout;

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentLayout:Landroid/widget/LinearLayout;

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mVibratorLayout:Landroid/widget/LinearLayout;

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentFrameLayout:Landroid/widget/FrameLayout;

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mVibratorFrameLayout:Landroid/widget/FrameLayout;

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mGlobalActionView:Landroid/view/View;

    const v1, 0x30d0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneFrameLayout:Landroid/widget/FrameLayout;

    .line 289
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1189
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1194
    .local v0, "airplaneModeOn":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    .line 1196
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 1192
    goto :goto_1

    .line 1194
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->refreshSilentMode()V

    .line 671
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;)V

    .line 672
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 673
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 675
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 676
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 680
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 683
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 685
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;)V

    .line 689
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 684
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 685
    .restart local v0    # "silentModeOn":Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private setAirplaneView(Z)V
    .locals 2
    .param p1, "airplaneModeOn"    # Z

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x3020036

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneFrameLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const v0, 0x302003e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 306
    return-void

    .line 304
    :cond_0
    const v0, 0x3020035

    goto :goto_0

    .line 305
    :cond_1
    const v0, 0x302003d

    goto :goto_1
.end method

.method private setAllClickListener()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mPowerOffLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mRebootLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mVibratorLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/policy/impl/NubiaGlobalActions$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    return-void
.end method

.method private setRingerModeView()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 310
    .local v0, "ringerMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x302003d

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 312
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    const v2, 0x3020051

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x302003e

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 315
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    const v2, 0x3020052

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 705
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$Action;->onPress()V

    .line 708
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mKeyguardShowing:Z

    .line 192
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDeviceProvisioned:Z

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->dismiss()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->handleShow()V

    goto :goto_0
.end method
