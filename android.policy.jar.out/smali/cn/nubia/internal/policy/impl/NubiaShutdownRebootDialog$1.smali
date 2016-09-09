.class Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;
.super Landroid/os/Handler;
.source "NubiaShutdownRebootDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
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
    .line 53
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$100(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$000(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1234
        :pswitch_0
    .end packed-switch
.end method
