.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;
.super Lcn/nubia/server/appmgmt/XmlOperator;
.source "ApplicationNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkXmlOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/server/appmgmt/XmlOperator",
        "<",
        "Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Ljava/io/File;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 1014
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    .line 1015
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/XmlOperator;-><init>(Ljava/io/File;)V

    .line 1016
    return-void
.end method


# virtual methods
.method createObject()Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    .locals 7

    .prologue
    .line 1084
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDefaultDelayedControlMillis:J
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOffDelayedControlMillis:J
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$2100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)J

    move-result-wide v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;JJLjava/util/HashMap;)V

    return-object v0
.end method

.method bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->createObject()Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->createObject()Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    move-result-object v22

    .line 1047
    .local v22, "temp":Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .local v23, "type":I
    const/4 v3, 0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_3

    .line 1048
    const/4 v3, 0x3

    move/from16 v0, v23

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    move/from16 v0, v23

    if-eq v0, v3, :cond_0

    .line 1051
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1052
    .local v21, "tag":Ljava/lang/String;
    const-string v3, "delay_mills"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1053
    const/4 v3, 0x0

    const-string v4, "delay_mills"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1054
    .local v13, "defAttr":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 1055
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v22

    # setter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J
    invoke-static {v0, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$202(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;J)J

    .line 1057
    :cond_1
    const/4 v3, 0x0

    const-string v4, "screen_off_delay_mills"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1058
    .local v19, "screenDelay":Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 1059
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v22

    # setter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J
    invoke-static {v0, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$302(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;J)J

    goto :goto_0

    .line 1061
    .end local v13    # "defAttr":Ljava/lang/String;
    .end local v19    # "screenDelay":Ljava/lang/String;
    :cond_2
    const-string v3, "app_settings"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1062
    const/4 v3, 0x0

    const-string v4, "app"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1063
    .local v14, "pkg":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "mobile_background"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1064
    .local v2, "bMobile":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "wifi_background"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1065
    .local v12, "bWifi":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "mobile_screen_off"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1066
    .local v17, "sMobile":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "wifi_screen_off"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1067
    .local v18, "sWifi":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "g_in_screen_off"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1068
    .local v16, "s2g":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "return_no_network"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1069
    .local v15, "rnn":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "delay_control_mills"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1070
    .local v20, "sdelay":Ljava/lang/String;
    if-eqz v14, :cond_0

    if-eqz v2, :cond_0

    if-eqz v12, :cond_0

    if-eqz v17, :cond_0

    if-eqz v18, :cond_0

    if-eqz v16, :cond_0

    if-eqz v15, :cond_0

    if-eqz v20, :cond_0

    .line 1072
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->array:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$400(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)Ljava/util/HashMap;

    move-result-object v24

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-direct/range {v3 .. v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;-><init>(ZZJZZZZ)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1079
    .end local v2    # "bMobile":Ljava/lang/String;
    .end local v12    # "bWifi":Ljava/lang/String;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "rnn":Ljava/lang/String;
    .end local v16    # "s2g":Ljava/lang/String;
    .end local v17    # "sMobile":Ljava/lang/String;
    .end local v18    # "sWifi":Ljava/lang/String;
    .end local v20    # "sdelay":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    :cond_3
    return-object v22
.end method

.method bridge synthetic readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->readDataXml(Lorg/xmlpull/v1/XmlPullParser;)Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    move-result-object v0

    return-object v0
.end method

.method writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)V
    .locals 9
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "data"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1022
    const-string v4, "delay_mills"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1023
    const-string v4, "delay_mills"

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->defaultDelay:J
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1024
    const-string v4, "screen_off_delay_mills"

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->screenDelay:J
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1025
    const-string v4, "delay_mills"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1027
    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->array:Ljava/util/HashMap;
    invoke-static {p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;->access$400(Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1028
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1029
    .local v0, "app":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .line 1030
    .local v1, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    const-string v4, "app_settings"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1031
    const-string v4, "app"

    invoke-interface {p2, v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1032
    const-string v4, "mobile_background"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1033
    const-string v4, "wifi_background"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1034
    const-string v4, "mobile_screen_off"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1035
    const-string v4, "wifi_screen_off"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1036
    const-string v4, "g_in_screen_off"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->allowDisconnectIn2GAndScreenOff:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    const-string v4, "return_no_network"

    iget-boolean v5, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->returnNoNetworkWhenDisabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    const-string v4, "delay_control_mills"

    iget-wide v6, v1, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->delayedControlMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1039
    const-string v4, "app_settings"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1041
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;>;"
    :cond_0
    return-void
.end method

.method bridge synthetic writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/BufferedOutputStream;
    .param p2, "x1"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1013
    check-cast p3, Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NetworkXmlOperator;->writeDataXml(Ljava/io/BufferedOutputStream;Lorg/xmlpull/v1/XmlSerializer;Lcn/nubia/server/appmgmt/ApplicationNetworkController$XmlData;)V

    return-void
.end method
