.class Lcn/nubia/internal/policy/impl/edge/AppEndAnim$2;
.super Ljava/lang/Object;
.source "AppEndAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->play(Z)V
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
    .line 63
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim$2;->this$0:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim$2;->this$0:Lcn/nubia/internal/policy/impl/edge/AppEndAnim;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->start()V

    .line 67
    return-void
.end method
