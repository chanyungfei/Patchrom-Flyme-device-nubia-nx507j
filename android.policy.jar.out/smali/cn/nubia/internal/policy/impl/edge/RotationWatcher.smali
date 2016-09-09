.class public Lcn/nubia/internal/policy/impl/edge/RotationWatcher;
.super Ljava/lang/Object;
.source "RotationWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/internal/policy/impl/edge/RotationWatcher$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RotationWatcher"


# instance fields
.field private mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mWatchingRotation:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public remove()V
    .locals 3

    .prologue
    .line 42
    iget-boolean v1, p0, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->mWatchingRotation:Z

    if-eqz v1, :cond_0

    .line 44
    :try_start_0
    sget-object v1, Lcn/nubia/internal/policy/impl/edge/RotationWatcher$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RotationWatcher"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public watch(Landroid/view/IRotationWatcher;)I
    .locals 4
    .param p1, "rotationWatcher"    # Landroid/view/IRotationWatcher;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->remove()V

    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "rotation":I
    iget-boolean v2, p0, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->mWatchingRotation:Z

    if-nez v2, :cond_0

    .line 30
    :try_start_0
    sget-object v2, Lcn/nubia/internal/policy/impl/edge/RotationWatcher$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v1

    .line 32
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RotationWatcher"

    const-string v3, "Remote exception when adding rotation watcher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
