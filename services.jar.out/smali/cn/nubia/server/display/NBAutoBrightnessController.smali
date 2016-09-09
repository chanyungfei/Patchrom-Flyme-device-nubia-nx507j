.class public Lcn/nubia/server/display/NBAutoBrightnessController;
.super Ljava/lang/Object;
.source "NBAutoBrightnessController.java"


# static fields
.field private static final AUTO_ADJUST_MODE_CURRENT_SCREEN:I = 0x1

.field private static final LCD_AUTO_BRIGHTNESS_LEVEL_UNKNOW:I = -0x1

.field private static final NB_AUTO_ADJUST_MODE:Ljava/lang/String; = "zte_auto_brightness_adj_mode"

.field private static final NB_AUTO_ADJUST_MODE_ALL_SCREEN:I = 0x0

.field private static final NB_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "zte_auto_brightness_adj"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_0:Ljava/lang/String; = "zte_auto_brightness_adj_0"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_1:Ljava/lang/String; = "zte_auto_brightness_adj_1"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_2:Ljava/lang/String; = "zte_auto_brightness_adj_2"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_3:Ljava/lang/String; = "zte_auto_brightness_adj_3"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_4:Ljava/lang/String; = "zte_auto_brightness_adj_4"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_5:Ljava/lang/String; = "zte_auto_brightness_adj_5"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_6:Ljava/lang/String; = "zte_auto_brightness_adj_6"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_7:Ljava/lang/String; = "zte_auto_brightness_adj_7"

.field private static final NB_AUTO_BRIGHTNESS_ADJ_8:Ljava/lang/String; = "zte_auto_brightness_adj_8"

.field private static final NB_AUTO_BRIGHTNESS_LEVEL:Ljava/lang/String; = "zte_auto_brightness_level"

.field private static final NB_AUTO_CONTROL_MODE_ENABLE:Ljava/lang/String; = "zte_auto_brightness_control_mode"

.field private static final TAG:Ljava/lang/String; = "NBAutoBrightnessController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static lcd_auto_brightness_level:I

.field private static final lightArrary:[[I


# instance fields
.field private final MAX_NB_AUTO_BRIGHTNESS:I

.field private final MIN_NB_AUTO_BRIGHTNESS:I

.field private mAdjustObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessLevels:[I

.field private mCallback:Lcn/nubia/server/display/INBAutoBrightnessCallback;

.field private mContext:Landroid/content/Context;

.field private mLcdBacklightValues:[I

.field private mPositive:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/server/display/NBAutoBrightnessController;->lightArrary:[[I

    .line 79
    const/4 v0, -0x1

    sput v0, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x3
        0x14
        0x32
        0x64
        0x190
        0x384
        0x7d0
        0x1388
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x14
        0x41
        0x64
        0x190
        0x384
        0x7d0
        0x1388
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x7
        0x41
        0xbe
        0x190
        0x384
        0x7d0
        0x1388
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x7
        0x26
        0xbe
        0x226
        0x384
        0x7d0
        0x1388
    .end array-data

    :array_4
    .array-data 4
        0x1
        0xa
        0x26
        0x55
        0x226
        0x4ce
        0x7d0
        0x1388
    .end array-data

    :array_5
    .array-data 4
        0x1
        0xa
        0x32
        0x55
        0x136
        0x4ce
        0xb54
        0x1388
    .end array-data

    :array_6
    .array-data 4
        0x1
        0xa
        0x32
        0x64
        0x136
        0x2ee
        0xb54
        0x1f40
    .end array-data

    :array_7
    .array-data 4
        0x1
        0xa
        0x32
        0x64
        0x190
        0x2ee
        0x640
        0x1f40
    .end array-data

    :array_8
    .array-data 4
        0x1
        0xa
        0x32
        0x64
        0x190
        0x384
        0x640
        0xfa0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/display/INBAutoBrightnessCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/nubia/server/display/INBAutoBrightnessCallback;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, 0x1

    iput v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->MIN_NB_AUTO_BRIGHTNESS:I

    .line 66
    const/16 v1, 0xff

    iput v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->MAX_NB_AUTO_BRIGHTNESS:I

    .line 95
    new-instance v1, Lcn/nubia/server/display/NBAutoBrightnessController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/display/NBAutoBrightnessController$1;-><init>(Lcn/nubia/server/display/NBAutoBrightnessController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    .line 302
    new-instance v1, Lcn/nubia/server/display/NBAutoBrightnessController$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/display/NBAutoBrightnessController$2;-><init>(Lcn/nubia/server/display/NBAutoBrightnessController;)V

    iput-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 104
    iput-object p1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mCallback:Lcn/nubia/server/display/INBAutoBrightnessCallback;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x3080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAutoBrightnessLevels:[I

    .line 110
    const v1, 0x3080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    .line 113
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 115
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 121
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximityThreshold:F

    .line 126
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/display/NBAutoBrightnessController;->registerAdjustObserver()V

    .line 127
    return-void
.end method

.method private GetAutoBrightnessValue(F)I
    .locals 3
    .param p1, "lightValue"    # F

    .prologue
    .line 260
    const/4 v1, -0x1

    sget v2, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    if-ne v1, v2, :cond_0

    .line 261
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v1}, Lcn/nubia/server/display/NBAutoBrightnessController;->autoBrightnessValueInit(F[I)I

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 264
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAutoBrightnessLevels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 265
    sget-object v1, Lcn/nubia/server/display/NBAutoBrightnessController;->lightArrary:[[I

    sget v2, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    .line 269
    :cond_1
    sput v0, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    .line 270
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    sget v2, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    aget v1, v1, v2

    goto :goto_0

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic access$000(Lcn/nubia/server/display/NBAutoBrightnessController;)Lcn/nubia/server/display/INBAutoBrightnessCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mCallback:Lcn/nubia/server/display/INBAutoBrightnessCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/display/NBAutoBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/server/display/NBAutoBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mPositive:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/display/NBAutoBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/display/NBAutoBrightnessController;

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximityThreshold:F

    return v0
.end method

.method private autoBrightnessValueInit(F[I)I
    .locals 3
    .param p1, "sensorValue"    # F
    .param p2, "values"    # [I

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAutoBrightnessLevels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAutoBrightnessLevels:[I

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 255
    :cond_0
    sput v0, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    .line 256
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    sget v2, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    aget v1, v1, v2

    return v1

    .line 250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getZteAutoBrightnessAdjValue()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "value":I
    iget-object v3, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_adj_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 217
    .local v2, "zteAutoBrightnessAdjMode":I
    iget-object v3, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_level"

    sget v5, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    if-nez v2, :cond_1

    .line 221
    iget-object v3, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_adj"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 223
    .local v0, "adj":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_0

    .line 224
    sget v3, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-direct {p0, v3}, Lcn/nubia/server/display/NBAutoBrightnessController;->getZteMinAutoBrightnessAdj(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 245
    :goto_0
    return v1

    .line 228
    :cond_0
    sget v3, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-direct {p0, v3}, Lcn/nubia/server/display/NBAutoBrightnessController;->getZteMaxAutoBrightnessAdj(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0

    .line 233
    .end local v0    # "adj":F
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget v4, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-direct {p0, v4}, Lcn/nubia/server/display/NBAutoBrightnessController;->getZteAutoBrightnessLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 235
    .restart local v0    # "adj":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_2

    .line 236
    sget v3, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-direct {p0, v3}, Lcn/nubia/server/display/NBAutoBrightnessController;->getZteMinAutoBrightnessAdj(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0

    .line 240
    :cond_2
    sget v3, Lcn/nubia/server/display/NBAutoBrightnessController;->lcd_auto_brightness_level:I

    invoke-direct {p0, v3}, Lcn/nubia/server/display/NBAutoBrightnessController;->getZteMaxAutoBrightnessAdj(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0
.end method

.method private getZteAutoBrightnessLevel(I)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_0

    .line 208
    const-string v0, "zte_auto_brightness_adj_5"

    :goto_0
    return-object v0

    .line 190
    :pswitch_0
    const-string v0, "zte_auto_brightness_adj_0"

    goto :goto_0

    .line 192
    :pswitch_1
    const-string v0, "zte_auto_brightness_adj_1"

    goto :goto_0

    .line 194
    :pswitch_2
    const-string v0, "zte_auto_brightness_adj_2"

    goto :goto_0

    .line 196
    :pswitch_3
    const-string v0, "zte_auto_brightness_adj_3"

    goto :goto_0

    .line 198
    :pswitch_4
    const-string v0, "zte_auto_brightness_adj_4"

    goto :goto_0

    .line 200
    :pswitch_5
    const-string v0, "zte_auto_brightness_adj_5"

    goto :goto_0

    .line 202
    :pswitch_6
    const-string v0, "zte_auto_brightness_adj_6"

    goto :goto_0

    .line 204
    :pswitch_7
    const-string v0, "zte_auto_brightness_adj_7"

    goto :goto_0

    .line 206
    :pswitch_8
    const-string v0, "zte_auto_brightness_adj_8"

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getZteMaxAutoBrightnessAdj(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    aget v2, v2, p1

    sub-int v0, v1, v2

    .line 184
    .local v0, "max":I
    :goto_0
    return v0

    .line 182
    .end local v0    # "max":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    aget v1, v1, p1

    rsub-int v0, v1, 0xff

    .restart local v0    # "max":I
    goto :goto_0
.end method

.method private getZteMinAutoBrightnessAdj(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 169
    if-lez p1, :cond_0

    .line 170
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int v0, v1, v2

    .line 174
    .local v0, "min":I
    :goto_0
    return v0

    .line 172
    .end local v0    # "min":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mLcdBacklightValues:[I

    aget v1, v1, p1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "min":I
    goto :goto_0
.end method

.method private registerAdjustObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_0"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_3"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_4"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_5"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_6"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_7"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_8"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mAdjustObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    return-void
.end method


# virtual methods
.method public autoUpdateBrightnessValidity()Z
    .locals 3

    .prologue
    .line 318
    iget-boolean v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    iget-boolean v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mPositive:Z

    and-int v0, v1, v2

    .line 319
    .local v0, "proximity":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBrightness(F)I
    .locals 3
    .param p1, "ambientLux"    # F

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcn/nubia/server/display/NBAutoBrightnessController;->GetAutoBrightnessValue(F)I

    move-result v1

    .line 276
    .local v1, "value":I
    invoke-direct {p0}, Lcn/nubia/server/display/NBAutoBrightnessController;->getZteAutoBrightnessAdjValue()I

    move-result v0

    .line 277
    .local v0, "adjustment":I
    add-int v2, v1, v0

    return v2
.end method

.method public saveScreenBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    return-void
.end method

.method public setNBControlModeEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zte_auto_brightness_control_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setZetAutoBrightnessSensorEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 284
    if-eqz p1, :cond_1

    .line 285
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    .line 287
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z

    .line 294
    iget-object v0, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method
