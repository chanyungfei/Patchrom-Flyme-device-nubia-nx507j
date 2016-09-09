.class Lcn/nubia/internal/policy/impl/edge/BaseAnim$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "BaseAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/BaseAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/BaseAnim;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/BaseAnim;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim$1;->this$0:Lcn/nubia/internal/policy/impl/edge/BaseAnim;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/BaseAnim$1;->this$0:Lcn/nubia/internal/policy/impl/edge/BaseAnim;

    iput p1, v0, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->mRotation:I

    .line 28
    return-void
.end method
