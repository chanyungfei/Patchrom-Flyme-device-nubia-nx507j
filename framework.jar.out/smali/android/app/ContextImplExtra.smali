.class public final Landroid/app/ContextImplExtra;
.super Ljava/lang/Object;
.source "ContextImplExtra.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static register(Lnubia/os/NubiaServiceInfo;)V
    .locals 2
    .param p0, "info"    # Lnubia/os/NubiaServiceInfo;

    .prologue
    .line 22
    invoke-interface {p0}, Lnubia/os/NubiaServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ContextImplExtra$1;

    invoke-direct {v1, p0}, Landroid/app/ContextImplExtra$1;-><init>(Lnubia/os/NubiaServiceInfo;)V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerServiceWrap(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 28
    return-void
.end method

.method static registerNubiaServices()V
    .locals 5

    .prologue
    .line 15
    invoke-static {}, Lnubia/os/NubiaServiceInfoTable;->getNubiaServiceInfos()[Lnubia/os/NubiaServiceInfo;

    move-result-object v1

    .line 16
    .local v1, "ctrls":[Lnubia/os/NubiaServiceInfo;
    move-object v0, v1

    .local v0, "arr$":[Lnubia/os/NubiaServiceInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 17
    .local v3, "info":Lnubia/os/NubiaServiceInfo;
    invoke-static {v3}, Landroid/app/ContextImplExtra;->register(Lnubia/os/NubiaServiceInfo;)V

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    .end local v3    # "info":Lnubia/os/NubiaServiceInfo;
    :cond_0
    return-void
.end method
