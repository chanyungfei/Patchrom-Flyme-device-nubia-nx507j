.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppNetworkConfig"
.end annotation


# instance fields
.field public allowDisconnectIn2GAndScreenOff:Z

.field public delayedControlMillis:J

.field public enableMobile:Z

.field public enableMobileInScreenOff:Z

.field public enableWifi:Z

.field public enableWifiInScreenOff:Z

.field public returnNoNetworkWhenDisabled:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 3
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z

    .prologue
    const/4 v2, 0x0

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 730
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 731
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 732
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 733
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 736
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 737
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 738
    return-void
.end method

.method public constructor <init>(ZZJZZZZ)V
    .locals 3
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z
    .param p3, "delay"    # J
    .param p5, "mobileInScreenOff"    # Z
    .param p6, "wifiInScreenOff"    # Z
    .param p7, "returnNoNetwork"    # Z
    .param p8, "allow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 730
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 731
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 732
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 733
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 759
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 760
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 761
    iput-wide p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 762
    iput-boolean p5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 763
    iput-boolean p6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 764
    iput-boolean p7, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 765
    iput-boolean p8, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 766
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 3
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z
    .param p3, "returnNoNetwork"    # Z

    .prologue
    const/4 v2, 0x0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 730
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 731
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 732
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 733
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 741
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 742
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 743
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 744
    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 3
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z
    .param p3, "mobileInScreenOff"    # Z
    .param p4, "wifiInScreenOff"    # Z
    .param p5, "returnNoNetwork"    # Z

    .prologue
    const/4 v2, 0x0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    .line 730
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 731
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 732
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 733
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    .line 749
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 750
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 751
    iput-boolean p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    .line 752
    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    .line 753
    iput-boolean p5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    .line 754
    return-void
.end method
