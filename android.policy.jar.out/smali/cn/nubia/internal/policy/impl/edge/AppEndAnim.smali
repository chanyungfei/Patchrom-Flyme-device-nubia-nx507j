.class public Lcn/nubia/internal/policy/impl/edge/AppEndAnim;
.super Lcn/nubia/internal/policy/impl/edge/BaseAnim;
.source "AppEndAnim.java"


# static fields
.field private static final ANIM_SCOPE:I = 0x96


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppImage:Landroid/widget/ImageView;

.field private mLayout:Landroid/view/View;

.field private mOrientation:I

.field private mScreenShotBitmap:Landroid/graphics/Bitmap;

.field private mTranslationY:I

.field private mViewAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim$1;-><init>(Lcn/nubia/internal/policy/impl/edge/AppEndAnim;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 43
    return-void
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 123
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 125
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    .line 73
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    .local v13, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 75
    .local v11, "display":Landroid/view/Display;
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    .local v12, "displayMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v11, v13}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    const/4 v1, 0x2

    new-array v10, v1, [F

    const/4 v1, 0x0

    iget v2, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    aput v2, v10, v1

    const/4 v1, 0x1

    iget v2, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    aput v2, v10, v1

    .line 80
    .local v10, "dims":[F
    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->getDegreesForRotation(I)F

    move-result v9

    .line 81
    .local v9, "degrees":F
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_1

    const/4 v14, 0x1

    .line 82
    .local v14, "requiresRotation":Z
    :goto_0
    if-eqz v14, :cond_0

    .line 84
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 85
    neg-float v1, v9

    invoke-virtual {v12, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 86
    invoke-virtual {v12, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v10, v1

    .line 88
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v10, v1

    .line 91
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aget v2, v10, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const v5, 0x41eb0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 93
    .local v15, "screenBitmap":Landroid/graphics/Bitmap;
    if-nez v15, :cond_2

    const/4 v1, 0x0

    .line 112
    :goto_1
    return-object v1

    .line 81
    .end local v14    # "requiresRotation":Z
    .end local v15    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 95
    .restart local v14    # "requiresRotation":Z
    .restart local v15    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v14, :cond_3

    .line 97
    iget v1, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 99
    .local v16, "ss":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .local v8, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 102
    const/4 v1, 0x0

    aget v1, v10, v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v10, v2

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    move-object/from16 v15, v16

    .line 110
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v16    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 111
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->prepareToDraw()V

    move-object v1, v15

    .line 112
    goto :goto_1
.end method


# virtual methods
.method initAnimator()Landroid/animation/Animator;
    .locals 15

    .prologue
    const/high16 v9, 0x3e800000    # 0.25f

    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 140
    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAnimator:Landroid/animation/Animator;

    if-eqz v7, :cond_0

    .line 141
    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->removeAllListeners()V

    .line 142
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAnimator:Landroid/animation/Animator;

    .line 144
    :cond_0
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v7, v9, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 146
    .local v2, "interpolatorUp":Landroid/view/animation/PathInterpolator;
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    const v10, 0x3f666666    # 0.9f

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 148
    .local v1, "interpolatorDown":Landroid/view/animation/PathInterpolator;
    const/16 v4, 0xfa

    .local v4, "timeUp":I
    const/16 v3, 0xfa

    .line 149
    .local v3, "timeDown":I
    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAppImage:Landroid/widget/ImageView;

    const-string v8, "translationY"

    new-array v9, v13, [F

    aput v14, v9, v11

    iget v10, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mTranslationY:I

    int-to-float v10, v10

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 152
    .local v6, "viewUpAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAppImage:Landroid/widget/ImageView;

    const-string v8, "translationY"

    new-array v9, v13, [F

    iget v10, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mTranslationY:I

    int-to-float v10, v10

    aput v10, v9, v11

    aput v14, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 156
    .local v5, "viewDownAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 158
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 159
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-array v7, v13, [Landroid/animation/Animator;

    aput-object v6, v7, v11

    aput-object v5, v7, v12

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 160
    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    return-object v0
.end method

.method onAddView()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method onRemoveView()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public play(Z)V
    .locals 3
    .param p1, "isUp"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeHelper;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->dp2px(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mTranslationY:I

    .line 62
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->init()V

    .line 63
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAppImage:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/internal/policy/impl/edge/AppEndAnim$2;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim$2;-><init>(Lcn/nubia/internal/policy/impl/edge/AppEndAnim;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public prepare()V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->cancel()V

    .line 47
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 48
    .local v1, "orientation":I
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mOrientation:I

    if-eq v2, v1, :cond_1

    .line 49
    :cond_0
    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mOrientation:I

    .line 50
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x3030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mLayout:Landroid/view/View;

    .line 53
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mLayout:Landroid/view/View;

    const v3, 0x30d0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAppImage:Landroid/widget/ImageView;

    .line 55
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mAppImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/edge/AppEndAnim;->addView(Landroid/view/View;)V

    .line 57
    return-void
.end method
