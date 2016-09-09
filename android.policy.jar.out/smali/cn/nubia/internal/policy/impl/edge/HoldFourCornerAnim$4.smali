.class Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$4;
.super Ljava/lang/Object;
.source "HoldFourCornerAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->holdFourCornerSuccess()V
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
    .line 231
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$4;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$4;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->remove()V

    .line 235
    return-void
.end method
