.class public Lcn/nubia/server/appmgmt/ApplicationPowerController;
.super Ljava/lang/Object;
.source "ApplicationPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;,
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;,
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    }
.end annotation


# static fields
.field private static final ATTR_ALARM:Ljava/lang/String; = "allow_alarm"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final ATTR_WAKE_LOCK:Ljava/lang/String; = "allow_wakelock"

.field private static final CHECK_OPTIMIZE_ALARM:I = 0x2

.field private static final CHECK_OPTIMIZE_WAKELOCK:I = 0x1

.field private static final NUBIA_POWER_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/nubia_power_manage_table"

.field private static final NUBIA_POWER_MANAGER_FILE:Ljava/lang/String; = "security_nubia_app_power_manager.xml"

.field private static final POWER_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/App_power_manage_table"

.field private static final POWER_MANAGER_FILE:Ljava/lang/String; = "security_app_power_manager.xml"

.field private static final TABLE_ALARM_STATUS_COLUMN:Ljava/lang/String; = "alarm_control"

.field private static final TABLE_NUBIA_PKG_COLUMN:Ljava/lang/String; = "application"

.field private static final TABLE_PKG_COLUMN:Ljava/lang/String; = "application_pkg"

.field private static final TABLE_STATUS_COLUMN:Ljava/lang/String; = "control"

.field private static final TABLE_WAKELOCK_STATUS_COLUMN:Ljava/lang/String; = "wakelock_control"

.field private static final TAG:Ljava/lang/String; = "ApplicationPowerController"

.field private static final TAG_APP:Ljava/lang/String; = "app"


# instance fields
.field private final mAppPowerFile:Ljava/io/File;

.field private mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mManagedNubiaApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedNubiaLock:Ljava/lang/Object;

.field private mManagedOtherApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedOtherLock:Ljava/lang/Object;

.field private final mNubiaAppPowerFile:Ljava/io/File;

.field private mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

.field private mQueryAppPowerRunnable:Ljava/lang/Runnable;

.field private mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mDumpDebugLog:Z

    .line 56
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    .line 57
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    .line 59
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 60
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 196
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    .line 204
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    .line 65
    const-string v1, "security_app_power_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppPowerFile:Ljava/io/File;

    .line 67
    const-string v1, "security_nubia_app_power_manager.xml"

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppPowerFile:Ljava/io/File;

    .line 69
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppPowerFile:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    .line 70
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppPowerFile:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Ljava/io/File;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->initData()V

    .line 72
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Landroid/os/Handler;)V

    .line 73
    .local v0, "observer":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->observe()V

    .line 74
    return-void

    .line 45
    .end local v0    # "observer":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedOtherApps()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadNubiaPowerData()V

    return-void
.end method

.method private allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z
    .locals 1
    .param p1, "control"    # Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    .param p2, "type"    # I

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "result":Z
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mWakelock:Z

    .line 156
    goto :goto_0

    .line 158
    :pswitch_1
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mAlarm:Z

    .line 159
    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 214
    const-string v2, "security_app_power_manager.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 216
    .local v1, "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    if-eqz v1, :cond_0

    .line 217
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    :try_start_0
    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 219
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v1    # "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_0
    const-string v2, "security_nubia_app_power_manager.xml"

    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 228
    .local v0, "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    if-eqz v0, :cond_1

    .line 229
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 230
    :try_start_1
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 231
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    .end local v0    # "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_1
    :goto_0
    return-void

    .line 219
    .restart local v1    # "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 231
    .end local v1    # "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .restart local v0    # "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 235
    .end local v0    # "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadNubiaPowerData()V

    goto :goto_0
.end method

.method private loadDefaultNubiaPowerData()V
    .locals 6

    .prologue
    .line 353
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.zdworks.android.zdclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.dotools.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.clocktalent"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.malangstudio.alarmmon"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.smartisan.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.buykee.beautyclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.dianxinos.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.baiyicare.healthalarm"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.google.android.deskclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.youan.alarm"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.crossmo.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.when.coco"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.lenovo.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.baidu.smartcalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "cn.etouch.ecalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "oms.mmc.app.almanac_inland"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "me.iweek.rili"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.zdworks.android.zdcalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.lgl.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.youloft.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v1

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadManagedNubiaApps()Z
    .locals 18

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 300
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "content://cn.nubia.security.power/nubia_power_manage_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 301
    if-nez v10, :cond_2

    .line 302
    const/4 v2, 0x0

    .line 317
    if-eqz v10, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .line 317
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .local v16, "x2":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v11

    .line 318
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "ApplicationPowerController"

    const-string v3, "failed load nubia default apps"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v2, 0x0

    goto :goto_0

    .line 317
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 303
    :cond_2
    :try_start_4
    const-string v2, "application"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 304
    .local v9, "appNameIndex":I
    const-string v2, "wakelock_control"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 305
    .local v15, "wakelockIndex":I
    const-string v2, "alarm_control"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 306
    .local v8, "alarmIndex":I
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 307
    .local v13, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 308
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 309
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 310
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v14, 0x1

    .line 311
    .local v14, "wakelockControl":Z
    :goto_2
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_5

    const/4 v7, 0x1

    .line 312
    .local v7, "alarmControl":Z
    :goto_3
    new-instance v2, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v2, v14, v7}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v13, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 300
    .end local v7    # "alarmControl":Z
    .end local v8    # "alarmIndex":I
    .end local v9    # "appNameIndex":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .end local v14    # "wakelockControl":Z
    .end local v15    # "wakelockIndex":I
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 317
    :catchall_0
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_4
    if-eqz v10, :cond_3

    if-eqz v3, :cond_9

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_5
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 310
    .restart local v8    # "alarmIndex":I
    .restart local v9    # "appNameIndex":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .restart local v15    # "wakelockIndex":I
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 311
    .restart local v14    # "wakelockControl":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 314
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "wakelockControl":Z
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 315
    :try_start_9
    move-object/from16 v0, p0

    iput-object v13, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 316
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 317
    if-eqz v10, :cond_7

    if-eqz v3, :cond_8

    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 321
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 322
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 323
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 324
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 316
    :catchall_1
    move-exception v2

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 317
    .end local v8    # "alarmIndex":I
    .end local v9    # "appNameIndex":I
    .end local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .end local v15    # "wakelockIndex":I
    :catchall_2
    move-exception v2

    goto :goto_4

    .restart local v8    # "alarmIndex":I
    .restart local v9    # "appNameIndex":I
    .restart local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .restart local v15    # "wakelockIndex":I
    :catch_3
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    :try_start_e
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .end local v8    # "alarmIndex":I
    .end local v9    # "appNameIndex":I
    .end local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .end local v15    # "wakelockIndex":I
    :catch_4
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    .line 323
    .restart local v8    # "alarmIndex":I
    .restart local v9    # "appNameIndex":I
    .restart local v13    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    .restart local v15    # "wakelockIndex":I
    :catchall_3
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v2
.end method

.method private loadManagedOtherApps()V
    .locals 15

    .prologue
    .line 328
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v1, "content://cn.nubia.security.power/App_power_manage_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 330
    if-nez v8, :cond_3

    .line 344
    if-eqz v8, :cond_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 344
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v13    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    .line 345
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationPowerController"

    const-string v2, "failed load other apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 349
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 344
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 332
    :cond_3
    :try_start_5
    const-string v1, "application_pkg"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 333
    .local v6, "appNameIndex":I
    const-string v1, "control"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 334
    .local v11, "statusIndex":I
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 335
    .local v12, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    const/4 v1, -0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 336
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 337
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 338
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v7, 0x1

    .line 339
    .local v7, "control":Z
    :goto_3
    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v7}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v12, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    .line 329
    .end local v6    # "appNameIndex":I
    .end local v7    # "control":Z
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "statusIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catch_2
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 344
    :catchall_1
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_4
    if-eqz v8, :cond_4

    if-eqz v2, :cond_8

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    :goto_5
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 338
    .restart local v6    # "appNameIndex":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "statusIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 341
    .end local v10    # "name":Ljava/lang/String;
    :cond_6
    :try_start_9
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 342
    :try_start_a
    iput-object v12, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 343
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 344
    if-eqz v8, :cond_1

    if-eqz v2, :cond_7

    :try_start_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    :catch_3
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_1

    .line 343
    .end local v13    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 344
    .end local v6    # "appNameIndex":I
    .end local v11    # "statusIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_3
    move-exception v1

    goto :goto_4

    .restart local v6    # "appNameIndex":I
    .restart local v11    # "statusIndex":I
    .restart local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_7
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "appNameIndex":I
    .end local v11    # "statusIndex":I
    .end local v12    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catch_4
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_5
.end method

.method private loadNubiaPowerData()V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedNubiaApps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadDefaultNubiaPowerData()V

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public allowAppPartialWakelock(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->getBuildType()I

    move-result v0

    sget v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->INTERNATIONAL_BUILD:I

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 82
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public allowAppWakeupAlarm(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 93
    invoke-static {}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->getBuildType()I

    move-result v1

    sget v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->INTERNATIONAL_BUILD:I

    if-ne v1, v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    if-eqz p1, :cond_0

    .line 102
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v0, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v0

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v0, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v0

    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 127
    const-string v3, "==========managed nubia apps============="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v4

    .line 129
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    .line 131
    .local v2, "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", allow wakeup alarm="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 137
    const-string v3, "==========managed other apps============="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v4

    .line 139
    :try_start_2
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .restart local v1    # "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    .line 141
    .restart local v2    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", allow wakeup alarm="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 145
    return-void
.end method

.method public updateNubiaData()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    :cond_1
    return-void
.end method
