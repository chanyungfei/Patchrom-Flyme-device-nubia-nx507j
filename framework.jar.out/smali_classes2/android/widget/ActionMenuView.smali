.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$1;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mNubiaActionBar:Lnubia/widget/IActionBar;

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 85
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 86
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 87
    iput v2, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 89
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnubia/widget/NubiaActionBar;

    invoke-direct {v1, p1, p0}, Lnubia/widget/NubiaActionBar;-><init>(Landroid/content/Context;Landroid/widget/ActionMenuView;)V

    :goto_0
    iput-object v1, p0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    .line 91
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v1}, Lnubia/widget/IActionBar;->resetMaxItemHeight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0}, Landroid/widget/ActionMenuView;->setResetMaxItemHeight()V

    .line 95
    :cond_0
    return-void

    .line 89
    :cond_1
    new-instance v1, Lnubia/widget/ProtoActionBar;

    invoke-direct {v1, p1, p0}, Lnubia/widget/ProtoActionBar;-><init>(Landroid/content/Context;Landroid/widget/ActionMenuView;)V

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 420
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 422
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 423
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 425
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 427
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 429
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 430
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 431
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 433
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 436
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 437
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 438
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 441
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 442
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 444
    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 445
    mul-int v10, v0, p1

    .line 446
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 448
    return v0

    .line 425
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 427
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 441
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 192
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 193
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 194
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 196
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 197
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 199
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 202
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 206
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 208
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 210
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 401
    :goto_0
    return-void

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 216
    .local v5, "cellSize":I
    move v8, v4

    .line 217
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 218
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 219
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 220
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 221
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 224
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 226
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v12

    .line 227
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_8

    .line 228
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 229
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 227
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 231
    :cond_2
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 232
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 234
    if-eqz v21, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 241
    .local v23, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 242
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 243
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 244
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 245
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 246
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 247
    if-eqz v21, :cond_6

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_6

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 250
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/4 v7, 0x1

    .line 252
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 255
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 256
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 257
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    const/16 v16, 0x1

    .line 259
    :cond_5
    sub-int/2addr v8, v9

    .line 260
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 261
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 247
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v38, 0x0

    goto :goto_3

    :cond_7
    move v7, v8

    .line 250
    goto :goto_4

    .line 266
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 271
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 272
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_e

    if-lez v8, :cond_e

    .line 273
    const v26, 0x7fffffff

    .line 274
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 275
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 276
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v12, :cond_d

    .line 277
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 278
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 281
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 276
    :cond_9
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 266
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 284
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 285
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 286
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 287
    const/16 v27, 0x1

    goto :goto_8

    .line 288
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 289
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 290
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 295
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v28

    .line 297
    move/from16 v0, v27

    if-le v0, v8, :cond_13

    .line 326
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_e
    if-nez v16, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 327
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_20

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_20

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_f

    if-nez v31, :cond_f

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 329
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 331
    .local v13, "expandCount":F
    if-nez v31, :cond_11

    .line 333
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_10

    .line 334
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 335
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 337
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_10
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 338
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 339
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 343
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_19

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 346
    .local v15, "extraPixels":I
    :goto_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v12, :cond_1f

    .line 347
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1a

    .line 346
    :cond_12
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 300
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_13
    add-int/lit8 v26, v26, 0x1

    .line 302
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_17

    .line 303
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 304
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 305
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_15

    .line 307
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 302
    :cond_14
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 311
    :cond_15
    if-eqz v10, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_16

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 315
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 316
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 317
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 320
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    .line 321
    goto/16 :goto_6

    .line 326
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 343
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 349
    .restart local v15    # "extraPixels":I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 350
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 351
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 353
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 354
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 355
    if-nez v20, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1b

    .line 358
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 360
    :cond_1b
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 361
    :cond_1c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 362
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 363
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 364
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 365
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 370
    :cond_1d
    if-eqz v20, :cond_1e

    .line 371
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 373
    :cond_1e
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 374
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 379
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1f
    const/4 v8, 0x0

    .line 383
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_20
    if-eqz v30, :cond_22

    .line 384
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_22

    .line 385
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 386
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 388
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_21

    .line 384
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 390
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 391
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 396
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_22
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    .line 397
    move/from16 v19, v25

    .line 400
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method private setResetMaxItemHeight()V
    .locals 2

    .prologue
    .line 843
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x309003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuView;->mMaxItemHeight:I

    .line 845
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 608
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 714
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 581
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 583
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 584
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 589
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 594
    if-eqz p1, :cond_2

    .line 595
    instance-of v1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    .line 598
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 599
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 603
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 595
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 614
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 615
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 642
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 643
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 644
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 645
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 646
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 647
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 648
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 650
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 651
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 654
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    .line 648
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 721
    if-nez p1, :cond_1

    .line 722
    const/4 v2, 0x0

    .line 733
    :cond_0
    :goto_0
    return v2

    .line 724
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 725
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 727
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 728
    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 730
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 731
    check-cast v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 630
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 631
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 620
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public nubiaUiOnLayout(ZIIII)Z
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 856
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public nubiaUiOnMeasure(II)Z
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 849
    iget v1, p0, Landroid/widget/ActionMenuView;->mMaxItemHeight:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 850
    .local v0, "itemHeightSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 851
    const/4 v1, 0x1

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 138
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v0}, Lnubia/widget/IActionBar;->resetMaxItemHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Landroid/widget/ActionMenuView;->setResetMaxItemHeight()V

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 144
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 146
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 565
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 566
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 567
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 35
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-interface/range {v4 .. v9}, Lnubia/widget/IActionBar;->getActionMenuViewOnLayout(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-nez v4, :cond_2

    .line 460
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 465
    .local v11, "childCount":I
    sub-int v4, p5, p3

    div-int/lit8 v20, v4, 0x2

    .line 466
    .local v20, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v12

    .line 467
    .local v12, "dividerWidth":I
    const/16 v23, 0x0

    .line 468
    .local v23, "overflowWidth":I
    const/16 v22, 0x0

    .line 469
    .local v22, "nonOverflowWidth":I
    const/16 v21, 0x0

    .line 470
    .local v21, "nonOverflowCount":I
    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    sub-int v34, v4, v5

    .line 471
    .local v34, "widthRemaining":I
    const/4 v13, 0x0

    .line 472
    .local v13, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v16

    .line 473
    .local v16, "isLayoutRtl":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v11, :cond_8

    .line 474
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 475
    .local v32, "v":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 473
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 479
    :cond_3
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/ActionMenuView$LayoutParams;

    .line 480
    .local v24, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_6

    .line 481
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 482
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    add-int v23, v23, v12

    .line 486
    :cond_4
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 489
    .local v14, "height":I
    if-eqz v16, :cond_5

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int v17, v4, v5

    .line 491
    .local v17, "l":I
    add-int v25, v17, v23

    .line 496
    .local v25, "r":I
    :goto_3
    div-int/lit8 v4, v14, 0x2

    sub-int v31, v20, v4

    .line 497
    .local v31, "t":I
    add-int v10, v31, v14

    .line 498
    .local v10, "b":I
    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/view/View;->layout(IIII)V

    .line 500
    sub-int v34, v34, v23

    .line 501
    const/4 v13, 0x1

    .line 502
    goto :goto_2

    .line 493
    .end local v10    # "b":I
    .end local v17    # "l":I
    .end local v25    # "r":I
    .end local v31    # "t":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v25, v4, v5

    .line 494
    .restart local v25    # "r":I
    sub-int v17, v25, v23

    .restart local v17    # "l":I
    goto :goto_3

    .line 503
    .end local v14    # "height":I
    .end local v17    # "l":I
    .end local v25    # "r":I
    :cond_6
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int v26, v4, v5

    .line 504
    .local v26, "size":I
    add-int v22, v22, v26

    .line 505
    sub-int v34, v34, v26

    .line 506
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 507
    add-int v22, v22, v12

    .line 509
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 513
    .end local v24    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "size":I
    .end local v32    # "v":Landroid/view/View;
    :cond_8
    const/4 v4, 0x1

    if-ne v11, v4, :cond_9

    if-nez v13, :cond_9

    .line 515
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 516
    .restart local v32    # "v":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    .line 517
    .local v33, "width":I
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 518
    .restart local v14    # "height":I
    sub-int v4, p4, p2

    div-int/lit8 v19, v4, 0x2

    .line 519
    .local v19, "midHorizontal":I
    div-int/lit8 v4, v33, 0x2

    sub-int v17, v19, v4

    .line 520
    .restart local v17    # "l":I
    div-int/lit8 v4, v14, 0x2

    sub-int v31, v20, v4

    .line 521
    .restart local v31    # "t":I
    add-int v4, v17, v33

    add-int v5, v31, v14

    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 525
    .end local v14    # "height":I
    .end local v17    # "l":I
    .end local v19    # "midHorizontal":I
    .end local v31    # "t":I
    .end local v32    # "v":Landroid/view/View;
    .end local v33    # "width":I
    :cond_9
    if-eqz v13, :cond_b

    const/4 v4, 0x0

    :goto_4
    sub-int v27, v21, v4

    .line 526
    .local v27, "spacerCount":I
    const/4 v5, 0x0

    if-lez v27, :cond_c

    div-int v4, v34, v27

    :goto_5
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 528
    .local v28, "spacerSize":I
    if-eqz v16, :cond_e

    .line 529
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v30, v4, v5

    .line 530
    .local v30, "startRight":I
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v11, :cond_0

    .line 531
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 532
    .restart local v32    # "v":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/ActionMenuView$LayoutParams;

    .line 533
    .local v18, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_a

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_d

    .line 530
    :cond_a
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 525
    .end local v18    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v27    # "spacerCount":I
    .end local v28    # "spacerSize":I
    .end local v30    # "startRight":I
    .end local v32    # "v":Landroid/view/View;
    :cond_b
    const/4 v4, 0x1

    goto :goto_4

    .line 526
    .restart local v27    # "spacerCount":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 537
    .restart local v18    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "spacerSize":I
    .restart local v30    # "startRight":I
    .restart local v32    # "v":Landroid/view/View;
    :cond_d
    move-object/from16 v0, v18

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v30, v30, v4

    .line 538
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    .line 539
    .restart local v33    # "width":I
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 540
    .restart local v14    # "height":I
    div-int/lit8 v4, v14, 0x2

    sub-int v31, v20, v4

    .line 541
    .restart local v31    # "t":I
    sub-int v4, v30, v33

    add-int v5, v31, v14

    move-object/from16 v0, v32

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 542
    move-object/from16 v0, v18

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int v4, v4, v33

    add-int v4, v4, v28

    sub-int v30, v30, v4

    goto :goto_7

    .line 545
    .end local v14    # "height":I
    .end local v18    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v30    # "startRight":I
    .end local v31    # "t":I
    .end local v32    # "v":Landroid/view/View;
    .end local v33    # "width":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v29

    .line 546
    .local v29, "startLeft":I
    const/4 v15, 0x0

    :goto_8
    if-ge v15, v11, :cond_0

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 548
    .restart local v32    # "v":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/ActionMenuView$LayoutParams;

    .line 549
    .restart local v18    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_10

    .line 546
    :cond_f
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 553
    :cond_10
    move-object/from16 v0, v18

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int v29, v29, v4

    .line 554
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    .line 555
    .restart local v33    # "width":I
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 556
    .restart local v14    # "height":I
    div-int/lit8 v4, v14, 0x2

    sub-int v31, v20, v4

    .line 557
    .restart local v31    # "t":I
    add-int v4, v29, v33

    add-int v5, v31, v14

    move-object/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 558
    move-object/from16 v0, v18

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int v4, v4, v33

    add-int v4, v4, v28

    add-int v29, v29, v4

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 155
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v6, p1, p2}, Lnubia/widget/IActionBar;->getActionMenuViewOnMeasure(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 162
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_3

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 164
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_1

    .line 165
    iput v8, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 170
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 171
    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_2

    .line 172
    iput v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 173
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 176
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 177
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_4

    if-lez v1, :cond_4

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_0

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_3
    move v6, v8

    .line 162
    goto :goto_1

    .line 181
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 182
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 184
    .local v3, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 186
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 742
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 743
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 662
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 663
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 664
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 149
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 150
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 577
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 105
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 106
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 107
    if-nez p1, :cond_1

    .line 108
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 130
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 131
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
