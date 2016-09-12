.class Landroid/widget/NubiaCursorController$SelectionStartHandleView;
.super Landroid/widget/NubiaCursorController$NubiaHandleView;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NubiaCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "editor"    # Landroid/widget/Editor;
    .param p3, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1630
    iput-object p1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->this$0:Landroid/widget/NubiaCursorController;

    .line 1631
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/NubiaCursorController$NubiaHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1632
    return-void
.end method


# virtual methods
.method protected getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .param p1, "outLocation"    # [I

    .prologue
    .line 1641
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1642
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mContainerY:I

    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mLineHeight:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1643
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1647
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected isVisible()Z
    .locals 3

    .prologue
    .line 1651
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 1652
    const/4 v0, 0x1

    .line 1655
    :goto_0
    return v0

    .line 1653
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    const/4 v0, 0x0

    goto :goto_0

    .line 1655
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mEditor:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mMarkHeightMatchHandleHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->isPositionVisibleWrap(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 1662
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1663
    .local v2, "markWidth":I
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1664
    .local v0, "dHeight":I
    iget v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mBottom:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 1666
    .local v1, "markBottom":I
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v5, v1, v0

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1668
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v6, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1670
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1671
    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1672
    return-void
.end method

.method protected updateContainerSize()V
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1676
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 1677
    .local v0, "lineheight":I
    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mLineHeight:I

    if-ne v1, v0, :cond_0

    .line 1692
    :goto_0
    return-void

    .line 1679
    :cond_0
    iput v0, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mLineHeight:I

    .line 1680
    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mMinHandleRatio:F

    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mMarkHeightMatchHandleHeight:I

    div-int v2, v0, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mRatio:F

    .line 1682
    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mRatio:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 1683
    iput v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mRatio:F

    .line 1684
    :cond_1
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mMarkHeightMatchHandleHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1686
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mContainer:Landroid/widget/PopupWindow;

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1689
    iput v0, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mHandleTypeOffset:I

    .line 1690
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTouchOffsetY:F

    .line 1691
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 1696
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 1698
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1699
    .local v0, "end":I
    if-lt v1, v0, :cond_0

    .line 1700
    add-int/lit8 v2, v0, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1701
    :cond_0
    invoke-virtual {p0, v1, v3}, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 1702
    return-void
.end method

.method protected updatePositionXY(IZ)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "hasPositionChanged"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1706
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1707
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1708
    .local v1, "line":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mMarkHeightMatchHandleHeight:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionX:I

    .line 1709
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionY:I

    .line 1710
    iget v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionX:I

    iget-object v7, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionX:I

    .line 1711
    iget v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionY:I

    iget-object v7, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionY:I

    .line 1712
    if-eqz p2, :cond_2

    .line 1713
    new-array v2, v10, [I

    .line 1714
    .local v2, "location":[I
    iget-object v4, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    .line 1715
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 1716
    .local v5, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 1717
    check-cast v4, Landroid/view/View;

    .line 1718
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_0

    .line 1720
    :cond_0
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1722
    new-array v3, v10, [I

    .line 1723
    .local v3, "locationViewParent":[I
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1725
    if-eqz v5, :cond_1

    .line 1726
    aget v6, v2, v8

    aget v7, v3, v8

    sub-int/2addr v6, v7

    aput v6, v2, v8

    .line 1727
    aget v6, v2, v9

    aget v7, v3, v9

    sub-int/2addr v6, v7

    aput v6, v2, v9

    .line 1730
    :cond_1
    aget v6, v2, v8

    iget v7, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionX:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mContainerX:I

    .line 1731
    aget v6, v2, v9

    iget v7, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mPositionY:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mContainerY:I

    .line 1733
    .end local v2    # "location":[I
    .end local v3    # "locationViewParent":[I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewParent":Landroid/view/ViewParent;
    :cond_2
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1736
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Editor;->setTextSelectionWrap(II)V

    .line 1737
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionStartHandleView;->updateDrawable()V

    .line 1738
    return-void
.end method