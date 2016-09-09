.class Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;
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
    .line 64
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccc    # 0.39999998f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$200(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # setter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$302(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Z)Z

    .line 71
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 72
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getShift()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setThisViewAlpha(F)V

    .line 73
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getShift()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getMaxScrollDistance()F

    move-result v2

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    mul-float/2addr v1, v4

    add-float v0, v5, v1

    .line 77
    .local v0, "alpha":F
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$600(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 78
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$600(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 79
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$700(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->postInvalidate()V

    .line 80
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->postInvalidate()V

    .line 81
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getShift()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getMaxScrollDistance()F

    move-result v3

    # invokes: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->setCancelAlpha(FF)V
    invoke-static {v1, v2, v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$800(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;FF)V

    goto/16 :goto_0

    .line 85
    .end local v0    # "alpha":F
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$300(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # setter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$202(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Z)Z

    .line 87
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 88
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getShift()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setThisViewAlpha(F)V

    .line 90
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getShift()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getMaxScrollDistance()F

    move-result v2

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    mul-float/2addr v1, v4

    add-float v0, v5, v1

    .line 94
    .restart local v0    # "alpha":F
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$600(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 95
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$600(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 96
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getShift()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getMaxScrollDistance()F

    move-result v3

    # invokes: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->setCancelAlpha(FF)V
    invoke-static {v1, v2, v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$800(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;FF)V

    .line 97
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->postInvalidate()V

    goto/16 :goto_0

    .line 101
    .end local v0    # "alpha":F
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # setter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootFlag:Z
    invoke-static {v1, v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$302(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Z)Z

    .line 102
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 103
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 106
    :pswitch_3
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # setter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutdownFlag:Z
    invoke-static {v1, v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$202(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Z)Z

    .line 107
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    .line 108
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setAllowInterrupt(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1234
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
