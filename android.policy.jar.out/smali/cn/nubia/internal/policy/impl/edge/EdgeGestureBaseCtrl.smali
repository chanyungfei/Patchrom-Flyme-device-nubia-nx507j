.class public abstract Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.super Ljava/lang/Object;
.source "EdgeGestureBaseCtrl.java"

# interfaces
.implements Lcn/nubia/edgegesture/EdgeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeGestureBaseCtrl"


# instance fields
.field mActivityManager:Landroid/app/ActivityManager;

.field mContext:Landroid/content/Context;

.field mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 49
    iput-object p3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    .line 50
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mActivityManager:Landroid/app/ActivityManager;

    .line 52
    return-void
.end method


# virtual methods
.method abstract canHandleEdgeGestureNow()Z
.end method

.method getCurrentRunAppComponent()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 81
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 82
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 83
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 86
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method getCurrentRunAppPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 68
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 70
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method abstract handleEdgeGesture(Lcn/nubia/edgegesture/EdgeArg;)V
.end method

.method isAppLockApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.applockmanager"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCallApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    const-string v0, "com.android.incallui"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCameraApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    const-string v0, "com.android.camera"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCurrentFreeSnapshot(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.freesnapshots"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFitSettingApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.edge"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn.nubia.edge.instruct.InstructActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHoldUnlockSet(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn.nubia.lockscreen.edge.settings.EdgeUnlockSetActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHomeApplication(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "bHome":Z
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 96
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 99
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_0
    return v0
.end method

.method isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method isLandscape()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLauncherApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.launcher"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSetupWizardApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.setupwizard"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSplitScreenHome(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.splitscreen.home"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSuperSnapApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    const-string v0, "cn.nubia.supersnap"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSystemUIApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEdgeGesture(Lcn/nubia/edgegesture/EdgeArg;)V
    .locals 2
    .param p1, "arg"    # Lcn/nubia/edgegesture/EdgeArg;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->canHandleEdgeGestureNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->handleEdgeGesture(Lcn/nubia/edgegesture/EdgeArg;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "EdgeGestureBaseCtrl"

    const-string v1, "can\'t handle edge gesture now!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
