.class public Landroid/text/NubiaStaticLayout;
.super Landroid/text/Layout;
.source "NubiaStaticLayout.java"


# static fields
.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 147
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 905
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    .line 928
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/NubiaStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 148
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    .line 149
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 151
    iget-object v0, p0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    .line 153
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/NubiaStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 70
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/NubiaStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 89
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/NubiaStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 81
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/NubiaStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 103
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 905
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    .line 928
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/NubiaStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 116
    if-eqz p11, :cond_2

    .line 117
    invoke-virtual {p0}, Landroid/text/NubiaStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 119
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 120
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 121
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 122
    move/from16 v0, p12

    iput v0, p0, Landroid/text/NubiaStaticLayout;->mEllipsizedWidth:I

    .line 124
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    .line 130
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v1, Landroid/text/Layout$Directions;

    iget v2, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 132
    iget-object v1, p0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    .line 133
    move/from16 v0, p13

    iput v0, p0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    .line 135
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/NubiaStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 137
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/NubiaStaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 141
    iget-object v1, p0, Landroid/text/NubiaStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/NubiaStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/NubiaStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 143
    return-void

    .line 103
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 126
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    .line 127
    move/from16 v0, p5

    iput v0, p0, Landroid/text/NubiaStaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 53
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/NubiaStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 63
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/NubiaStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 65
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 667
    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    if-nez p10, :cond_0

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/NubiaStaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/NubiaStaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/NubiaStaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/NubiaStaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 767
    :goto_0
    return-void

    .line 674
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 678
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 679
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 680
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 683
    .local v10, "len":I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 685
    const/4 v15, 0x0

    .line 688
    .local v15, "sum":F
    move v7, v10

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_1

    .line 689
    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 691
    .local v16, "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_4

    .line 698
    .end local v16    # "w":F
    :cond_1
    const/4 v5, 0x0

    .line 699
    move v4, v7

    .line 765
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/NubiaStaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/NubiaStaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    aput v5, v17, v18

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/NubiaStaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/NubiaStaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v4, v17, v18

    goto :goto_0

    .line 674
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_3
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 695
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_4
    add-float v15, v15, v16

    .line 688
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 701
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_5
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 702
    const-string v17, "StaticLayout"

    const-string v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 705
    :cond_6
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 708
    :cond_7
    const/4 v15, 0x0

    .line 711
    .restart local v15    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_8

    .line 712
    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 714
    .restart local v16    # "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_9

    .line 721
    .end local v16    # "w":F
    :cond_8
    move v5, v7

    .line 722
    sub-int v4, v10, v7

    .line 723
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    .line 724
    add-int/lit8 v5, v10, -0x1

    .line 725
    const/4 v4, 0x1

    goto :goto_3

    .line 718
    .restart local v16    # "w":F
    :cond_9
    add-float v15, v15, v16

    .line 711
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 730
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 731
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v14, 0x0

    .line 732
    .local v14, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v13, v10

    .line 734
    .local v13, "right":I
    sub-float v17, p5, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v12, v17, v18

    .line 735
    .local v12, "ravail":F
    move v13, v10

    :goto_5
    if-lez v13, :cond_b

    .line 736
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 738
    .restart local v16    # "w":F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_d

    .line 745
    .end local v16    # "w":F
    :cond_b
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    .line 746
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_c

    .line 747
    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 749
    .restart local v16    # "w":F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_e

    .line 756
    .end local v16    # "w":F
    :cond_c
    move v5, v9

    .line 757
    sub-int v4, v13, v9

    .line 758
    goto/16 :goto_3

    .line 742
    .end local v8    # "lavail":F
    .restart local v16    # "w":F
    :cond_d
    add-float v14, v14, v16

    .line 735
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 753
    .restart local v8    # "lavail":F
    :cond_e
    add-float v11, v11, v16

    .line 746
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 759
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .end local v16    # "w":F
    :cond_f
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 760
    const-string v17, "StaticLayout"

    const-string v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private getBreakOpp(Ljava/lang/String;[CI[I)[I
    .locals 7
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "text"    # [C
    .param p3, "length"    # I
    .param p4, "recycle"    # [I

    .prologue
    .line 520
    :try_start_0
    const-string v3, "android.text.StaticLayout"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 522
    .local v2, "staticClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "nLineBreakOpportunities"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [C

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, [I

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 524
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 525
    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "staticClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z
    .param p30, "isExtra"    # Z

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 542
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 543
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/NubiaStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 544
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/NubiaStaticLayout;->mLines:[I

    move-object/from16 v25, v0

    .line 546
    .local v25, "lines":[I
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 547
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/Layout$Directions;

    .line 549
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 553
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 554
    .local v19, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 555
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/NubiaStaticLayout;->mLines:[I

    .line 556
    move-object/from16 v25, v19

    .line 559
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 560
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 561
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 562
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 563
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 565
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 566
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 567
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 565
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 571
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 576
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 577
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 578
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 579
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 582
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_12

    const/16 v18, 0x1

    .line 583
    .local v18, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 584
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v13, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_14

    :cond_4
    const/16 v23, 0x1

    .line 586
    .local v23, "lastLine":Z
    :goto_4
    if-eqz v18, :cond_6

    .line 587
    if-eqz p21, :cond_5

    .line 588
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/NubiaStaticLayout;->mTopPadding:I

    .line 591
    :cond_5
    if-eqz p20, :cond_6

    .line 592
    move/from16 p4, p6

    .line 598
    :cond_6
    if-eqz v23, :cond_8

    .line 599
    if-eqz p21, :cond_7

    .line 600
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/NubiaStaticLayout;->mBottomPadding:I

    .line 603
    :cond_7
    if-eqz p20, :cond_8

    .line 604
    move/from16 p5, p7

    .line 608
    :cond_8
    if-eqz p15, :cond_9

    if-eqz v23, :cond_a

    :cond_9
    if-eqz p30, :cond_16

    .line 609
    :cond_a
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 610
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_15

    .line 611
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v15, v2

    .line 619
    .end local v16    # "ex":D
    .local v15, "extra":I
    :goto_5
    add-int/lit8 v2, v26, 0x0

    aput p2, v25, v2

    .line 620
    add-int/lit8 v2, v26, 0x1

    aput p8, v25, v2

    .line 621
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v15

    aput v3, v25, v2

    .line 623
    sub-int v2, p5, p4

    add-int/2addr v2, v15

    add-int p8, p8, v2

    .line 624
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/NubiaStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v25, v2

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/NubiaStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v25, v2

    .line 627
    if-eqz p14, :cond_b

    .line 628
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 630
    :cond_b
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 631
    sget-object v24, Landroid/text/NubiaStaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 635
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_17

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v24, v2, v22

    .line 642
    :goto_6
    if-eqz p25, :cond_11

    .line 647
    if-eqz p29, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_18

    const/4 v12, 0x1

    .line 650
    .local v12, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    if-nez p29, :cond_d

    :cond_c
    if-eqz v18, :cond_e

    if-nez p29, :cond_e

    :cond_d
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_10

    :cond_e
    if-nez v18, :cond_19

    if-nez v13, :cond_f

    if-nez p29, :cond_19

    :cond_f
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_19

    :cond_10
    const/4 v14, 0x1

    .line 653
    .local v14, "doEllipsis":Z
    :goto_8
    if-eqz v14, :cond_11

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 654
    invoke-direct/range {v2 .. v12}, Landroid/text/NubiaStaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 660
    .end local v12    # "forceEllipsis":Z
    .end local v14    # "doEllipsis":Z
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    .line 661
    return p8

    .line 582
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v15    # "extra":I
    .end local v18    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 583
    .restart local v18    # "firstLine":Z
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 584
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 613
    .restart local v16    # "ex":D
    .restart local v23    # "lastLine":Z
    :cond_15
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v15, v2

    .restart local v15    # "extra":I
    goto/16 :goto_5

    .line 616
    .end local v15    # "extra":I
    .end local v16    # "ex":D
    :cond_16
    const/4 v15, 0x0

    .restart local v15    # "extra":I
    goto/16 :goto_5

    .line 638
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_6

    .line 647
    :cond_18
    const/4 v12, 0x0

    goto :goto_7

    .line 650
    .restart local v12    # "forceEllipsis":Z
    :cond_19
    const/4 v14, 0x0

    goto :goto_8
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Landroid/text/NubiaStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/NubiaStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 880
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 136
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 161
    const/16 v93, 0x0

    .line 162
    .local v93, "breakOpp":[I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v116

    .line 164
    .local v116, "localeLanguageTag":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    .line 166
    const/4 v13, 0x0

    .line 167
    .local v13, "v":I
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 169
    .local v20, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/NubiaStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 170
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 172
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/NubiaStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v117, v0

    .line 174
    .local v117, "measured":Landroid/text/MeasuredText;
    const/16 v130, 0x0

    .line 175
    .local v130, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v130, p1

    .line 176
    check-cast v130, Landroid/text/Spanned;

    .line 179
    :cond_1
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_2d

    .line 180
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v36

    .line 182
    .local v36, "paraEnd":I
    if-gez v36, :cond_4

    .line 183
    move/from16 v36, p3

    .line 187
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    add-int/lit8 v100, v5, 0x1

    .line 188
    .local v100, "firstWidthLineLimit":I
    move/from16 v99, p5

    .line 189
    .local v99, "firstWidth":I
    move/from16 v125, p5

    .line 191
    .local v125, "restWidth":I
    const/16 v16, 0x0

    .line 193
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v130, :cond_9

    .line 194
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v130

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/NubiaStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v126

    check-cast v126, [Landroid/text/style/LeadingMarginSpan;

    .line 196
    .local v126, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v109, 0x0

    .local v109, "i":I
    :goto_3
    move-object/from16 v0, v126

    array-length v5, v0

    move/from16 v0, v109

    if-ge v0, v5, :cond_5

    .line 197
    aget-object v113, v126, v109

    .line 198
    .local v113, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v126, v109

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v99, v99, v5

    .line 199
    aget-object v5, v126, v109

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v125, v125, v5

    .line 203
    move-object/from16 v0, v113

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v114, v113

    .line 204
    check-cast v114, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 205
    .local v114, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v130

    move-object/from16 v1, v114

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/NubiaStaticLayout;->getLineForOffset(I)I

    move-result v115

    .line 207
    .local v115, "lmsFirstLine":I
    invoke-interface/range {v114 .. v114}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v5, v5, v115

    move/from16 v0, v100

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v100

    .line 196
    .end local v114    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v115    # "lmsFirstLine":I
    :cond_2
    add-int/lit8 v109, v109, 0x1

    goto :goto_3

    .line 167
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v36    # "paraEnd":I
    .end local v99    # "firstWidth":I
    .end local v100    # "firstWidthLineLimit":I
    .end local v109    # "i":I
    .end local v113    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v117    # "measured":Landroid/text/MeasuredText;
    .end local v125    # "restWidth":I
    .end local v126    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v130    # "spanned":Landroid/text/Spanned;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 185
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v29    # "paraStart":I
    .restart local v36    # "paraEnd":I
    .restart local v117    # "measured":Landroid/text/MeasuredText;
    .restart local v130    # "spanned":Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 214
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v99    # "firstWidth":I
    .restart local v100    # "firstWidthLineLimit":I
    .restart local v109    # "i":I
    .restart local v125    # "restWidth":I
    .restart local v126    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v130

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/NubiaStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 217
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 218
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 219
    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v17

    .line 223
    :cond_7
    const/16 v109, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v109

    if-ge v0, v5, :cond_9

    .line 224
    aget-object v5, v16, v109

    move-object/from16 v0, v130

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v118

    .line 226
    .local v118, "o":I
    move/from16 v0, v118

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 230
    move-object/from16 v0, p0

    move/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/text/NubiaStaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/NubiaStaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v109

    .line 223
    :goto_5
    add-int/lit8 v109, v109, 0x1

    goto :goto_4

    .line 234
    :cond_8
    aput v13, v17, v109

    goto :goto_5

    .line 240
    .end local v109    # "i":I
    .end local v118    # "o":I
    .end local v126    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v117

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v36

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 241
    move-object/from16 v0, v117

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 242
    .local v27, "chs":[C
    move-object/from16 v0, v117

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 243
    .local v28, "widths":[F
    move-object/from16 v0, v117

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 244
    .local v21, "chdirs":[B
    move-object/from16 v0, v117

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 245
    .local v22, "dir":I
    move-object/from16 v0, v117

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 247
    .local v23, "easy":Z
    sub-int v5, v36, v29

    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v27

    move-object/from16 v3, v93

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/text/NubiaStaticLayout;->getBreakOpp(Ljava/lang/String;[CI[I)[I

    move-result-object v93

    .line 249
    const/16 v94, 0x0

    .line 251
    .local v94, "breakOppIndex":I
    move/from16 v135, v99

    .line 253
    .local v135, "width":I
    const/16 v60, 0x0

    .line 256
    .local v60, "w":F
    move/from16 v7, v29

    .line 262
    .local v7, "here":I
    move/from16 v119, v29

    .line 263
    .local v119, "ok":I
    move/from16 v124, v60

    .line 264
    .local v124, "okWidth":F
    const/16 v120, 0x0

    .local v120, "okAscent":I
    const/16 v122, 0x0

    .local v122, "okDescent":I
    const/16 v123, 0x0

    .local v123, "okTop":I
    const/16 v121, 0x0

    .line 269
    .local v121, "okBottom":I
    move/from16 v101, v29

    .line 270
    .local v101, "fit":I
    move/from16 v102, v60

    .line 271
    .local v102, "fitWidth":F
    const/16 v37, 0x0

    .local v37, "fitAscent":I
    const/16 v38, 0x0

    .local v38, "fitDescent":I
    const/16 v39, 0x0

    .local v39, "fitTop":I
    const/16 v40, 0x0

    .line 273
    .local v40, "fitBottom":I
    move/from16 v103, v60

    .line 275
    .local v103, "fitWidthGraphing":F
    const/16 v19, 0x0

    .line 276
    .local v19, "hasTabOrEmoji":Z
    const/16 v108, 0x0

    .line 277
    .local v108, "hasTab":Z
    const/16 v132, 0x0

    .line 278
    .local v132, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v96, 0x20

    .line 279
    .local v96, "cc":C
    move/from16 v129, v29

    .local v129, "spanStart":I
    :goto_6
    move/from16 v0, v129

    move/from16 v1, v36

    if-ge v0, v1, :cond_2a

    .line 280
    if-nez v130, :cond_11

    .line 281
    move/from16 v127, v36

    .line 282
    .local v127, "spanEnd":I
    sub-int v128, v127, v129

    .line 283
    .local v128, "spanLen":I
    move-object/from16 v0, v117

    move-object/from16 v1, p4

    move/from16 v2, v128

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 295
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v107, v0

    .line 296
    .local v107, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v105, v0

    .line 297
    .local v105, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v104, v0

    .line 298
    .local v104, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v106, v0

    .line 300
    .local v106, "fmDescent":I
    move/from16 v112, v129

    .local v112, "j":I
    :goto_8
    move/from16 v0, v112

    move/from16 v1, v127

    if-ge v0, v1, :cond_24

    .line 301
    sub-int v5, v112, v29

    aget-char v95, v27, v5

    .line 302
    .local v95, "c":C
    const/16 v5, 0xa

    move/from16 v0, v95

    if-ne v0, v5, :cond_12

    .line 304
    move/from16 v96, v95

    .line 358
    :goto_9
    const/16 v5, 0x20

    move/from16 v0, v95

    if-eq v0, v5, :cond_a

    const/16 v5, 0x9

    move/from16 v0, v95

    if-eq v0, v5, :cond_a

    const/16 v5, 0x200b

    move/from16 v0, v95

    if-ne v0, v5, :cond_1a

    :cond_a
    const/16 v111, 0x1

    .line 361
    .local v111, "isSpaceOrTab":Z
    :goto_a
    move/from16 v0, v135

    int-to-float v5, v0

    cmpg-float v5, v60, v5

    if-lez v5, :cond_b

    if-eqz v111, :cond_21

    .line 362
    :cond_b
    move/from16 v102, v60

    .line 363
    if-nez v111, :cond_c

    .line 364
    move/from16 v103, v60

    .line 366
    :cond_c
    add-int/lit8 v101, v112, 0x1

    .line 368
    move/from16 v0, v107

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    .line 369
    move/from16 v39, v107

    .line 370
    :cond_d
    move/from16 v0, v104

    move/from16 v1, v37

    if-ge v0, v1, :cond_e

    .line 371
    move/from16 v37, v104

    .line 372
    :cond_e
    move/from16 v0, v106

    move/from16 v1, v38

    if-le v0, v1, :cond_f

    .line 373
    move/from16 v38, v106

    .line 374
    :cond_f
    move/from16 v0, v105

    move/from16 v1, v40

    if-le v0, v1, :cond_10

    .line 375
    move/from16 v40, v105

    .line 378
    :cond_10
    :goto_b
    aget v5, v93, v94

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1b

    aget v5, v93, v94

    sub-int v6, v112, v29

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_1b

    .line 379
    add-int/lit8 v94, v94, 0x1

    goto :goto_b

    .line 285
    .end local v95    # "c":C
    .end local v104    # "fmAscent":I
    .end local v105    # "fmBottom":I
    .end local v106    # "fmDescent":I
    .end local v107    # "fmTop":I
    .end local v111    # "isSpaceOrTab":Z
    .end local v112    # "j":I
    .end local v127    # "spanEnd":I
    .end local v128    # "spanLen":I
    :cond_11
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v130

    move/from16 v1, v129

    move/from16 v2, v36

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v127

    .line 287
    .restart local v127    # "spanEnd":I
    sub-int v128, v127, v129

    .line 288
    .restart local v128    # "spanLen":I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v130

    move/from16 v1, v129

    move/from16 v2, v127

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v131

    check-cast v131, [Landroid/text/style/MetricAffectingSpan;

    .line 290
    .local v131, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v131

    move-object/from16 v1, v130

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v131

    .end local v131    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v131, [Landroid/text/style/MetricAffectingSpan;

    .line 292
    .restart local v131    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v117

    move-object/from16 v1, p4

    move-object/from16 v2, v131

    move/from16 v3, v128

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_7

    .line 305
    .end local v131    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v95    # "c":C
    .restart local v104    # "fmAscent":I
    .restart local v105    # "fmBottom":I
    .restart local v106    # "fmDescent":I
    .restart local v107    # "fmTop":I
    .restart local v112    # "j":I
    :cond_12
    const/16 v5, 0x9

    move/from16 v0, v95

    if-ne v0, v5, :cond_15

    .line 306
    if-nez v108, :cond_13

    .line 307
    const/16 v108, 0x1

    .line 308
    const/16 v19, 0x1

    .line 309
    if-eqz v130, :cond_13

    .line 311
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v130

    move/from16 v1, v29

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v5}, Landroid/text/NubiaStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v131

    check-cast v131, [Landroid/text/style/TabStopSpan;

    .line 314
    .local v131, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v131

    array-length v5, v0

    if-lez v5, :cond_13

    .line 315
    new-instance v132, Landroid/text/Layout$TabStops;

    .end local v132    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v132

    move-object/from16 v1, v131

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 320
    .end local v131    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v132    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_13
    if-eqz v132, :cond_14

    .line 321
    move-object/from16 v0, v132

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v60

    goto/16 :goto_9

    .line 323
    :cond_14
    const/16 v5, 0x14

    move/from16 v0, v60

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v60

    goto/16 :goto_9

    .line 325
    :cond_15
    const v5, 0xd800

    move/from16 v0, v95

    if-lt v0, v5, :cond_19

    const v5, 0xdfff

    move/from16 v0, v95

    if-gt v0, v5, :cond_19

    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v127

    if-ge v5, v0, :cond_19

    .line 327
    sub-int v5, v112, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v97

    .line 329
    .local v97, "emoji":I
    sget v5, Landroid/text/NubiaStaticLayout;->MIN_EMOJI:I

    move/from16 v0, v97

    if-lt v0, v5, :cond_18

    sget v5, Landroid/text/NubiaStaticLayout;->MAX_EMOJI:I

    move/from16 v0, v97

    if-gt v0, v5, :cond_18

    .line 330
    sget-object v5, Landroid/text/NubiaStaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v92

    .line 333
    .local v92, "bm":Landroid/graphics/Bitmap;
    if-eqz v92, :cond_17

    .line 336
    if-nez v130, :cond_16

    .line 337
    move-object/from16 v133, p4

    .line 342
    .local v133, "whichPaint":Landroid/graphics/Paint;
    :goto_c
    invoke-virtual/range {v92 .. v92}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v133 .. v133}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v92 .. v92}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v134, v5, v6

    .line 345
    .local v134, "wid":F
    add-float v60, v60, v134

    .line 346
    const/16 v19, 0x1

    .line 347
    add-int/lit8 v112, v112, 0x1

    .line 348
    goto/16 :goto_9

    .line 339
    .end local v133    # "whichPaint":Landroid/graphics/Paint;
    .end local v134    # "wid":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/NubiaStaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v133, v0

    .restart local v133    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_c

    .line 349
    .end local v133    # "whichPaint":Landroid/graphics/Paint;
    :cond_17
    sub-int v5, v112, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 352
    .end local v92    # "bm":Landroid/graphics/Bitmap;
    :cond_18
    sub-int v5, v112, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 355
    .end local v97    # "emoji":I
    :cond_19
    sub-int v5, v112, v29

    aget v5, v28, v5

    add-float v60, v60, v5

    goto/16 :goto_9

    .line 358
    :cond_1a
    const/16 v111, 0x0

    goto/16 :goto_a

    .line 381
    .restart local v111    # "isSpaceOrTab":Z
    :cond_1b
    move-object/from16 v0, v93

    array-length v5, v0

    move/from16 v0, v94

    if-ge v0, v5, :cond_20

    aget v5, v93, v94

    sub-int v6, v112, v29

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_20

    const/16 v110, 0x1

    .line 384
    .local v110, "isLineBreak":Z
    :goto_d
    if-eqz v110, :cond_1f

    .line 385
    move/from16 v124, v103

    .line 386
    add-int/lit8 v119, v112, 0x1

    .line 388
    move/from16 v0, v39

    move/from16 v1, v123

    if-ge v0, v1, :cond_1c

    .line 389
    move/from16 v123, v39

    .line 390
    :cond_1c
    move/from16 v0, v37

    move/from16 v1, v120

    if-ge v0, v1, :cond_1d

    .line 391
    move/from16 v120, v37

    .line 392
    :cond_1d
    move/from16 v0, v38

    move/from16 v1, v122

    if-le v0, v1, :cond_1e

    .line 393
    move/from16 v122, v38

    .line 394
    :cond_1e
    move/from16 v0, v40

    move/from16 v1, v121

    if-le v0, v1, :cond_1f

    .line 395
    move/from16 v121, v40

    .line 300
    .end local v110    # "isLineBreak":Z
    :cond_1f
    add-int/lit8 v112, v112, 0x1

    goto/16 :goto_8

    .line 381
    :cond_20
    const/16 v110, 0x0

    goto :goto_d

    .line 402
    :cond_21
    move/from16 v0, v119

    if-eq v0, v7, :cond_25

    .line 403
    move/from16 v98, v119

    .line 404
    .local v98, "endPos":I
    move/from16 v9, v120

    .line 405
    .local v9, "above":I
    move/from16 v10, v122

    .line 406
    .local v10, "below":I
    move/from16 v11, v123

    .line 407
    .local v11, "top":I
    move/from16 v12, v121

    .line 408
    .local v12, "bottom":I
    move/from16 v32, v124

    .line 432
    .local v32, "currentTextWidth":F
    :goto_e
    move/from16 v8, v98

    .line 433
    .local v8, "ellipseEnd":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p12

    if-ne v0, v5, :cond_22

    .line 435
    move/from16 v8, v36

    .line 437
    :cond_22
    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    invoke-direct/range {v5 .. v35}, Landroid/text/NubiaStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I

    move-result v13

    .line 445
    move/from16 v7, v98

    .line 446
    add-int/lit8 v112, v7, -0x1

    .line 448
    move/from16 v101, v7

    move/from16 v119, v7

    .line 449
    const/16 v60, 0x0

    .line 450
    move/from16 v103, v60

    .line 451
    const/16 v40, 0x0

    move/from16 v39, v40

    move/from16 v38, v40

    move/from16 v37, v40

    .line 452
    const/16 v121, 0x0

    move/from16 v123, v121

    move/from16 v122, v121

    move/from16 v120, v121

    .line 454
    add-int/lit8 v100, v100, -0x1

    if-gtz v100, :cond_23

    .line 455
    move/from16 v135, v125

    .line 458
    :cond_23
    move/from16 v0, v129

    if-ge v7, v0, :cond_28

    .line 463
    move-object/from16 v0, v117

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 464
    move/from16 v127, v7

    .line 279
    .end local v8    # "ellipseEnd":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v95    # "c":C
    .end local v98    # "endPos":I
    .end local v111    # "isSpaceOrTab":Z
    :cond_24
    move/from16 v129, v127

    goto/16 :goto_6

    .line 409
    .restart local v95    # "c":C
    .restart local v111    # "isSpaceOrTab":Z
    :cond_25
    move/from16 v0, v101

    if-eq v0, v7, :cond_26

    .line 410
    move/from16 v98, v101

    .line 411
    .restart local v98    # "endPos":I
    move/from16 v9, v37

    .line 412
    .restart local v9    # "above":I
    move/from16 v10, v38

    .line 413
    .restart local v10    # "below":I
    move/from16 v11, v39

    .line 414
    .restart local v11    # "top":I
    move/from16 v12, v40

    .line 415
    .restart local v12    # "bottom":I
    move/from16 v32, v102

    .restart local v32    # "currentTextWidth":F
    goto :goto_e

    .line 418
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v98    # "endPos":I
    :cond_26
    add-int/lit8 v98, v7, 0x1

    .line 422
    .restart local v98    # "endPos":I
    :goto_f
    move/from16 v0, v98

    move/from16 v1, v127

    if-ge v0, v1, :cond_27

    sub-int v5, v98, v29

    aget v5, v28, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_27

    .line 423
    add-int/lit8 v98, v98, 0x1

    goto :goto_f

    .line 425
    :cond_27
    move/from16 v9, v104

    .line 426
    .restart local v9    # "above":I
    move/from16 v10, v106

    .line 427
    .restart local v10    # "below":I
    move/from16 v11, v107

    .line 428
    .restart local v11    # "top":I
    move/from16 v12, v105

    .line 429
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32    # "currentTextWidth":F
    goto/16 :goto_e

    .line 468
    .restart local v8    # "ellipseEnd":I
    :cond_28
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_1f

    .line 515
    .end local v7    # "here":I
    .end local v8    # "ellipseEnd":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v32    # "currentTextWidth":F
    .end local v36    # "paraEnd":I
    .end local v37    # "fitAscent":I
    .end local v38    # "fitDescent":I
    .end local v39    # "fitTop":I
    .end local v40    # "fitBottom":I
    .end local v60    # "w":F
    .end local v94    # "breakOppIndex":I
    .end local v95    # "c":C
    .end local v96    # "cc":C
    .end local v98    # "endPos":I
    .end local v99    # "firstWidth":I
    .end local v100    # "firstWidthLineLimit":I
    .end local v101    # "fit":I
    .end local v102    # "fitWidth":F
    .end local v103    # "fitWidthGraphing":F
    .end local v104    # "fmAscent":I
    .end local v105    # "fmBottom":I
    .end local v106    # "fmDescent":I
    .end local v107    # "fmTop":I
    .end local v108    # "hasTab":Z
    .end local v111    # "isSpaceOrTab":Z
    .end local v112    # "j":I
    .end local v119    # "ok":I
    .end local v120    # "okAscent":I
    .end local v121    # "okBottom":I
    .end local v122    # "okDescent":I
    .end local v123    # "okTop":I
    .end local v124    # "okWidth":F
    .end local v125    # "restWidth":I
    .end local v127    # "spanEnd":I
    .end local v128    # "spanLen":I
    .end local v129    # "spanStart":I
    .end local v132    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v135    # "width":I
    :cond_29
    :goto_10
    return-void

    .line 476
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v36    # "paraEnd":I
    .restart local v37    # "fitAscent":I
    .restart local v38    # "fitDescent":I
    .restart local v39    # "fitTop":I
    .restart local v40    # "fitBottom":I
    .restart local v60    # "w":F
    .restart local v94    # "breakOppIndex":I
    .restart local v96    # "cc":C
    .restart local v99    # "firstWidth":I
    .restart local v100    # "firstWidthLineLimit":I
    .restart local v101    # "fit":I
    .restart local v102    # "fitWidth":F
    .restart local v103    # "fitWidthGraphing":F
    .restart local v108    # "hasTab":Z
    .restart local v119    # "ok":I
    .restart local v120    # "okAscent":I
    .restart local v121    # "okBottom":I
    .restart local v122    # "okDescent":I
    .restart local v123    # "okTop":I
    .restart local v124    # "okWidth":F
    .restart local v125    # "restWidth":I
    .restart local v129    # "spanStart":I
    .restart local v132    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v135    # "width":I
    :cond_2a
    move/from16 v0, v36

    if-eq v0, v7, :cond_2c

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_2c

    .line 477
    or-int v5, v39, v40

    or-int v5, v5, v38

    or-int v5, v5, v37

    if-nez v5, :cond_2b

    .line 478
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 480
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v39, v0

    .line 481
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v40, v0

    .line 482
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v37, v0

    .line 483
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v38, v0

    .line 487
    :cond_2b
    move/from16 v0, v36

    move/from16 v1, p3

    if-eq v0, v1, :cond_2f

    const/16 v62, 0x1

    :goto_11
    const/16 v5, 0xa

    move/from16 v0, v96

    if-ne v0, v5, :cond_30

    const/16 v63, 0x1

    :goto_12
    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move/from16 v35, v7

    move/from16 v41, v13

    move/from16 v42, p7

    move/from16 v43, p8

    move-object/from16 v44, v16

    move-object/from16 v45, v17

    move-object/from16 v46, v18

    move/from16 v47, v19

    move/from16 v48, v20

    move-object/from16 v49, v21

    move/from16 v50, v22

    move/from16 v51, v23

    move/from16 v52, p3

    move/from16 v53, p9

    move/from16 v54, p10

    move-object/from16 v55, v27

    move-object/from16 v56, v28

    move/from16 v57, v29

    move-object/from16 v58, p12

    move/from16 v59, p11

    move-object/from16 v61, p4

    invoke-direct/range {v33 .. v63}, Landroid/text/NubiaStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I

    move-result v13

    .line 495
    :cond_2c
    move/from16 v29, v36

    .line 497
    move/from16 v0, v36

    move/from16 v1, p3

    if-ne v0, v1, :cond_31

    .line 502
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v36    # "paraEnd":I
    .end local v37    # "fitAscent":I
    .end local v38    # "fitDescent":I
    .end local v39    # "fitTop":I
    .end local v40    # "fitBottom":I
    .end local v60    # "w":F
    .end local v94    # "breakOppIndex":I
    .end local v96    # "cc":C
    .end local v99    # "firstWidth":I
    .end local v100    # "firstWidthLineLimit":I
    .end local v101    # "fit":I
    .end local v102    # "fitWidth":F
    .end local v103    # "fitWidthGraphing":F
    .end local v108    # "hasTab":Z
    .end local v119    # "ok":I
    .end local v120    # "okAscent":I
    .end local v121    # "okBottom":I
    .end local v122    # "okDescent":I
    .end local v123    # "okTop":I
    .end local v124    # "okWidth":F
    .end local v125    # "restWidth":I
    .end local v129    # "spanStart":I
    .end local v132    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v135    # "width":I
    :cond_2d
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_2e

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_29

    :cond_2e
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_29

    .line 505
    move-object/from16 v0, v117

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 507
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 508
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v65, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v66, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v68, v0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v75, 0x0

    move-object/from16 v0, v117

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v77, v0

    move-object/from16 v0, v117

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v78, v0

    move-object/from16 v0, v117

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v79, v0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v88, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v61, p0

    move-object/from16 v62, p1

    move/from16 v63, p3

    move/from16 v64, p3

    move/from16 v69, v13

    move/from16 v70, p7

    move/from16 v71, p8

    move-object/from16 v74, v18

    move/from16 v76, v20

    move/from16 v80, p3

    move/from16 v81, p9

    move/from16 v82, p10

    move/from16 v85, p2

    move-object/from16 v86, p12

    move/from16 v87, p11

    move-object/from16 v89, p4

    invoke-direct/range {v61 .. v91}, Landroid/text/NubiaStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I

    move-result v13

    goto/16 :goto_10

    .line 487
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v36    # "paraEnd":I
    .restart local v37    # "fitAscent":I
    .restart local v38    # "fitDescent":I
    .restart local v39    # "fitTop":I
    .restart local v40    # "fitBottom":I
    .restart local v60    # "w":F
    .restart local v94    # "breakOppIndex":I
    .restart local v96    # "cc":C
    .restart local v99    # "firstWidth":I
    .restart local v100    # "firstWidthLineLimit":I
    .restart local v101    # "fit":I
    .restart local v102    # "fitWidth":F
    .restart local v103    # "fitWidthGraphing":F
    .restart local v108    # "hasTab":Z
    .restart local v119    # "ok":I
    .restart local v120    # "okAscent":I
    .restart local v121    # "okBottom":I
    .restart local v122    # "okDescent":I
    .restart local v123    # "okTop":I
    .restart local v124    # "okWidth":F
    .restart local v125    # "restWidth":I
    .restart local v129    # "spanStart":I
    .restart local v132    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v135    # "width":I
    :cond_2f
    const/16 v62, 0x0

    goto/16 :goto_11

    :cond_30
    const/16 v63, 0x0

    goto/16 :goto_12

    .line 179
    :cond_31
    move/from16 v29, v36

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Landroid/text/NubiaStaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 853
    iget v0, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 854
    const/4 v0, 0x0

    .line 857
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 862
    iget v0, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 866
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Landroid/text/NubiaStaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 833
    iget-object v0, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 812
    iget-object v1, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 813
    .local v0, "descent":I
    iget v1, p0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 816
    invoke-virtual {p0}, Landroid/text/NubiaStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 818
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 838
    iget-object v0, p0, Landroid/text/NubiaStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 776
    iget v1, p0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    .line 777
    .local v1, "high":I
    const/4 v3, -0x1

    .line 779
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    .line 780
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 781
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 782
    .local v0, "guess":I
    iget v4, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 783
    move v1, v0

    goto :goto_0

    .line 785
    :cond_0
    move v3, v0

    goto :goto_0

    .line 788
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 789
    const/4 v3, 0x0

    .line 791
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 823
    iget-object v0, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 802
    iget-object v1, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 803
    .local v0, "top":I
    iget v1, p0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 805
    invoke-virtual {p0}, Landroid/text/NubiaStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 807
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 828
    iget-object v0, p0, Landroid/text/NubiaStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/NubiaStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Landroid/text/NubiaStaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 875
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/NubiaStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 876
    return-void
.end method
