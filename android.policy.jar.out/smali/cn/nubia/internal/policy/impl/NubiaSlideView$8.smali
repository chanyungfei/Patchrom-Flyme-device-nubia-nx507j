.class Lcn/nubia/internal/policy/impl/NubiaSlideView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/NubiaSlideView;->startLastDismissAnimator()V
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
    .line 491
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$8;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 494
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 496
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$8;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mMsgFlag:I
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$400(Lcn/nubia/internal/policy/impl/NubiaSlideView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 497
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$8;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mListener:Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1500(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$8;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mListener:Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1500(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;->shutdown()V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$8;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mListener:Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1500(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$8;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mListener:Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1500(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;->reboot()V

    goto :goto_0
.end method
