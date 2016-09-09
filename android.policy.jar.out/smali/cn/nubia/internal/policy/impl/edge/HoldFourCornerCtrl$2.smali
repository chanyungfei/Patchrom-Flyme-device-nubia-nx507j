.class Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$2;
.super Ljava/lang/Object;
.source "HoldFourCornerCtrl.java"

# interfaces
.implements Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->playHoldFourCornerAnim(Landroid/view/MotionEvent;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    const/4 v1, 0x1

    # setter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mAnimEnd:Z
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->access$102(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;Z)Z

    .line 212
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mSuccess:Z
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->access$200(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    # invokes: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->holdFourCornerSuccessWithAnim()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->access$300(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)V

    .line 215
    :cond_0
    return-void
.end method
