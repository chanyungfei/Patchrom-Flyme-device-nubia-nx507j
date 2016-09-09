.class public Lnubia/widget/NubiaAnalogBigClockWithCity;
.super Landroid/widget/FrameLayout;
.source "NubiaAnalogBigClockWithCity.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAmString:Ljava/lang/String;

.field private mAmpmString:Ljava/lang/String;

.field private mAnalogClock:Lnubia/widget/NubiaAnalogClock;

.field private mApmView:Landroid/widget/TextView;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCityView:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24Hour:Z

.field private mPmString:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaAnalogBigClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaAnalogBigClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    new-instance v8, Lnubia/widget/NubiaAnalogBigClockWithCity$1;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaAnalogBigClockWithCity$1;-><init>(Lnubia/widget/NubiaAnalogBigClockWithCity;)V

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v8, Lnubia/widget/NubiaAnalogBigClockWithCity$2;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v9}, Lnubia/widget/NubiaAnalogBigClockWithCity$2;-><init>(Lnubia/widget/NubiaAnalogBigClockWithCity;Landroid/os/Handler;)V

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 52
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 54
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/high16 v8, 0x3030000

    const/4 v9, 0x1

    invoke-virtual {v6, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    const v8, 0x30d000c

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaAnalogBigClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnubia/widget/NubiaAnalogClock;

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    .line 59
    const v8, 0x30d000d

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaAnalogBigClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    .line 60
    const v8, 0x30d000e

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaAnalogBigClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateView:Landroid/widget/TextView;

    .line 61
    const v8, 0x30d000f

    invoke-virtual {p0, v8}, Lnubia/widget/NubiaAnalogBigClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mApmView:Landroid/widget/TextView;

    .line 62
    sget-object v8, Lcn/nubia/internal/R$styleable;->ClockWidgetAnalogClockWithCity:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 70
    .local v3, "cityTextSize":F
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 75
    .local v2, "cityTextColor":I
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 79
    .local v5, "dateTextSize":F
    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 85
    .local v4, "dateTextColor":I
    float-to-int v8, v3

    if-eqz v8, :cond_0

    .line 86
    iget-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    :cond_0
    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    .line 88
    iget-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    :cond_1
    float-to-int v8, v5

    if-eqz v8, :cond_2

    .line 92
    iget-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateView:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    :cond_2
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 94
    iget-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 99
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x30c0019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateFormat:Ljava/lang/String;

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mIs24Hour:Z

    .line 104
    new-instance v8, Ljava/text/DateFormatSymbols;

    invoke-direct {v8}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v8}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "ampmArray":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v1, v8

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAmString:Ljava/lang/String;

    .line 106
    const/4 v8, 0x1

    aget-object v8, v1, v8

    iput-object v8, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mPmString:Ljava/lang/String;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaAnalogBigClockWithCity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogBigClockWithCity;

    .prologue
    .line 30
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/widget/NubiaAnalogBigClockWithCity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogBigClockWithCity;

    .prologue
    .line 30
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$202(Lnubia/widget/NubiaAnalogBigClockWithCity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogBigClockWithCity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mIs24Hour:Z

    return p1
.end method

.method static synthetic access$300(Lnubia/widget/NubiaAnalogBigClockWithCity;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogBigClockWithCity;

    .prologue
    .line 30
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogBigClockWithCity;->updateTime()V

    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 167
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mTimeZone:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 170
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    .local v0, "dateFormat":Ljava/lang/CharSequence;
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .end local v0    # "dateFormat":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-boolean v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mIs24Hour:Z

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mApmView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :goto_1
    return-void

    .line 172
    .restart local v0    # "dateFormat":Ljava/lang/CharSequence;
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 176
    .end local v0    # "dateFormat":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mApmView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAmString:Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAmpmString:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mApmView:Landroid/widget/TextView;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAmpmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 177
    :cond_3
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mPmString:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 121
    iget-boolean v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAttached:Z

    if-nez v1, :cond_0

    .line 122
    iput-boolean v4, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAttached:Z

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogBigClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogBigClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 137
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mTimeZone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 141
    :cond_1
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogBigClockWithCity;->updateTime()V

    .line 142
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 187
    iget-boolean v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAttached:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogBigClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAttached:Z

    .line 192
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogBigClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 2
    .param p1, "city"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLightClock(Z)V
    .locals 4
    .param p1, "isLight"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v3, 0x3b

    const/16 v2, 0xff

    .line 223
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mApmView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaAnalogClock;->setLightClock(Z)V

    .line 227
    if-eqz p1, :cond_2

    .line 228
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mApmView:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mApmView:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mTimeZone:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 151
    iget-object v0, p0, Lnubia/widget/NubiaAnalogBigClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaAnalogClock;->setTimezone(Ljava/lang/String;)V

    goto :goto_0
.end method
