.class Lcn/nubia/internal/policy/impl/edge/CircleView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/CircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/CircleView;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/CircleView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView$1;->this$0:Lcn/nubia/internal/policy/impl/edge/CircleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView$1;->this$0:Lcn/nubia/internal/policy/impl/edge/CircleView;

    # getter for: Lcn/nubia/internal/policy/impl/edge/CircleView;->SUCCESS_COLOR:I
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/CircleView;->access$200()I

    move-result v1

    # setter for: Lcn/nubia/internal/policy/impl/edge/CircleView;->mPaintColor:I
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/edge/CircleView;->access$002(Lcn/nubia/internal/policy/impl/edge/CircleView;I)I

    .line 35
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView$1;->this$0:Lcn/nubia/internal/policy/impl/edge/CircleView;

    # getter for: Lcn/nubia/internal/policy/impl/edge/CircleView;->NORMAL_COLOR:I
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/CircleView;->access$100()I

    move-result v1

    # setter for: Lcn/nubia/internal/policy/impl/edge/CircleView;->mPaintColor:I
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/edge/CircleView;->access$002(Lcn/nubia/internal/policy/impl/edge/CircleView;I)I

    .line 32
    return-void
.end method
