.class Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$3;
.super Ljava/lang/Object;
.source "HoldFourCornerAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->initAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$3;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 204
    .local v2, "value":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$3;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$300(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 205
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$3;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$300(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/internal/policy/impl/edge/CircleView;

    .line 206
    .local v0, "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    invoke-virtual {v0, v2}, Lcn/nubia/internal/policy/impl/edge/CircleView;->setAboveCircleRadius(F)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    :cond_0
    return-void
.end method
