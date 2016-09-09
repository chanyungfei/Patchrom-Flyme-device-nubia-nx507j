.class public Lnubia/widget/NubiaCharacterListView;
.super Landroid/view/View;
.source "NubiaCharacterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    }
.end annotation


# instance fields
.field private final BOUNDS:I

.field private final TAG:Ljava/lang/String;

.field protected b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private mChoose:I

.field private mFlag:Z

.field private mHighLightCharacterList:[Ljava/lang/String;

.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintPos:Landroid/graphics/Paint;

.field private mPaintTxt:Landroid/graphics/Paint;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupXLoc:I

.field private mRectBg:Landroid/graphics/RectF;

.field onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

.field private temp:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 27
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    .line 31
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    .line 40
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 41
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 42
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    .line 43
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 27
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    .line 31
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    .line 40
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 41
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 42
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    .line 43
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 27
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    .line 31
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    .line 40
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 41
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 42
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    .line 43
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 24
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private hidePopupWindow()V
    .locals 4

    .prologue
    .line 311
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnubia/widget/NubiaCharacterListView$1;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaCharacterListView$1;-><init>(Lnubia/widget/NubiaCharacterListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x3030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "popupContent":Landroid/view/View;
    const/high16 v2, 0x30d0000

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 68
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 70
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 71
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x309007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    .line 74
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 76
    .local v0, "circleColor":I
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    return-void
.end method

.method private isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "highLightCharacterList"    # [Ljava/lang/String;
    .param p2, "currentCharacter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 284
    if-nez p1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v4

    .line 288
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 289
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 290
    const/4 v4, 0x1

    goto :goto_0

    .line 288
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showPopupWindow(Ljava/lang/String;)V
    .locals 4
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x5

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 185
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 186
    .local v4, "y":F
    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 187
    .local v3, "oldChoose":I
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 189
    .local v2, "listener":Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 191
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return v8

    .line 194
    :pswitch_0
    iput-boolean v8, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    .line 195
    if-eq v3, v1, :cond_2

    if-eqz v2, :cond_2

    .line 196
    if-ltz v1, :cond_2

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 197
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 199
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lnubia/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 201
    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 206
    :cond_2
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 210
    :pswitch_1
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 211
    if-ltz v1, :cond_0

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 212
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    iget-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v7, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7}, Lnubia/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 217
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lnubia/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    .line 219
    :cond_4
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v8, v5, :cond_0

    .line 220
    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 221
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 229
    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    .line 230
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 231
    if-eqz v2, :cond_5

    .line 232
    invoke-interface {v2, v7}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 234
    :cond_5
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 238
    :pswitch_3
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 240
    if-eqz v2, :cond_6

    .line 241
    invoke-interface {v2, v7}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 243
    :cond_6
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected drawLetter(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v4

    .line 100
    .local v4, "height":I
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v12

    .line 106
    .local v12, "width":I
    const/16 v15, 0x32a

    if-ge v4, v15, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 111
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getSingleHeight()F

    move-result v11

    .line 112
    .local v11, "singleHeight":F
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x309007d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 114
    .local v7, "paintTextSize":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v15, v15

    if-ge v6, v15, :cond_5

    .line 115
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x30a000f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 117
    .local v10, "releaseTextColor":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    div-int/lit8 v15, v12, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v13, v15, v16

    .line 122
    .local v13, "xPos":F
    int-to-float v15, v6

    mul-float/2addr v15, v11

    add-float v14, v15, v11

    .line 123
    .local v14, "yPos":F
    const/high16 v15, 0x41200000    # 10.0f

    div-float v15, v11, v15

    sub-float v2, v14, v15

    .line 124
    .local v2, "baseY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lnubia/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    and-int v15, v15, v16

    if-eqz v15, :cond_0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x30a0011

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 129
    .local v5, "highlightTextColor":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    .end local v5    # "highlightTextColor":I
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    if-ne v6, v15, :cond_2

    .line 132
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x30a0010

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 134
    .local v8, "pressedTextColor":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    if-nez v15, :cond_1

    .line 135
    const v15, 0x3f866666    # 1.05f

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float v3, v2, v15

    .line 137
    .local v3, "centerY":F
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getSingleHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v9, v15, v16

    .line 138
    .local v9, "radius":F
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintPos:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v3, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x30a0012

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 142
    .end local v3    # "centerY":F
    .end local v9    # "radius":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 145
    .end local v8    # "pressedTextColor":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v15, v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v13, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v15}, Landroid/graphics/Paint;->reset()V

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 109
    .end local v2    # "baseY":F
    .end local v6    # "i":I
    .end local v7    # "paintTextSize":F
    .end local v10    # "releaseTextColor":I
    .end local v11    # "singleHeight":F
    .end local v13    # "xPos":F
    .end local v14    # "yPos":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    goto/16 :goto_0

    .line 124
    .restart local v2    # "baseY":F
    .restart local v6    # "i":I
    .restart local v7    # "paintTextSize":F
    .restart local v10    # "releaseTextColor":I
    .restart local v11    # "singleHeight":F
    .restart local v13    # "xPos":F
    .restart local v14    # "yPos":F
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 148
    .end local v2    # "baseY":F
    .end local v10    # "releaseTextColor":I
    .end local v13    # "xPos":F
    .end local v14    # "yPos":F
    :cond_5
    return-void
.end method

.method protected drawViewBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 88
    .local v0, "backgroundColor":I
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    return-void
.end method

.method public getSingleHeight()F
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v0, v1, v2

    .line 158
    .local v0, "effectHeight":F
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 306
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 308
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-virtual {p0, p1}, Lnubia/widget/NubiaCharacterListView;->drawViewBackground(Landroid/graphics/Canvas;)V

    .line 174
    invoke-virtual {p0, p1}, Lnubia/widget/NubiaCharacterListView;->drawLetter(Landroid/graphics/Canvas;)V

    .line 175
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 164
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public setCurrentLetter(Ljava/lang/String;)V
    .locals 3
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 259
    iget v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    :cond_3
    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 269
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 265
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setHighLightCharacterList([Ljava/lang/String;)V
    .locals 0
    .param p1, "characterList"    # [Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .prologue
    .line 325
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 326
    return-void
.end method
