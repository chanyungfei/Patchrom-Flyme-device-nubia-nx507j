.class public Lcn/nubia/server/appmgmt/ApplicationControllerUtils;
.super Ljava/lang/Object;
.source "ApplicationControllerUtils.java"


# static fields
.field public static DOMESTIC_BUILD:I = 0x0

.field private static final INTERNAL_BUILD_ID:Ljava/lang/String; = "ro.build.internal.id"

.field public static INTERNATIONAL_BUILD:I

.field private static final SYSTEM_FILE:Ljava/io/File;

.field private static sDefaultAllowedAppsCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNeedCheckAppsCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    sput v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->INTERNATIONAL_BUILD:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DOMESTIC_BUILD:I

    .line 15
    const/4 v0, -0x1

    sput v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sVersion:I

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBuildType()I
    .locals 3

    .prologue
    .line 23
    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 24
    const-string v1, "ro.build.internal.id"

    const-string v2, "UNKNOWN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "buildString":Ljava/lang/String;
    const-string v1, "_Z0_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->DOMESTIC_BUILD:I

    :goto_0
    sput v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sVersion:I

    .line 28
    :cond_0
    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sVersion:I

    return v1

    .line 25
    :cond_1
    sget v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->INTERNATIONAL_BUILD:I

    goto :goto_0
.end method

.method private static isAppDefaultAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.cts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    :cond_0
    const/4 v1, 0x1

    .line 74
    :cond_1
    return v1

    .line 63
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isDefaultAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    if-nez p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    sget-object v2, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    invoke-static {p0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isAppDefaultAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sDefaultAllowedAppsCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    sget-object v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->sNeedCheckAppsCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method
