.class public Lnubia/widget/DialogLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DialogLinearLayout.java"


# static fields
.field private static final DEFAULT_MAX_RATIO:F = 0.635f

.field private static final LAND_MAX_RATIO:F = 0.8f


# instance fields
.field private mMaxHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 46
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method private isLandScreen()Z
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lnubia/widget/DialogLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 30
    iget-object v4, p0, Lnubia/widget/DialogLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lnubia/widget/DialogLinearLayout;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 31
    .local v3, "sceenHeight":I
    invoke-direct {p0}, Lnubia/widget/DialogLinearLayout;->isLandScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x3f4ccccd    # 0.8f

    int-to-float v5, v3

    mul-float/2addr v4, v5

    :goto_0
    iput v4, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeight:F

    .line 33
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 34
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 35
    .local v1, "heightSize":I
    int-to-float v4, v1

    iget v5, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeight:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 36
    :goto_1
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 37
    .local v2, "maxHeightMeasureSpec":I
    invoke-super {p0, p1, v2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 38
    return-void

    .line 31
    .end local v0    # "heightMode":I
    .end local v1    # "heightSize":I
    .end local v2    # "maxHeightMeasureSpec":I
    :cond_0
    const v4, 0x3f228f5c    # 0.635f

    int-to-float v5, v3

    mul-float/2addr v4, v5

    goto :goto_0

    .line 35
    .restart local v0    # "heightMode":I
    .restart local v1    # "heightSize":I
    :cond_1
    iget v4, p0, Lnubia/widget/DialogLinearLayout;->mMaxHeight:F

    float-to-int v1, v4

    goto :goto_1
.end method
