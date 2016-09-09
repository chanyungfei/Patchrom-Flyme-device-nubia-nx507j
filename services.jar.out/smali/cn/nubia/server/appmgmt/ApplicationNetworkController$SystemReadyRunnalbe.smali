.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemReadyRunnalbe"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/ApplicationNetworkController$1;

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;-><init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 679
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 680
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 723
    :cond_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 684
    .local v9, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_0

    .line 687
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 688
    const-string v11, "ApplicationNetworkController"

    const-string v12, "system ready. try to set uid rule"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 692
    .local v10, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    invoke-static {v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v12, v12, v14

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 695
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 698
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 699
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 700
    const-string v11, "ApplicationNetworkController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "process "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " contains multiple packages:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", skip setting"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_4
    iget-object v1, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v8, v1, v6

    .line 705
    .local v8, "p":Ljava/lang/String;
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    invoke-static {v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 710
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "p":Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    iget-object v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v12, v12, v14

    invoke-interface {v11, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 713
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mAppBackgroundConfigs:Ljava/util/HashMap;
    invoke-static {v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$800(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v12, v12, v14

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;

    .line 714
    .local v2, "config":Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;
    iget-boolean v3, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobile:Z

    .line 715
    .local v3, "enableMobile":Z
    iget-boolean v4, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifi:Z

    .line 717
    .local v4, "enableWifi":Z
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mScreenOn:Z
    invoke-static {v11}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1200(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 718
    iget-boolean v11, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableMobileInScreenOff:Z

    and-int/2addr v3, v11

    .line 719
    iget-boolean v11, v2, Lcn/nubia/server/appmgmt/ApplicationNetworkController$AppNetworkConfig;->enableWifiInScreenOff:Z

    and-int/2addr v4, v11

    .line 721
    :cond_6
    iget-object v11, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$SystemReadyRunnalbe;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v13, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v13, v13, v14

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setUidRule(ILjava/lang/String;ZZ)V
    invoke-static {v11, v12, v13, v3, v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1000(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;ZZ)V

    goto/16 :goto_0
.end method
