.class public final Lcn/nubia/server/NubiaServer;
.super Ljava/lang/Object;
.source "NubiaServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadLibraries()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "nubia_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private static startService(Ljava/lang/String;Lcom/android/server/SystemServiceManager;)V
    .locals 0
    .param p0, "serviceClass"    # Ljava/lang/String;
    .param p1, "manager"    # Lcom/android/server/SystemServiceManager;

    .prologue
    .line 28
    invoke-virtual {p1, p0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 29
    return-void
.end method

.method public static startServicesAtFirst(Landroid/content/Context;Lcom/android/server/SystemServiceManager;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Lcom/android/server/SystemServiceManager;

    .prologue
    .line 19
    invoke-static {}, Lcn/nubia/server/NubiaServer;->loadLibraries()V

    .line 20
    invoke-static {}, Lcn/nubia/server/ServiceClassTable;->getServicesAtFirst()[Ljava/lang/String;

    move-result-object v4

    .line 21
    .local v4, "serviceClasses":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 22
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3, p1}, Lcn/nubia/server/NubiaServer;->startService(Ljava/lang/String;Lcom/android/server/SystemServiceManager;)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static startServicesAtLast(Landroid/content/Context;Lcom/android/server/SystemServiceManager;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Lcom/android/server/SystemServiceManager;

    .prologue
    .line 11
    invoke-static {}, Lcn/nubia/server/ServiceClassTable;->getServicesAtLast()[Ljava/lang/String;

    move-result-object v4

    .line 12
    .local v4, "serviceClasses":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 13
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3, p1}, Lcn/nubia/server/NubiaServer;->startService(Ljava/lang/String;Lcom/android/server/SystemServiceManager;)V

    .line 12
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method
