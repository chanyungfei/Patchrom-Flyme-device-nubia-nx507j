.class Lcn/nubia/internal/policy/impl/NubiaSlideView$4;
.super Ljava/lang/Object;
.source "NubiaSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/NubiaSlideView;->onRollBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

.field final synthetic val$alpha:I

.field final synthetic val$alphaText:I

.field final synthetic val$dis:F


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/NubiaSlideView;IIF)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iput p2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$alpha:I

    iput p3, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$alphaText:I

    iput p4, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$dis:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 332
    .local v0, "fra":F
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$100(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$alpha:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$alpha:I

    rsub-int v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mMaxScrollerDistance:F
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$900(Lcn/nubia/internal/policy/impl/NubiaSlideView;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mShift:F
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$300(Lcn/nubia/internal/policy/impl/NubiaSlideView;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mMinRailWidth:I
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1000(Lcn/nubia/internal/policy/impl/NubiaSlideView;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$200(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$alphaText:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$alphaText:I

    rsub-int v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 336
    :cond_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget v3, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$dis:F

    iget-object v4, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mMaxScrollerDistance:F
    invoke-static {v4}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$900(Lcn/nubia/internal/policy/impl/NubiaSlideView;)F

    move-result v4

    iget v5, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->val$dis:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mShift:F
    invoke-static {v2, v3}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$302(Lcn/nubia/internal/policy/impl/NubiaSlideView;F)F

    .line 337
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->invalidate()V

    .line 339
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mMsgFlag:I
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$400(Lcn/nubia/internal/policy/impl/NubiaSlideView;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 353
    :goto_0
    return-void

    .line 341
    :pswitch_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 342
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1234

    iput v2, v1, Landroid/os/Message;->what:I

    .line 343
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$500(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 346
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 347
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x1235

    iput v2, v1, Landroid/os/Message;->what:I

    .line 348
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$500(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method