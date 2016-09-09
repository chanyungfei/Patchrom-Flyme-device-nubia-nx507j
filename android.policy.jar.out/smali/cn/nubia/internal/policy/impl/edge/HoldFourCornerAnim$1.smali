.class Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$1;
.super Ljava/lang/Object;
.source "HoldFourCornerAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;
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
    .line 50
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$1;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$1;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$1;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$000(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Landroid/view/MotionEvent;

    move-result-object v1

    # invokes: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->drawCircles(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$100(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;Landroid/view/MotionEvent;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$1;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDrawCirclesIsPosted:Z
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->access$202(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;Z)Z

    .line 55
    return-void
.end method
