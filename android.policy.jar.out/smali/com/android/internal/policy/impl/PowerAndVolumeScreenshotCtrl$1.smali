.class Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$1;
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
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "supersnapshot"

    const-string v1, "about to enter fast snapshot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnubia/util/FrameworkDataStatisticsManager;->getIntance(Landroid/content/Context;)Lnubia/util/FrameworkDataStatisticsManager;

    move-result-object v0

    const-string v1, "power_and_volume_start_fast_screenshot"

    invoke-virtual {v0, v1}, Lnubia/util/FrameworkDataStatisticsManager;->onEventWithStartOnce(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$100(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshotProxy()V

    .line 58
    return-void
.end method
