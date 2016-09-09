.class Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->taskScreenShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 188
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # invokes: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->takeScreenShot()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$1200(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 189
    .local v1, "screenBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$000(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 190
    .local v2, "tempBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 191
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # invokes: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getWallpaperGrayValue()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$1300(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    :cond_0
    if-nez v1, :cond_1

    .line 207
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$002(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 198
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$000(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 199
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # setter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$002(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 201
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 202
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 205
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x1234

    iput v3, v0, Landroid/os/Message;->what:I

    .line 206
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHandlerTakescreen:Landroid/os/Handler;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$1400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
