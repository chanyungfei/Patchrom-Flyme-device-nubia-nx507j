.class Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$4;
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
    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$4;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$4;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # invokes: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->cancelPendingShowToast()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$1000(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$4;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$4;->this$0:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    # getter for: Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->access$000(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 87
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 89
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-void
.end method
