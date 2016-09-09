.class public Lcn/nubia/server/notification/NotificationBlackWhiteList;
.super Ljava/lang/Object;
.source "NotificationBlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;,
        Lcn/nubia/server/notification/NotificationBlackWhiteList$InitAllAppsTask;
    }
.end annotation


# static fields
.field private static final ALLOW_NOTIFY_FLAG:I = 0x1

.field private static final AUTHORITY:Ljava/lang/String; = "cn.nubia.providers.AppSettingsInfoProvider"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_FLAG:I = 0x5

.field private static final FLAG:Ljava/lang/String; = "FLAG"

.field private static final PKG_NAME:Ljava/lang/String; = "PKG_NAME"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPresetUtil:Lcn/nubia/server/notification/PreInstalledListUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "content://cn.nubia.providers.AppSettingsInfoProvider/appsettingsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    .line 34
    new-instance v0, Lcn/nubia/server/notification/NotificationBlackWhiteList$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList$1;-><init>(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V

    iput-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcn/nubia/server/notification/PreInstalledListUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/server/notification/PreInstalledListUtil;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mPresetUtil:Lcn/nubia/server/notification/PreInstalledListUtil;

    .line 52
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->handleNotifyDbChange()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getInstalledAppsFlag()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getAllAppsFlag()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getAllAppsFlag()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, v4, v4}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 123
    .local v1, "mCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_1
    :goto_0
    return-object v3

    .line 127
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    const-string v4, "PKG_NAME"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "pkgName":Ljava/lang/String;
    const-string v4, "FLAG"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 132
    .local v0, "flag":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 134
    .end local v0    # "flag":I
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getAppFlagByPkgName(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v2, 0x5

    .line 108
    .local v2, "result":I
    const-string v3, "PKG_NAME = ?"

    .line 109
    .local v3, "selection":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 110
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 111
    .local v1, "mCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    const-string v5, "FLAG"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 113
    .local v0, "flag":I
    move v2, v0

    .line 115
    .end local v0    # "flag":I
    :cond_0
    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_1
    return v2
.end method

.method private getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 140
    const/4 v6, 0x0

    .line 142
    .local v6, "csr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 147
    :goto_0
    return-object v6

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getInstalledAppsFlag()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 90
    .local v4, "packs":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 91
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 92
    .local v3, "p":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 93
    .local v5, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getAppFlagByPkgName(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "flag":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "flag":I
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "mPreInstalled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mPresetUtil:Lcn/nubia/server/notification/PreInstalledListUtil;

    invoke-virtual {v7}, Lcn/nubia/server/notification/PreInstalledListUtil;->getList()Ljava/util/ArrayList;

    move-result-object v2

    .line 98
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 99
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 100
    .restart local v5    # "pkgName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->getAppFlagByPkgName(Ljava/lang/String;)I

    move-result v0

    .line 101
    .restart local v0    # "flag":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "flag":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private handleNotifyDbChange()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;

    invoke-direct {v0, p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;-><init>(Lcn/nubia/server/notification/NotificationBlackWhiteList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationBlackWhiteList;->initWhiteList()V

    .line 57
    new-instance v0, Lcn/nubia/server/notification/NotificationSettingObserver;

    iget-object v1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/nubia/server/notification/NotificationSettingObserver;-><init>(Landroid/os/Handler;)V

    .line 59
    .local v0, "mObserver":Lcn/nubia/server/notification/NotificationSettingObserver;
    iget-object v1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    return-void
.end method

.method private initWhiteList()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcn/nubia/server/notification/NotificationBlackWhiteList$InitAllAppsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/notification/NotificationBlackWhiteList$InitAllAppsTask;-><init>(Lcn/nubia/server/notification/NotificationBlackWhiteList;Lcn/nubia/server/notification/NotificationBlackWhiteList$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/server/notification/NotificationBlackWhiteList$InitAllAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method


# virtual methods
.method public isAllowNotify(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 68
    iget-object v6, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 69
    .local v3, "value":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 70
    const/4 v2, 0x1

    .line 72
    .local v2, "isThirdPartyApp":Z
    :try_start_0
    iget-object v6, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_1

    move v2, v4

    .line 77
    :goto_0
    if-eqz v2, :cond_2

    const-string v6, "cn.nubia"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 83
    .end local v2    # "isThirdPartyApp":Z
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v1, v4

    .line 84
    .local v1, "isAllow":Z
    :goto_2
    return v1

    .end local v1    # "isAllow":Z
    .restart local v2    # "isThirdPartyApp":Z
    :cond_1
    move v2, v5

    .line 72
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .end local v2    # "isThirdPartyApp":Z
    :cond_3
    move v1, v5

    .line 83
    goto :goto_2
.end method

.method public isNotificationSettingsEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 183
    iget-object v1, p0, Lcn/nubia/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notificationsettings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
