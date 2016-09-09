.class public Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;
.super Lcn/nubia/internal/policy/impl/edge/BaseAnim;
.source "HoldFourCornerAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "HoldFourCornerAnim"

.field private static final X_RADIUS_AREA:I = 0x1e

.field private static final Y_ERROR_AREA:I = 0xdc


# instance fields
.field private mDensity:F

.field private mDrawCirclesIsPosted:Z

.field private mDrawCirclesRunnale:Ljava/lang/Runnable;

.field private mEvent:Landroid/view/MotionEvent;

.field private mExtListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;

.field private mHandler:Landroid/os/Handler;

.field private mLayout:Landroid/view/ViewGroup;

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mPosChanged:Z

.field private mSideMoveViewParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mViewAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$1;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDrawCirclesRunnale:Ljava/lang/Runnable;

    .line 58
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$2;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 86
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->drawCircles(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDrawCirclesIsPosted:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mExtListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;

    return-object v0
.end method

.method private drawCircles(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, "isHaveCache":Z
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 117
    .local v5, "pointerId":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 118
    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/internal/policy/impl/edge/CircleView;

    .line 119
    .local v0, "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/CircleView;->getPointerId()I

    move-result v6

    .line 120
    .local v6, "viewPointerId":I
    if-ne v5, v6, :cond_2

    .line 121
    const/4 v2, 0x1

    .line 125
    .end local v0    # "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    .end local v6    # "viewPointerId":I
    :cond_0
    if-nez v2, :cond_1

    .line 126
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/CircleView;

    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcn/nubia/internal/policy/impl/edge/CircleView;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v0    # "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    const/4 v3, 0x1

    .line 128
    .local v3, "isLeft":Z
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {p0, v7, v8, v3}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->translateX(FFZ)F

    move-result v7

    invoke-virtual {v0, v7}, Lcn/nubia/internal/policy/impl/edge/CircleView;->setX(F)V

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {p0, v7, v8, v3}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->translateY(FFZ)F

    move-result v7

    invoke-virtual {v0, v7}, Lcn/nubia/internal/policy/impl/edge/CircleView;->setY(F)V

    .line 130
    invoke-virtual {v0, v5}, Lcn/nubia/internal/policy/impl/edge/CircleView;->setPointerId(I)V

    .line 131
    iget-object v7, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    .end local v0    # "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    .end local v3    # "isLeft":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .restart local v0    # "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    .restart local v6    # "viewPointerId":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    .end local v6    # "viewPointerId":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 134
    .end local v0    # "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    .end local v2    # "isHaveCache":Z
    .end local v4    # "j":I
    .end local v5    # "pointerId":I
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->start()V

    .line 135
    return-void
.end method

.method private translateX(FFZ)F
    .locals 7
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "isLeft"    # Z

    .prologue
    const/16 v4, 0x2d

    const/16 v3, 0xf

    const/high16 v6, 0x41f00000    # 30.0f

    .line 138
    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 139
    .local v0, "dm":Landroid/util/DisplayMetrics;
    move v2, p1

    .line 140
    .local v2, "x":F
    const/4 v1, 0x0

    .line 141
    .local v1, "translate":I
    iget v5, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mRotation:I

    packed-switch v5, :pswitch_data_0

    .line 159
    :goto_0
    return v2

    .line 143
    :pswitch_0
    if-eqz p3, :cond_0

    move v1, v3

    .line 144
    :goto_1
    int-to-float v3, v1

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v3, v4

    sub-float v2, p1, v3

    .line 145
    goto :goto_0

    :cond_0
    move v1, v4

    .line 143
    goto :goto_1

    .line 147
    :pswitch_1
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v3, v6

    sub-float v2, p2, v3

    .line 148
    goto :goto_0

    .line 150
    :pswitch_2
    if-eqz p3, :cond_1

    move v1, v4

    .line 151
    :goto_2
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    int-to-float v4, v1

    iget v5, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 152
    goto :goto_0

    :cond_1
    move v1, v3

    .line 150
    goto :goto_2

    .line 154
    :pswitch_3
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v4, v6

    sub-float v2, v3, v4

    .line 155
    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private translateY(FFZ)F
    .locals 6
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "isLeft"    # Z

    .prologue
    const/16 v1, 0x2d

    const/16 v3, 0xf

    const/high16 v5, 0x41f00000    # 30.0f

    .line 163
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 164
    .local v0, "dm":Landroid/util/DisplayMetrics;
    move v2, p2

    .line 165
    .local v2, "y":F
    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 183
    :goto_0
    return v2

    .line 167
    :pswitch_0
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v3, v5

    sub-float v2, p2, v3

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    if-eqz p3, :cond_0

    .line 171
    .local v1, "translate":I
    :goto_1
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    int-to-float v4, v1

    iget v5, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 172
    goto :goto_0

    .end local v1    # "translate":I
    :cond_0
    move v1, v3

    .line 170
    goto :goto_1

    .line 174
    :pswitch_2
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 175
    goto :goto_0

    .line 177
    :pswitch_3
    if-eqz p3, :cond_1

    move v1, v3

    .line 178
    .restart local v1    # "translate":I
    :cond_1
    int-to-float v3, v1

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v3, v4

    sub-float v2, p1, v3

    .line 179
    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public holdFourCornerSuccess()V
    .locals 6

    .prologue
    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 228
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/internal/policy/impl/edge/CircleView;

    .line 229
    .local v0, "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/internal/policy/impl/edge/CircleView;->updatePaintColor(Z)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "circleView":Lcn/nubia/internal/policy/impl/edge/CircleView;
    :cond_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$4;

    invoke-direct {v3, p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$4;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return-void
.end method

.method initAnimator()Landroid/animation/Animator;
    .locals 5

    .prologue
    .line 194
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 197
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x41f00000    # 30.0f

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDensity:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 199
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$3;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$3;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mContext:Landroid/content/Context;

    const v2, 0x10c000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 215
    return-object v0
.end method

.method onAddView()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method onRemoveView()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 250
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 253
    :cond_0
    return-void
.end method

.method public play(Landroid/view/MotionEvent;Z)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "posChanged"    # Z

    .prologue
    const/4 v3, -0x1

    .line 91
    iput-boolean p2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mPosChanged:Z

    .line 92
    if-eqz p2, :cond_0

    .line 93
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mEvent:Landroid/view/MotionEvent;

    .line 111
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDrawCirclesIsPosted:Z

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDrawCirclesRunnale:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->cancel()V

    .line 100
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mEvent:Landroid/view/MotionEvent;

    .line 101
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 102
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 104
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    .line 105
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->init()V

    .line 108
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->addViewAndWatcher(Landroid/view/View;)V

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDrawCirclesIsPosted:Z

    .line 110
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mDrawCirclesRunnale:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeAnim()V
    .locals 0

    .prologue
    .line 240
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->cancel()V

    .line 241
    return-void
.end method

.method public setExtListener(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;

    .prologue
    .line 219
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mExtListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim$AnimatorEndListener;

    .line 220
    return-void
.end method

.method protected start()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerAnim;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-super {p0}, Lcn/nubia/internal/policy/impl/edge/BaseAnim;->start()V

    goto :goto_0
.end method
