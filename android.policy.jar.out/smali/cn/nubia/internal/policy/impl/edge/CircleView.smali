.class public Lcn/nubia/internal/policy/impl/edge/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final NORMAL_COLOR:I

.field private static final RADUIS_IN_PX:I = 0x1e

.field private static final SUCCESS_COLOR:I


# instance fields
.field private mAnim:Landroid/animation/ValueAnimator;

.field private mDensity:F

.field private mInnerRaduis:F

.field private mLinearOutslowInInterpolator:Landroid/animation/TimeInterpolator;

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mPaintColor:I

.field private mPointerId:I

.field private mRaduis:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "#5445bf39"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/internal/policy/impl/edge/CircleView;->SUCCESS_COLOR:I

    .line 19
    const-string v0, "#99A0A0A0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/internal/policy/impl/edge/CircleView;->NORMAL_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    sget v0, Lcn/nubia/internal/policy/impl/edge/CircleView;->NORMAL_COLOR:I

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mPaintColor:I

    .line 29
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/CircleView$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/edge/CircleView$1;-><init>(Lcn/nubia/internal/policy/impl/edge/CircleView;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/CircleView;->initParams(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget v0, Lcn/nubia/internal/policy/impl/edge/CircleView;->NORMAL_COLOR:I

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mPaintColor:I

    .line 29
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/CircleView$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/edge/CircleView$1;-><init>(Lcn/nubia/internal/policy/impl/edge/CircleView;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/CircleView;->initParams(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/internal/policy/impl/edge/CircleView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/CircleView;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mPaintColor:I

    return p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcn/nubia/internal/policy/impl/edge/CircleView;->NORMAL_COLOR:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcn/nubia/internal/policy/impl/edge/CircleView;->SUCCESS_COLOR:I

    return v0
.end method

.method private drawAboveCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .local v0, "innerPaint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mRaduis:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mRaduis:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mInnerRaduis:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method private drawBelowCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mRaduis:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mRaduis:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mRaduis:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method private initParams(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 52
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mDensity:F

    .line 53
    const/high16 v1, 0x41f00000    # 30.0f

    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mDensity:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mRaduis:F

    .line 54
    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mInnerRaduis:F

    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mDensity:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mInnerRaduis:F

    .line 55
    const v1, 0x10c000b

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mLinearOutslowInInterpolator:Landroid/animation/TimeInterpolator;

    .line 57
    return-void
.end method


# virtual methods
.method public getPointerId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mPointerId:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 115
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 121
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/CircleView;->drawBelowCircle(Landroid/graphics/Canvas;)V

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/CircleView;->drawAboveCircle(Landroid/graphics/Canvas;)V

    .line 70
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 62
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mRaduis:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mRaduis:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/internal/policy/impl/edge/CircleView;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method

.method public setAboveCircleRadius(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 124
    iput p1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mInnerRaduis:F

    .line 125
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/CircleView;->invalidate()V

    .line 126
    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listerner"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 130
    return-void
.end method

.method public setPointerId(I)V
    .locals 0
    .param p1, "pointerId"    # I

    .prologue
    .line 133
    iput p1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mPointerId:I

    .line 134
    return-void
.end method

.method public updateAboveCircle(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mDensity:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    .line 91
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/internal/policy/impl/edge/CircleView$2;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/CircleView$2;-><init>(Lcn/nubia/internal/policy/impl/edge/CircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mLinearOutslowInInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    return-void
.end method

.method public updatePaintColor(Z)V
    .locals 1
    .param p1, "reset"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_0

    sget v0, Lcn/nubia/internal/policy/impl/edge/CircleView;->NORMAL_COLOR:I

    :goto_0
    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/CircleView;->mPaintColor:I

    .line 110
    return-void

    .line 109
    :cond_0
    sget v0, Lcn/nubia/internal/policy/impl/edge/CircleView;->SUCCESS_COLOR:I

    goto :goto_0
.end method
