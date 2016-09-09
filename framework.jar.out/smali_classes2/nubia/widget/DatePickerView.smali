.class public Lnubia/widget/DatePickerView;
.super Landroid/widget/FrameLayout;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/DatePickerView$SavedState;,
        Lnubia/widget/DatePickerView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2


# instance fields
.field private mDay:I

.field private mDayLabel:Landroid/widget/TextView;

.field private mDayView:Lnubia/widget/WheelView;

.field private mMaxDayOfMonth:I

.field private mMonth:I

.field private mMonthLabel:Landroid/widget/TextView;

.field private mMonthView:Lnubia/widget/WheelView;

.field private mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mYear:I

.field private mYearLabel:Landroid/widget/TextView;

.field private mYearView:Lnubia/widget/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30a001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 62
    .local v5, "middleZoneColor":I
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 65
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x303000c

    invoke-virtual {v4, v7, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    invoke-virtual {p0, v9}, Lnubia/widget/DatePickerView;->setBackgroundColor(I)V

    .line 69
    const v7, 0x30d002b

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    .line 70
    const v7, 0x30d002c

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    .line 71
    const v7, 0x30d002d

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "currentLanguage":Ljava/lang/String;
    const-string v7, "zh"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ja"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ko"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    :cond_0
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_1
    const v7, 0x30d0003

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    .line 83
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    const/16 v8, 0x7b2

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 84
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    const/16 v8, 0x7f5

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 85
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    new-instance v8, Lnubia/widget/DatePickerView$1;

    invoke-direct {v8, p0}, Lnubia/widget/DatePickerView$1;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 97
    const v7, 0x30d0004

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    .line 98
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-static {}, Lnubia/widget/WheelView;->getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setFormatter(Lnubia/widget/WheelView$Formatter;)V

    .line 99
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 100
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "months":[Ljava/lang/String;
    aget-object v7, v6, v9

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 102
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_2

    .line 103
    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_2
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v7, v10}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 106
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v7, v11}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 112
    .end local v3    # "i":I
    :goto_1
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    new-instance v8, Lnubia/widget/DatePickerView$2;

    invoke-direct {v8, p0}, Lnubia/widget/DatePickerView$2;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 124
    const v7, 0x30d0005

    invoke-virtual {p0, v7}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/WheelView;

    iput-object v7, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    .line 125
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-static {}, Lnubia/widget/WheelView;->getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setFormatter(Lnubia/widget/WheelView$Formatter;)V

    .line 126
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    new-instance v8, Lnubia/widget/DatePickerView$3;

    invoke-direct {v8, p0}, Lnubia/widget/DatePickerView$3;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 136
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    .line 138
    return-void

    .line 108
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_3
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v7, v10}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 109
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v7, v11}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 110
    iget-object v7, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v7, v6}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lnubia/widget/DatePickerView;->mDay:I

    return p1
.end method

.method private static getCurrentYear()I
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final adjustMaxDay()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 165
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/4 v1, 0x2

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 168
    iget v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    iget v2, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    if-le v1, v2, :cond_0

    .line 169
    iget v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 171
    :cond_0
    return-void
.end method

.method public final getDayOfMonth()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lnubia/widget/DatePickerView;->mDay:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lnubia/widget/DatePickerView;->mYear:I

    return v0
.end method

.method public final notifyDateChanged()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v3, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lnubia/widget/DatePickerView$OnDateChangeListener;->onDateChanged(Lnubia/widget/DatePickerView;III)V

    .line 178
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 158
    .local v7, "top":I
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 159
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lnubia/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 160
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 216
    move-object v0, p1

    check-cast v0, Lnubia/widget/DatePickerView$SavedState;

    .line 217
    .local v0, "ss":Lnubia/widget/DatePickerView$SavedState;
    invoke-virtual {v0}, Lnubia/widget/DatePickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 218
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sYear:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 219
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sMonth:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 220
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sDay:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 221
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 222
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 211
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lnubia/widget/DatePickerView$SavedState;

    iget v2, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v3, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v4, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-direct {v1, v0, v2, v3, v4}, Lnubia/widget/DatePickerView$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-object v1
.end method

.method public final update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangeListener"    # Lnubia/widget/DatePickerView$OnDateChangeListener;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 182
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 183
    iput p2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 184
    iput p3, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 185
    iput-object p4, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    .line 186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 188
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 189
    const/4 v1, 0x2

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 190
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 191
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 192
    return-void
.end method

.method public final updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 141
    iget v0, p0, Lnubia/widget/DatePickerView;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lnubia/widget/DatePickerView;->mDay:I

    if-eq v0, p3, :cond_1

    .line 142
    :cond_0
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 143
    iput p2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 144
    iput p3, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 145
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 146
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->notifyDateChanged()V

    .line 148
    :cond_1
    return-void
.end method

.method public final updateDaySpinners()V
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 202
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 203
    .local v1, "max":I
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 204
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v3, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 205
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v3, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setValue(I)V

    .line 206
    return-void
.end method

.method public final updateSpinners()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateDaySpinners()V

    .line 196
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    .line 197
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    iget v1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    .line 198
    return-void
.end method
