.class public Lcom/android/server/am/NubiaSelfStartUtil;
.super Ljava/lang/Object;
.source "NubiaSelfStartUtil.java"


# static fields
.field private static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field private static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field private static final APPWIDGET_ACTION:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_"

.field private static final CLOSE_STATUS:I = 0x1

.field private static final COLUMN_CLASS_NAME:Ljava/lang/String; = "class_name"

.field private static final COLUMN_DATE:Ljava/lang/String; = "date"

.field private static final COLUMN_MAX_NUM:Ljava/lang/String; = "max_num"

.field private static final COLUMN_NUM:Ljava/lang/String; = "num"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final CONTENT_URI_SELFSTART:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

.field private static final CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z = true

.field private static final DEFAULT_STATUS:I = 0x0

.field private static final INTERNAL_BUILD_ID:Ljava/lang/String; = "ro.build.internal.id"

.field private static final OPEN_STATUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NubiaSelfStartUtil"

.field private static sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;


# instance fields
.field private final mBindListNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBlackListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFirstBoot:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLimitListPkgNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNBSecurityExist:Ljava/lang/Boolean;

.field private final mProtectListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhiteListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "content://selfstart_provider/selfstart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    .line 35
    const-string v0, "content://selfstart_provider/protection_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    .line 37
    const-string v0, "content://selfstart_provider/black_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    .line 39
    const-string v0, "content://selfstart_provider/limit_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 41
    const-string v0, "content://selfstart_provider/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 43
    const-string v0, "content://selfstart_provider/bind_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil$2;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    return-void
.end method

.method private addWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 252
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "package_name"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v4, "class_name"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :try_start_0
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkNBSecurity()V
    .locals 4

    .prologue
    .line 721
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    monitor-enter v2

    .line 722
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/nubia_NBSecurity2"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getInternalVersion()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_Z0_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const-string v3, "cn.nubia.security2"

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    .line 728
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    const-string v1, "NubiaSelfStartUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNBSecurityExist=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void

    .line 728
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v2, -0x1

    .line 266
    .local v2, "result":I
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    move v3, v2

    .line 280
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 269
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 270
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 271
    .local v6, "uri":Landroid/net/Uri;
    const-string v4, "package_name=? and class_name=?"

    .line 272
    .local v4, "selection":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    aput-object p2, v5, v7

    .line 273
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v0, v6, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    move v3, v2

    .line 280
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 276
    .end local v3    # "result":I
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "result":I
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getCPPermittedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v1, "/for contentprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v1, ":process is permitted to autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/NubiaSelfStartUtil;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-direct {v0}, Lcom/android/server/am/NubiaSelfStartUtil;-><init>()V

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->sNubiaSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    return-object v0
.end method

.method private getInternalVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 751
    const-string v1, "ro.build.internal.id"

    const-string v2, "UNKNOWN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "internalVersion":Ljava/lang/String;
    return-object v0
.end method

.method private getPermittedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v1, "/for service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v1, ":process is permitted to autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Allow to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v1, "/for broadcast Intent{act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 702
    const-string v1, "}:process is permitted to autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTodayZeroTime()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 331
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 332
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 333
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 334
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 335
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 336
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 337
    .local v2, "time":J
    return-wide v2
.end method

.method private getWhiteListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    const-string v3, "status=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 113
    return-object v5
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 393
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaSelfStartUtil"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 394
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 395
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    .line 396
    return-void
.end method

.method private isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 735
    const/4 v1, 0x0

    .line 737
    .local v1, "isInstall":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 738
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 740
    .local v0, "apkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    .line 743
    :cond_1
    const/4 v1, 0x1

    .line 747
    .end local v0    # "apkInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    return v1

    .line 745
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isAuthorityAllow(Ljava/lang/String;)Z
    .locals 9
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 513
    const/4 v5, 0x0

    .line 514
    .local v5, "result":Z
    if-eqz p1, :cond_2

    .line 515
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "authorities":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 517
    .local v1, "auth":Ljava/lang/String;
    const-string v6, "browser"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.browser"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.accounts.cts.unaffiliated.authenticators.provider"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v5, 0x1

    .line 520
    :goto_1
    if-eqz v5, :cond_4

    .line 525
    .end local v1    # "auth":Ljava/lang/String;
    :cond_1
    const-string v6, "NubiaSelfStartUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "authority=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "authorities":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return v5

    .line 517
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "auth":Ljava/lang/String;
    .restart local v2    # "authorities":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 516
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    const/4 v0, 0x0

    .line 674
    :cond_0
    :goto_0
    monitor-exit v2

    .line 675
    return v0

    .line 663
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.cts."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.tests."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.accounts.cts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.compatibility.common.deviceinfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.jobscheduler.cts.deviceside"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 674
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInBindList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    const/4 v0, 0x0

    monitor-exit v1

    .line 548
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInProtectList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isLimited(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 554
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    monitor-enter v4

    .line 555
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 557
    .local v1, "time":I
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 558
    .local v0, "count":[Ljava/lang/Integer;
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 559
    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 560
    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 561
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {p0, v2, p1, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    :goto_0
    const-string v2, "NubiaSelfStartUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLimitListPkgNames=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[0]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[1]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count[2]=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v0    # "count":[Ljava/lang/Integer;
    .end local v1    # "time":I
    :cond_0
    monitor-exit v4

    move v2, v3

    .line 580
    :goto_1
    return v2

    .line 564
    .restart local v0    # "count":[Ljava/lang/Integer;
    .restart local v1    # "time":I
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 565
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    .line 566
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {p0, v2, p1, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 579
    .end local v0    # "count":[Ljava/lang/Integer;
    .end local v1    # "time":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 569
    .restart local v0    # "count":[Ljava/lang/Integer;
    .restart local v1    # "time":I
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private isNBSecurityExist()Z
    .locals 2

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    monitor-enter v1

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mNBSecurityExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRootOrShell(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    .line 654
    if-eqz p1, :cond_0

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWidget(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v1

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 419
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.appwidget.action.APPWIDGET_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const/4 v1, 0x1

    .line 425
    .end local v0    # "intentAction":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadLimitListFromCrusor(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 16
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    const-string v9, "package_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 311
    .local v8, "packageNameIndex":I
    const-string v9, "num"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 312
    .local v6, "numIndex":I
    const-string v9, "max_num"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 313
    .local v4, "maxNumIndex":I
    const-string v9, "date"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 314
    .local v2, "dateIndex":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v10

    .line 315
    .local v10, "time":J
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 316
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 318
    .local v3, "maxNum":I
    const/4 v5, 0x0

    .line 319
    .local v5, "num":I
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-nez v9, :cond_0

    .line 320
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 324
    :goto_1
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x2

    const-wide/16 v14, 0x3e8

    div-long v14, v10, v14

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 322
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v12}, Lcom/android/server/am/NubiaSelfStartUtil;->updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 327
    .end local v3    # "maxNum":I
    .end local v5    # "num":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadLimitListFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 286
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 287
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "num"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "max_num"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    .line 289
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 295
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 296
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 297
    invoke-direct {p0, p2, v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadLimitListFromCrusor(Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_2
    if-eqz v6, :cond_0

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v7

    .line 300
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    if-eqz v6, :cond_0

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 302
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_3

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p5, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "package_name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "class_name"

    aput-object v4, v3, v2

    .line 120
    .local v3, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 126
    if-eqz v9, :cond_3

    .line 127
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 128
    .local v13, "sum":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_3

    .line 129
    invoke-interface {v9, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 130
    const-string v2, "package_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, "packageName":Ljava/lang/String;
    const-string v2, "class_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "className":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 140
    .local v8, "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    move-object/from16 v0, p5

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 138
    .end local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_2

    .line 144
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "clsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "sum":I
    :cond_3
    if-eqz v9, :cond_0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v14

    .local v14, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v14    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v10

    .line 145
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 124
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    :catchall_0
    move-exception v4

    move-object v15, v4

    move-object v4, v2

    move-object v2, v15

    :goto_3
    if-eqz v9, :cond_5

    if-eqz v4, :cond_6

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_4
    :try_start_7
    throw v2

    :catch_3
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v2

    goto :goto_3
.end method

.method private loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 151
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "package_name"

    aput-object v1, v2, v3

    .line 152
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 158
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    if-eqz v6, :cond_2

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 161
    .local v9, "sum":I
    if-lez v9, :cond_2

    .line 162
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 163
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 164
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 171
    .end local v8    # "i":I
    .end local v9    # "sum":I
    :cond_2
    if-eqz v6, :cond_0

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-eqz v6, :cond_0

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 171
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private loadWidgetFromCursor(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const-string v5, "package_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 204
    .local v3, "packageNameIndex":I
    const-string v5, "class_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "classNameIndex":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 210
    .local v2, "classNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    .end local v2    # "classNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 213
    .restart local v2    # "classNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 217
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "classNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadWidgetMapFromDb(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "resultHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 180
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "class_name"

    aput-object v4, v2, v3

    .line 182
    .local v2, "selections":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 188
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 190
    invoke-direct {p0, p2, v6}, Lcom/android/server/am/NubiaSelfStartUtil;->loadWidgetFromCursor(Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_2
    if-eqz v6, :cond_0

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 192
    :catch_0
    move-exception v7

    .line 193
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    if-eqz v6, :cond_0

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 195
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_3

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private removeWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaSelfStartUtil$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil$3;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 651
    return-void
.end method

.method private setWhiteListPkgNames()V
    .locals 3

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getWhiteListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 708
    .local v0, "allowedPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    monitor-enter v2

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 710
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWhiteListPkgNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 711
    monitor-exit v2

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLimitListForDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Integer;

    .prologue
    .line 342
    sget-object v6, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_LIMIT_LIST:Landroid/net/Uri;

    .line 343
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "package_name=? "

    .line 344
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v3, v8

    .line 345
    .local v3, "selectionArgs":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getTodayZeroTime()J

    move-result-wide v4

    .line 351
    .local v4, "time":J
    const-string v8, "num"

    invoke-virtual {v1, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v8, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 354
    :try_start_0
    invoke-virtual {v0, v6, v1, v7, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private widgetIsInDb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 220
    const/4 v8, 0x0

    .line 221
    .local v8, "result":Z
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    move v9, v8

    .line 243
    .end local v8    # "result":Z
    .local v9, "result":I
    :goto_0
    return v9

    .line 224
    .end local v9    # "result":I
    .restart local v8    # "result":Z
    :cond_0
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 225
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v12, [Ljava/lang/String;

    const-string v5, "package_name"

    aput-object v5, v2, v10

    const-string v5, "class_name"

    aput-object v5, v2, v11

    .line 227
    .local v2, "selections":[Ljava/lang/String;
    const-string v3, "package_name=? and class_name=?"

    .line 228
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p2, v4, v11

    .line 229
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 232
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 233
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    .line 234
    const/4 v8, 0x1

    .line 239
    :cond_1
    if-eqz v6, :cond_2

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v9, v8

    .line 243
    .restart local v9    # "result":I
    goto :goto_0

    .line 236
    .end local v9    # "result":I
    :catch_0
    move-exception v7

    .line 237
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v6, :cond_2

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 239
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_3

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method


# virtual methods
.method countWidget(Lcom/android/server/am/BroadcastRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 590
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v4

    if-nez v4, :cond_2

    .line 633
    :cond_1
    :goto_0
    return-void

    .line 599
    :cond_2
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "className":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v5

    .line 603
    :try_start_0
    const-string v4, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 604
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 605
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 606
    .local v2, "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 607
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .end local v2    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    const-string v4, "NubiaSelfStartUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widget=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " className=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 611
    :cond_4
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 612
    .restart local v2    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->addWidget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 616
    .end local v2    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    const-string v4, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 617
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 619
    .restart local v2    # "clsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 620
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 621
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->removeWidget(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 624
    iget-object v4, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method firstBootGetAllowPkgNames()V
    .locals 7

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 363
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->checkNBSecurity()V

    .line 364
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->initHandler()V

    .line 366
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V

    .line 367
    iget-object v6, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    monitor-enter v6

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_PROTECTION_LIST:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mProtectListPkgNames:Ljava/util/Set;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 371
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    iget-object v6, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    monitor-enter v6

    .line 373
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 376
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    iget-object v6, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    monitor-enter v6

    .line 378
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART_BIND_LIST:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mBindListNames:Ljava/util/Map;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/NubiaSelfStartUtil;->loadNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V

    .line 381
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 382
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    monitor-enter v1

    .line 383
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mLimitListPkgNames:Ljava/util/HashMap;

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->loadLimitListFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 384
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 385
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    monitor-enter v1

    .line 386
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mWidgetsMap:Ljava/util/Map;

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->loadWidgetMapFromDb(Landroid/content/Context;Ljava/util/Map;)V

    .line 387
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 390
    :cond_0
    return-void

    .line 371
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 376
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 381
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 384
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 387
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method

.method initContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;I)Z
    .locals 6
    .param p1, "serviceRecord"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    const/4 v2, 0x1

    .line 467
    :cond_0
    :goto_0
    return v2

    .line 452
    :cond_1
    const/4 v2, 0x0

    .line 453
    .local v2, "result":Z
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 454
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInBindList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 459
    :cond_4
    const/4 v2, 0x1

    .line 461
    :cond_5
    if-eqz v2, :cond_6

    .line 462
    const-string v3, "NubiaSelfStartUtil"

    invoke-direct {p0, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_6
    if-nez v2, :cond_0

    .line 464
    const-string v3, "NubiaSelfStartUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not allow packageName=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from bind service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "callingUid"    # I

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    const/4 v1, 0x1

    .line 445
    :cond_0
    :goto_0
    return v1

    .line 432
    :cond_1
    const/4 v1, 0x0

    .line 433
    .local v1, "result":Z
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 434
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 437
    :cond_4
    const/4 v1, 0x1

    .line 439
    :cond_5
    if-eqz v1, :cond_6

    .line 440
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_6
    if-nez v1, :cond_0

    .line 442
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    const/4 v1, 0x1

    .line 415
    :cond_0
    :goto_0
    return v1

    .line 402
    :cond_1
    const/4 v1, 0x0

    .line 403
    .local v1, "result":Z
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 404
    .local v0, "packageName":Ljava/lang/String;
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-direct {p0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidgetAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 408
    :cond_4
    const/4 v1, 0x1

    .line 410
    :cond_5
    if-eqz v1, :cond_6

    .line 411
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_6
    if-nez v1, :cond_0

    .line 413
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " R=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAllowedSelfStartPkg(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingUid"    # I

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    const/4 v1, 0x1

    .line 488
    :cond_0
    :goto_0
    return v1

    .line 475
    :cond_1
    const/4 v1, 0x0

    .line 476
    .local v1, "result":Z
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 477
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/server/am/NubiaSelfStartUtil;->isRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isDefaultAllow(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isInProtectList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isLimited(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->isWidget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaSelfStartUtil;->isAuthorityAllow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 480
    :cond_4
    const/4 v1, 0x1

    .line 482
    :cond_5
    if-eqz v1, :cond_6

    .line 483
    const-string v2, "NubiaSelfStartUtil"

    invoke-direct {p0, v0}, Lcom/android/server/am/NubiaSelfStartUtil;->getCPPermittedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_6
    if-nez v1, :cond_0

    .line 485
    const-string v2, "NubiaSelfStartUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow packageName=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from contentProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAllowedServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x1

    .line 492
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 493
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    .line 494
    .local v0, "allow":Z
    if-eqz v0, :cond_0

    .line 509
    .end local v0    # "allow":Z
    :goto_1
    return v9

    .line 492
    .restart local v0    # "allow":Z
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "allow":Z
    :cond_1
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 499
    .local v8, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "conni":I
    :goto_2
    if-ltz v4, :cond_2

    .line 500
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 501
    .local v3, "cl":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 502
    .local v2, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v10, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 503
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_3

    goto :goto_1

    .line 499
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 509
    .end local v3    # "cl":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "conni":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method registerSelfStartObserver()V
    .locals 5

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/am/NubiaSelfStartUtil;->isNBSecurityExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/am/NubiaSelfStartUtil$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/NubiaSelfStartUtil$1;-><init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
