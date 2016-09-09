.class public Lnubia/smartkey/SmartKeyActionServiceInfo;
.super Ljava/lang/Object;
.source "SmartKeyActionServiceInfo.java"

# interfaces
.implements Lnubia/os/NubiaServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "nubia.smartkey.action"

    return-object v0
.end method

.method public bridge synthetic getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lnubia/smartkey/SmartKeyActionServiceInfo;->getServiceProxy()Lnubia/smartkey/SmartKeyActionManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProxy()Lnubia/smartkey/SmartKeyActionManager;
    .locals 3

    .prologue
    .line 18
    invoke-virtual {p0}, Lnubia/smartkey/SmartKeyActionServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 19
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/smartkey/ISmartKeyAction$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/smartkey/ISmartKeyAction;

    move-result-object v1

    .line 20
    .local v1, "service":Lnubia/smartkey/ISmartKeyAction;
    new-instance v2, Lnubia/smartkey/SmartKeyActionManager;

    invoke-direct {v2, v1}, Lnubia/smartkey/SmartKeyActionManager;-><init>(Lnubia/smartkey/ISmartKeyAction;)V

    return-object v2
.end method
