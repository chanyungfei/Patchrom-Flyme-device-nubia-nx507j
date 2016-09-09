.class Lcom/android/server/display/WifiDisplayAdapter$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 452
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.server.display.wfd.DISCONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 455
    monitor-exit v1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 458
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.server.display.wfd.RESEUMED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "get intent android.server.display.wfd.RESEUMED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mNotificationHandler:Lcom/android/server/display/WfdNotificationHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WfdNotificationHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/WfdNotificationHandler;->scheduleResumeStateUpdateNotificationLocked(ZILandroid/hardware/display/WifiDisplay;)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.server.display.wfd.PAUSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "get intent android.server.display.wfd.PAUSED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mNotificationHandler:Lcom/android/server/display/WfdNotificationHandler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WfdNotificationHandler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/WfdNotificationHandler;->scheduleResumeStateUpdateNotificationLocked(ZILandroid/hardware/display/WifiDisplay;)V

    goto :goto_0
.end method
