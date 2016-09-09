.class Lcn/nubia/internal/policy/impl/NubiaSlideView$6;
.super Ljava/lang/Object;
.source "NubiaSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/NubiaSlideView;->createEnterIntoAnimator(IIILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/NubiaSlideView;I)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iput p2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 451
    iget v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->val$mode:I

    packed-switch v0, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->invalidate()V

    .line 472
    return-void

    .line 453
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mEnterBgAlpha:F
    invoke-static {v1, v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1102(Lcn/nubia/internal/policy/impl/NubiaSlideView;F)F

    .line 454
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mEnterBgAlpha:F
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1100(Lcn/nubia/internal/policy/impl/NubiaSlideView;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mAlpha:I
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$602(Lcn/nubia/internal/policy/impl/NubiaSlideView;I)I

    .line 455
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$100(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mAlpha:I
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$600(Lcn/nubia/internal/policy/impl/NubiaSlideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 456
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1200(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mAlpha:I
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$600(Lcn/nubia/internal/policy/impl/NubiaSlideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 457
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1300(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mFuzzyLayerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1400(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mDarkenLayerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1300(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mEnterBgAlpha:F
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1100(Lcn/nubia/internal/policy/impl/NubiaSlideView;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 459
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mFuzzyLayerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1400(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mEnterBgAlpha:F
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$1100(Lcn/nubia/internal/policy/impl/NubiaSlideView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 463
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mMaxScrollerDistance:F
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$900(Lcn/nubia/internal/policy/impl/NubiaSlideView;)F

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mShift:F
    invoke-static {v1, v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$302(Lcn/nubia/internal/policy/impl/NubiaSlideView;F)F

    goto/16 :goto_0

    .line 466
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    # setter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mTextAlpha:I
    invoke-static {v1, v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$702(Lcn/nubia/internal/policy/impl/NubiaSlideView;I)I

    .line 467
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mTextPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$200(Lcn/nubia/internal/policy/impl/NubiaSlideView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaSlideView$6;->this$0:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaSlideView;->mTextAlpha:I
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->access$700(Lcn/nubia/internal/policy/impl/NubiaSlideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
