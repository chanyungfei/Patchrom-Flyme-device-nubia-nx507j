.class Lcn/nubia/internal/policy/impl/NubiaSlideView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/NubiaSlideView;->startEnterIntoAnimator(I)V
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
    .line 148
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$1;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$1;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    const/4 v1, 0x1

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mCanInterrupt:Z
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$002(Lcn/nubia/internal/policy/impl/NubiaSlideView;Z)Z

    .line 154
    return-void
.end method
