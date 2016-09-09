.class Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CABCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;)V
    .locals 2

    .prologue
    .line 510
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 511
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 512
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 515
    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcn/nubia/server/appmgmt/CABCController;->access$700(Lcn/nubia/server/appmgmt/CABCController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 520
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    const/4 v1, 0x1

    # setter for: Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/CABCController;->access$402(Lcn/nubia/server/appmgmt/CABCController;Z)Z

    .line 531
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z
    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/CABCController;->access$402(Lcn/nubia/server/appmgmt/CABCController;Z)Z

    .line 525
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$500(Lcn/nubia/server/appmgmt/CABCController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    const-string v0, "CABCController"

    const-string v1, "screen off. adjust CABC mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$900(Lcn/nubia/server/appmgmt/CABCController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    # getter for: Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/CABCController;->access$800(Lcn/nubia/server/appmgmt/CABCController;)Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
