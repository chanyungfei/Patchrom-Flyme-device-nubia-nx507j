.class public Landroid/app/NubiaThemeHelper;
.super Ljava/lang/Object;
.source "NubiaThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NubiaThemeHelper$UnitEntry;
    }
.end annotation


# static fields
.field public static final NUBIA_RES_PATH:Ljava/lang/String; = "/system/framework/framework-nubia-res.apk"

.field private static final NUBIA_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field private static final sFloatOut:[F

.field private static final sFloatPattern:Ljava/util/regex/Pattern;

.field private static final sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x5

    .line 238
    const-string v0, "(-?[0-9]+(?:\\.[0-9]+)?)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/NubiaThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    .line 240
    new-array v0, v7, [F

    sput-object v0, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    .line 256
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/app/NubiaThemeHelper$UnitEntry;

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v2, "px"

    invoke-direct {v1, v2, v5, v8, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v2, "dip"

    invoke-direct {v1, v2, v5, v7, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "dp"

    invoke-direct {v2, v3, v5, v7, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v3, "sp"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v3, "pt"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v2, "in"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v5, v3, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string/jumbo v2, "mm"

    invoke-direct {v1, v2, v5, v5, v6}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v1, v0, v9

    const/4 v1, 0x7

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "%"

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v2, v3, v9, v8, v4}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/app/NubiaThemeHelper$UnitEntry;

    const-string v3, "%p"

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v2, v3, v9, v7, v4}, Landroid/app/NubiaThemeHelper$UnitEntry;-><init>(Ljava/lang/String;IIF)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 39
    const-string v0, "/system/framework/framework-nubia-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method private static applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V
    .locals 2
    .param p0, "unit"    # Landroid/app/NubiaThemeHelper$UnitEntry;
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "outScale"    # [F

    .prologue
    .line 411
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->type:I

    iput v0, p1, Landroid/util/TypedValue;->type:I

    .line 412
    iget v0, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->unit:I

    shl-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/util/TypedValue;->data:I

    .line 413
    const/4 v0, 0x0

    iget v1, p0, Landroid/app/NubiaThemeHelper$UnitEntry;->scale:F

    aput v1, p2, v0

    .line 414
    return-void
.end method

.method private static computeTypedValue(Landroid/util/TypedValue;FF)V
    .locals 10
    .param p0, "outValue"    # Landroid/util/TypedValue;
    .param p1, "value"    # F
    .param p2, "scale"    # F

    .prologue
    const-wide/16 v8, 0x0

    .line 357
    mul-float/2addr p1, p2

    .line 358
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    const/4 v3, 0x1

    .line 359
    .local v3, "neg":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 360
    neg-float p1, p1

    .line 362
    :cond_0
    const/high16 v6, 0x4b000000    # 8388608.0f

    mul-float/2addr v6, p1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-long v0, v6

    .line 365
    .local v0, "bits":J
    const-wide/32 v6, 0x7fffff

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 368
    const/4 v4, 0x0

    .line 369
    .local v4, "radix":I
    const/16 v5, 0x17

    .line 387
    .local v5, "shift":I
    :goto_1
    shr-long v6, v0, v5

    const-wide/32 v8, 0xffffff

    and-long/2addr v6, v8

    long-to-int v2, v6

    .line 388
    .local v2, "mantissa":I
    if-eqz v3, :cond_1

    .line 389
    neg-int v6, v2

    const v7, 0xffffff

    and-int v2, v6, v7

    .line 391
    :cond_1
    iget v6, p0, Landroid/util/TypedValue;->data:I

    shl-int/lit8 v7, v4, 0x4

    shl-int/lit8 v8, v2, 0x8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p0, Landroid/util/TypedValue;->data:I

    .line 393
    return-void

    .line 358
    .end local v0    # "bits":J
    .end local v2    # "mantissa":I
    .end local v3    # "neg":Z
    .end local v4    # "radix":I
    .end local v5    # "shift":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 370
    .restart local v0    # "bits":J
    .restart local v3    # "neg":Z
    :cond_3
    const-wide/32 v6, -0x800000

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 372
    const/4 v4, 0x3

    .line 373
    .restart local v4    # "radix":I
    const/4 v5, 0x0

    .restart local v5    # "shift":I
    goto :goto_1

    .line 374
    .end local v4    # "radix":I
    .end local v5    # "shift":I
    :cond_4
    const-wide/32 v6, -0x80000000

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 376
    const/4 v4, 0x2

    .line 377
    .restart local v4    # "radix":I
    const/16 v5, 0x8

    .restart local v5    # "shift":I
    goto :goto_1

    .line 378
    .end local v4    # "radix":I
    .end local v5    # "shift":I
    :cond_5
    const-wide v6, -0x8000000000L

    and-long/2addr v6, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 380
    const/4 v4, 0x1

    .line 381
    .restart local v4    # "radix":I
    const/16 v5, 0x10

    .restart local v5    # "shift":I
    goto :goto_1

    .line 384
    .end local v4    # "radix":I
    .end local v5    # "shift":I
    :cond_6
    const/4 v4, 0x0

    .line 385
    .restart local v4    # "radix":I
    const/16 v5, 0x17

    .restart local v5    # "shift":I
    goto :goto_1
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "from"    # Landroid/content/res/Configuration;
    .param p1, "to"    # Landroid/content/res/Configuration;

    .prologue
    .line 44
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget v1, v1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, v0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 45
    return-void
.end method

.method private static generateIconDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "retDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 134
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p5, "isCustomizedIcon"    # Z

    .prologue
    .line 50
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/NubiaThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "packageItemName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lnubia/content/res/IconCustomizer;->isIconFileExist()Z

    move-result v2

    .line 70
    .local v2, "iconFileExist":Z
    invoke-static {p1, p4}, Lnubia/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "fileName":Ljava/lang/String;
    new-instance v3, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v3, v1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 76
    .local v3, "resourceName":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-static {v3}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 79
    .local v4, "retDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_1

    .line 80
    if-eqz v2, :cond_2

    invoke-static {p1}, Lnubia/content/res/IconCustomizer;->isExclude(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 83
    if-eqz v4, :cond_0

    .line 86
    invoke-static {v4, v1}, Landroid/app/NubiaThemeHelper;->generateIconDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 122
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 123
    invoke-static {v3, v4}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object v5, v4

    .line 126
    .end local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    .local v5, "retDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v5

    .line 89
    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v2, :cond_3

    .line 90
    invoke-static {p1, p4}, Lnubia/content/res/IconCustomizer;->getCustomizedIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 94
    :cond_3
    if-nez v4, :cond_0

    .line 98
    :try_start_0
    const-string v6, "cn.nubia.calendar.preset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 100
    new-instance v4, Lnubia/fancydrawable/DateDrawable;

    .end local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v4}, Lnubia/fancydrawable/DateDrawable;-><init>()V

    .line 110
    .restart local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    if-eqz v4, :cond_7

    :cond_5
    move-object v5, v4

    .line 111
    .end local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 101
    .end local v5    # "retDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    const-string v6, "cn.nubia.deskclock.preset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    new-instance v4, Lnubia/fancydrawable/TimeDrawable;

    .end local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v4}, Lnubia/fancydrawable/TimeDrawable;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 105
    .end local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 107
    .restart local v4    # "retDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 114
    if-eqz v4, :cond_0

    .line 117
    invoke-static {v4, v1}, Landroid/app/NubiaThemeHelper;->generateIconDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changed"    # I
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 144
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lnubia/content/res/IconCustomizer;->clearCache()V

    .line 150
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    invoke-virtual {v0}, Lnubia/content/res/ExtraConfiguration;->needReloadFont()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Landroid/graphics/Typeface;->reload()V

    goto :goto_0
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "changed"    # I
    .param p1, "cfg"    # Landroid/content/res/Configuration;
    .param p2, "cxt"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 171
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {p0, p1}, Landroid/app/NubiaThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public static isCompatibilityMode(I)Z
    .locals 1
    .param p0, "changed"    # I

    .prologue
    .line 184
    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 3
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 188
    if-eqz p0, :cond_1

    .line 189
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 190
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 196
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 189
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "changed"    # I
    .param p2, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 221
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lnubia/content/res/ExtraConfiguration;->removeNeedRestartActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->extraConfig:Lnubia/content/res/ExtraConfiguration;

    iget-wide v0, v0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-static {p0, v0, v1}, Lnubia/content/res/ExtraConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/NubiaThemeHelper;->parseFloatAttribute(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static parseFloatAttribute(Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "requireUnit"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 289
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 291
    .local v8, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 294
    .local v6, "len":I
    if-gtz v6, :cond_0

    .line 295
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 352
    :goto_0
    return-object v9

    .line 299
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 300
    .local v0, "buf":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 301
    aget-char v9, v0, v5

    const/16 v10, 0xff

    if-le v9, v10, :cond_1

    .line 302
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 300
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 307
    :cond_2
    aget-char v9, v0, v11

    const/16 v10, 0x30

    if-ge v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x39

    if-le v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_3

    aget-char v9, v0, v11

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_3

    .line 308
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 312
    :cond_3
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 313
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 314
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "f_str":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "end":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 325
    .local v3, "f":F
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_5

    .line 327
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    invoke-static {v2, v8, v9}, Landroid/app/NubiaThemeHelper;->parseUnit(Ljava/lang/String;Landroid/util/TypedValue;[F)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 328
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    aget v9, v9, v11

    invoke-static {v8, v3, v9}, Landroid/app/NubiaThemeHelper;->computeTypedValue(Landroid/util/TypedValue;FF)V

    .line 329
    iget v9, v8, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 320
    .end local v3    # "f":F
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 331
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "f":F
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 335
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 338
    if-eqz v8, :cond_7

    .line 339
    if-nez p1, :cond_6

    .line 340
    const/4 v9, 0x4

    iput v9, v8, Landroid/util/TypedValue;->type:I

    .line 341
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    iput v9, v8, Landroid/util/TypedValue;->data:I

    .line 347
    :goto_2
    iget v9, v8, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    .line 344
    :cond_6
    sget-object v9, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    aget-object v9, v9, v12

    sget-object v10, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    invoke-static {v9, v8, v10}, Landroid/app/NubiaThemeHelper;->applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V

    .line 345
    sget-object v9, Landroid/app/NubiaThemeHelper;->sFloatOut:[F

    aget v9, v9, v11

    invoke-static {v8, v3, v9}, Landroid/app/NubiaThemeHelper;->computeTypedValue(Landroid/util/TypedValue;FF)V

    goto :goto_2

    .line 352
    .end local v2    # "end":Ljava/lang/String;
    .end local v3    # "f":F
    .end local v4    # "f_str":Ljava/lang/String;
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static parseUnit(Ljava/lang/String;Landroid/util/TypedValue;[F)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "outScale"    # [F

    .prologue
    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 399
    sget-object v0, Landroid/app/NubiaThemeHelper;->sUnitNames:[Landroid/app/NubiaThemeHelper$UnitEntry;

    .local v0, "arr$":[Landroid/app/NubiaThemeHelper$UnitEntry;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 400
    .local v3, "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    iget-object v4, v3, Landroid/app/NubiaThemeHelper$UnitEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    invoke-static {v3, p1, p2}, Landroid/app/NubiaThemeHelper;->applyUnit(Landroid/app/NubiaThemeHelper$UnitEntry;Landroid/util/TypedValue;[F)V

    .line 402
    const/4 v4, 0x1

    .line 406
    .end local v3    # "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    :goto_1
    return v4

    .line 399
    .restart local v3    # "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v3    # "unit":Landroid/app/NubiaThemeHelper$UnitEntry;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
