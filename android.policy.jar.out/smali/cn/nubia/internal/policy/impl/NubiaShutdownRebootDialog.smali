.class public Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
.super Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;
.source "NubiaShutdownRebootDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;,
        Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_UPDATEUI:I = 0x1234


# instance fields
.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mCallbackAction:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;

.field private mCancelImageView:Landroid/widget/ImageView;

.field private mCancelTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDarkenLayerImageView:Landroid/widget/ImageView;

.field private mFuzzyLayerImageView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHandlerTakescreen:Landroid/os/Handler;

.field private mHomeEnable:Z

.field private mRebootFlag:Z

.field private mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

.field private mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

.field private mShutdownFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p3, "theme"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;I)V

    .line 48
    iput-boolean v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutdownFlag:Z

    .line 49
    iput-boolean v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootFlag:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCallbackAction:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;

    .line 51
    iput-boolean v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHomeEnable:Z

    .line 53
    new-instance v0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;-><init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHandlerTakescreen:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$2;-><init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHandler:Landroid/os/Handler;

    .line 119
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    .line 120
    iput-boolean v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootFlag:Z

    .line 121
    iput-boolean v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutdownFlag:Z

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->isCanInterrupt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->getWallpaperGrayValue()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHandlerTakescreen:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCallbackAction:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutdownFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutdownFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootFlag:Z

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->setCancelAlpha(FF)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->startEnterAnimator()V

    return-void
.end method

.method private getWallpaperGrayValue()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v13

    .line 234
    .local v13, "wm":Landroid/app/WallpaperManager;
    const-class v1, Landroid/app/WallpaperManager;

    const-string v2, "clipBlurWallpaper"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 236
    .local v9, "getBlurWallpaper":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 237
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 238
    .local v10, "h":I
    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 239
    .local v12, "w":I
    new-instance v11, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v11, v1, v2, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    .local v11, "rect":Landroid/graphics/Rect;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v9, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 242
    .local v0, "wallpaper":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 243
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 244
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    .end local v0    # "wallpaper":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v9    # "getBlurWallpaper":Ljava/lang/reflect/Method;
    .end local v10    # "h":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "w":I
    .end local v13    # "wm":Landroid/app/WallpaperManager;
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v8

    .line 247
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    const v0, 0x30d0061

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 152
    const v0, 0x30d005b

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;

    .line 153
    const v0, 0x30d005c

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;

    .line 154
    const v0, 0x30d005f

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    .line 155
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x302013e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setText(Ljava/lang/String;)V

    .line 158
    const v0, 0x30d0060

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    .line 159
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x302013d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setText(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mFuzzyLayerImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mDarkenLayerImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setDarkenAndFuzzyImage(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    new-instance v1, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;

    invoke-direct {v1, p0, v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;-><init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setOnChangeListener(Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;)V

    .line 164
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    new-instance v1, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;

    invoke-direct {v1, p0, v3}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;-><init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setOnChangeListener(Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;)V

    .line 165
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setHandler(Landroid/os/Handler;)V

    .line 166
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setMessageFlag(I)V

    .line 167
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setHandler(Landroid/os/Handler;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->setMessageFlag(I)V

    .line 169
    const v0, 0x30d0062

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    .line 170
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$4;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$4;-><init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method private isCanInterrupt()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->isCanInterrupt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->isCanInterrupt()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHomeEnable:Z

    .line 279
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->isCanInterrupt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->isCanInterrupt()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 278
    goto :goto_0

    :cond_1
    move v1, v2

    .line 279
    goto :goto_1
.end method

.method private setCancelAlpha(FF)V
    .locals 3
    .param p1, "shift"    # F
    .param p2, "maxScrollerDistance"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 254
    div-float v1, p2, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 260
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 261
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 262
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 263
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->postInvalidate()V

    .line 264
    return-void

    .line 257
    .end local v0    # "alpha":F
    :cond_0
    sub-float p1, p2, p1

    .line 258
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v2, p1

    div-float/2addr v2, p2

    sub-float v0, v1, v2

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private startEnterAnimator()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const-wide/16 v6, 0xe1

    const/4 v5, 0x2

    .line 283
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelImageView:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 285
    .local v0, "oa1":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCancelTextView:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 287
    .local v1, "oa2":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 290
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 292
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 293
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 294
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 295
    return-void

    .line 283
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 285
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 214
    .local v11, "mWindowManager":Landroid/view/WindowManager;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 215
    .local v10, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 216
    .local v8, "mDisplay":Landroid/view/Display;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    .local v9, "mDisplayMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 219
    const/4 v0, 0x2

    new-array v7, v0, [F

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    aput v0, v7, v3

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    aput v0, v7, v2

    .line 222
    .local v7, "dims":[F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aget v1, v7, v3

    float-to-int v1, v1

    aget v2, v7, v2

    float-to-int v2, v2

    const/4 v4, -0x1

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 224
    .local v12, "screenBitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 228
    .end local v12    # "screenBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v12

    .line 226
    .restart local v12    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v12, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 227
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_0
.end method

.method private taskScreenShot()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$5;-><init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method


# virtual methods
.method public isHomeEnable()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mHomeEnable:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x303002a

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->setContentView(I)V

    .line 129
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->init()V

    .line 130
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->taskScreenShot()V

    .line 131
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 307
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->isCanInterrupt()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    .line 308
    .local v0, "mBackEnable":Z
    :goto_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .end local v0    # "mBackEnable":Z
    :cond_3
    move v0, v1

    .line 307
    goto :goto_0
.end method

.method public setCallbackShutdownOrReboot(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;)V
    .locals 0
    .param p1, "callbackAction"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;

    .prologue
    .line 302
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCallbackAction:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;

    .line 303
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;->show()V

    .line 136
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$3;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$3;-><init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 147
    return-void
.end method
