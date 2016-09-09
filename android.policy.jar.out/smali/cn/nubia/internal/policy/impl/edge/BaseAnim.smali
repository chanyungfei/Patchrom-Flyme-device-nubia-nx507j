.class public abstract Lcn/nubia/internal/policy/impl/edge/BaseAnim;
.super Ljava/lang/Object;
.source "BaseAnim.java"


# static fields
.field private static final LOG:Ljava/lang/String; = "BaseAnim"


# instance fields
.field protected mAnimator:Landroid/animation/Animator;

.field protected mContext:Landroid/content/Context;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mRotation:I

.field private mRotationWatcher:Lcn/nubia/internal/policy/impl/edge/RotationWatcher;

.field private mView:Landroid/view/View;

.field private mViewAdded:Z

.field private final mWatcher:Landroid/view/IRotationWatcher;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/BaseAnim$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim$1;-><init>(Lcn/nubia/internal/policy/impl/edge/BaseAnim;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mWatcher:Landroid/view/IRotationWatcher;

    .line 32
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;

    invoke-direct {v0}, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;-><init>()V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mRotationWatcher:Lcn/nubia/internal/policy/impl/edge/RotationWatcher;

    .line 34
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mWindowManager:Landroid/view/WindowManager;

    .line 36
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->initWindowParams()V

    .line 37
    return-void
.end method

.method private initWindowParams()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 104
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 105
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 106
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x538

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 111
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    return-void
.end method

.method private isRunning()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mViewAdded:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mView:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->onAddView()V

    .line 64
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mViewAdded:Z

    goto :goto_0
.end method

.method protected addViewAndWatcher(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mRotationWatcher:Lcn/nubia/internal/policy/impl/edge/RotationWatcher;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->watch(Landroid/view/IRotationWatcher;)I

    move-result v0

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mRotation:I

    .line 45
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->addView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method protected cancel()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->remove()V

    .line 96
    return-void
.end method

.method protected getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->initAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mAnimator:Landroid/animation/Animator;

    .line 83
    return-void
.end method

.method abstract initAnimator()Landroid/animation/Animator;
.end method

.method abstract onAddView()V
.end method

.method abstract onRemoveView()V
.end method

.method protected remove()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->removeViewAndWatcher()V

    .line 55
    return-void
.end method

.method protected removeView()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mViewAdded:Z

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->onRemoveView()V

    .line 71
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mViewAdded:Z

    goto :goto_0
.end method

.method protected removeViewAndWatcher()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mRotationWatcher:Lcn/nubia/internal/policy/impl/edge/RotationWatcher;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/RotationWatcher;->remove()V

    .line 50
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->removeView()V

    .line 51
    return-void
.end method

.method protected setAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mAnimator:Landroid/animation/Animator;

    .line 77
    return-void
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 89
    :cond_0
    return-void
.end method
