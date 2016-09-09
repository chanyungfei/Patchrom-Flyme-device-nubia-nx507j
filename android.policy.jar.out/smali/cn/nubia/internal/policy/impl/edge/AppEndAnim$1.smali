.class Lcn/nubia/internal/policy/impl/edge/AppEndAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppEndAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/AppEndAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/AppEndAnim;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim$1;->this$0:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim$1;->this$0:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->removeView()V

    .line 38
    return-void
.end method
