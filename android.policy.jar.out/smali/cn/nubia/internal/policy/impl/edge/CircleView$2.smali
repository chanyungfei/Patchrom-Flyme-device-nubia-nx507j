.class Lcn/nubia/internal/policy/impl/edge/CircleView$2;
.super Ljava/lang/Object;
.source "CircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/edge/CircleView;->updateAboveCircle(J)V
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
    .line 91
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView$2;->this$0:Lcn/nubia/internal/policy/impl/edge/CircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 96
    .local v0, "value":F
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView$2;->this$0:Lcn/nubia/internal/policy/impl/edge/CircleView;

    invoke-virtual {v1, v0}, Lcn/nubia/internal/policy/impl/edge/CircleView;->setAboveCircleRadius(F)V

    .line 97
    return-void
.end method
