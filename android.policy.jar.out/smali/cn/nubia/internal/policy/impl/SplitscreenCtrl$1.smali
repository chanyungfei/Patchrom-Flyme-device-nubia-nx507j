.class Lcn/nubia/internal/policy/impl/SplitscreenCtrl$1;
.super Ljava/lang/Object;
.source "SplitscreenCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/SplitscreenCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/SplitscreenCtrl;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/SplitscreenCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SplitscreenCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/SplitscreenCtrl;

    const/4 v1, 0x3

    # invokes: Lcn/nubia/internal/policy/impl/SplitscreenCtrl;->injectBottomKeyEvent(I)V
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/SplitscreenCtrl;->access$000(Lcn/nubia/internal/policy/impl/SplitscreenCtrl;I)V

    .line 132
    return-void
.end method
