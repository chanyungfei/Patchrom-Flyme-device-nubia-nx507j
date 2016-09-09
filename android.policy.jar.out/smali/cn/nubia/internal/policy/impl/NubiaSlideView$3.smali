.class Lcn/nubia/internal/policy/impl/NubiaSlideView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/NubiaSlideView;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/NubiaSlideView;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 310
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mAlpha:I
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$602(Lcn/nubia/internal/policy/impl/NubiaSlideView;I)I

    .line 311
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mTextAlpha:I
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$702(Lcn/nubia/internal/policy/impl/NubiaSlideView;I)I

    .line 312
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mShift:F
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$302(Lcn/nubia/internal/policy/impl/NubiaSlideView;F)F

    .line 313
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->invalidate()V

    .line 314
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # invokes: Lcn/nubia/internal/policy/impl/NubiaSlideView;->startLastDismissAnimator()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$800(Lcn/nubia/internal/policy/impl/NubiaSlideView;)V

    .line 315
    return-void
.end method
