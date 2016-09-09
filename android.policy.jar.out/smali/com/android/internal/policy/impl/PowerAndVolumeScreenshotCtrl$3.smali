.class Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$3;
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
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "supersnapshot"

    const-string v1, "long press timeout: POWER + VOLUP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # invokes: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotChordAction()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$200(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mLongPressVolUpPwr:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$802(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;Z)Z

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # invokes: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotForLog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$400(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$600(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$500(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$3;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$902(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;Z)Z

    .line 80
    return-void
.end method
