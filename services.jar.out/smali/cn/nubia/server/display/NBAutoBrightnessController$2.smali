.class Lcn/nubia/server/display/NBAutoBrightnessController$2;
.super Ljava/lang/Object;
.source "NBAutoBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/display/NBAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/display/NBAutoBrightnessController;


# direct methods
.method constructor <init>(Lcn/nubia/server/display/NBAutoBrightnessController;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcn/nubia/server/display/NBAutoBrightnessController$2;->this$0:Lcn/nubia/server/display/NBAutoBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 314
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController$2;->this$0:Lcn/nubia/server/display/NBAutoBrightnessController;

    # getter for: Lcn/nubia/server/display/NBAutoBrightnessController;->mProximitySensorEnabled:Z
    invoke-static {v2}, Lcn/nubia/server/display/NBAutoBrightnessController;->access$100(Lcn/nubia/server/display/NBAutoBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .line 307
    .local v0, "distance":F
    iget-object v2, p0, Lcn/nubia/server/display/NBAutoBrightnessController$2;->this$0:Lcn/nubia/server/display/NBAutoBrightnessController;

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/server/display/NBAutoBrightnessController$2;->this$0:Lcn/nubia/server/display/NBAutoBrightnessController;

    # getter for: Lcn/nubia/server/display/NBAutoBrightnessController;->mProximityThreshold:F
    invoke-static {v3}, Lcn/nubia/server/display/NBAutoBrightnessController;->access$300(Lcn/nubia/server/display/NBAutoBrightnessController;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    # setter for: Lcn/nubia/server/display/NBAutoBrightnessController;->mPositive:Z
    invoke-static {v2, v1}, Lcn/nubia/server/display/NBAutoBrightnessController;->access$202(Lcn/nubia/server/display/NBAutoBrightnessController;Z)Z

    .line 309
    .end local v0    # "distance":F
    :cond_1
    return-void
.end method
