.class Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HoldFourCornerAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancled:Z

.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->mCancled:Z

    .line 71
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->mCancled:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->remove()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mExtListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$400(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mExtListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$400(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;->onAnimationEnd()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 62
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->mCancled:Z

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$300(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$300(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/internal/policy/impl/edge/CircleView;

    .line 65
    .local v0, "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/internal/policy/impl/edge/CircleView;->updatePaintColor(Z)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    :cond_0
    return-void
.end method
