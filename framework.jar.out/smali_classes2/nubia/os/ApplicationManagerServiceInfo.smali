.class public Lnubia/os/ApplicationManagerServiceInfo;
.super Ljava/lang/Object;
.source "ApplicationManagerServiceInfo.java"

# interfaces
.implements Lnubia/os/NubiaServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "nubia.application.manager"

    return-object v0
.end method

.method public getServiceProxy()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 15
    invoke-virtual {p0}, Lnubia/os/ApplicationManagerServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 16
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/os/IApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IApplicationManager;

    move-result-object v1

    .line 17
    .local v1, "service":Lnubia/os/IApplicationManager;
    new-instance v2, Lnubia/os/ApplicationManager;

    invoke-direct {v2, v1}, Lnubia/os/ApplicationManager;-><init>(Lnubia/os/IApplicationManager;)V

    return-object v2
.end method
