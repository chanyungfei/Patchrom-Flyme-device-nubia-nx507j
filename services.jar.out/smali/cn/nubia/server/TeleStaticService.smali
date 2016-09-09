.class public Lcn/nubia/server/TeleStaticService;
.super Lcn/nubia/server/NubiaSystemService;
.source "TeleStaticService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TeleStaticService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mSystemReadyMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private initTeleStatic()V
    .locals 8

    .prologue
    .line 51
    :try_start_0
    const-string v1, "/system/framework/nubiatel-common.jar"

    .line 52
    .local v1, "libPath":Ljava/lang/String;
    new-instance v3, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 54
    .local v3, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "cn.nubia.telestatic.service.NBTeleStaticOuter"

    invoke-virtual {v3, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 55
    .local v2, "wbcClass":Ljava/lang/Class;
    const-string v5, "systemReady"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/server/TeleStaticService;->mSystemReadyMethod:Ljava/lang/reflect/Method;

    .line 56
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 57
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "wbcObject":Ljava/lang/Object;
    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "wbcObject":Ljava/lang/Object;
    iput-object v4, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v1    # "libPath":Ljava/lang/String;
    .end local v2    # "wbcClass":Ljava/lang/Class;
    .end local v3    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_0

    :catch_4
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "itei"

    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/server/TeleStaticService;->initTeleStatic()V

    .line 46
    invoke-super {p0}, Lcn/nubia/server/NubiaSystemService;->onStart()V

    .line 47
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/TeleStaticService;->mSystemReadyMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
