.class public Lcn/nubia/internal/policy/impl/edge/EdgeHelper;
.super Ljava/lang/Object;
.source "EdgeHelper.java"


# static fields
.field static sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeHelper;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mDensity:F

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mScreenWidth:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mScreenHeight:I

    .line 19
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EdgeHelper getInstance\'s context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    :cond_0
    sget-object v1, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeHelper;

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeHelper;

    .line 27
    :cond_1
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeHelper;

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dp2px(I)I
    .locals 2
    .param p1, "dpValue"    # I

    .prologue
    .line 36
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mDensity:F

    return v0
.end method

.method public getSceenHeight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mScreenWidth:I

    return v0
.end method

.method public px2dp(I)I
    .locals 2
    .param p1, "pxValue"    # I

    .prologue
    .line 40
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeHelper;->mDensity:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
