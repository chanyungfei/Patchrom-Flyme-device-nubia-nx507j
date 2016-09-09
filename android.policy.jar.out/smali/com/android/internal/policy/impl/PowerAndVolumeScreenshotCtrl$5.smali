.class Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$5;
.super Ljava/lang/Object;
.source "PowerAndVolumeScreenshotCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$5;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$5;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mSettingScreenshotEnable:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$1100(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "supersnapshot"

    const-string v3, "about to enter super snapshot"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$5;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v2

    const-string v3, "power_and_volume_start_supersnapshot"

    invoke-virtual {v2, v3}, Lnubia/util/FrameworkDataStatisticsManager;->onEventWithStartOnce(Ljava/lang/String;)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "cn.nubia.action.supersnap.takescreenshot"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v2, "enterPattern"

    const-string v3, "powerAndVolumeService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "cn.nubia.supersnap"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$5;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 105
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "supersnapshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while trying to start super snapshot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$5;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$600(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$5;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mShowToastRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$1200(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
