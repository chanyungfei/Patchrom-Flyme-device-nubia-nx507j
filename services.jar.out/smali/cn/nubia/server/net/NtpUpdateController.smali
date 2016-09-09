.class public Lcn/nubia/server/net/NtpUpdateController;
.super Ljava/lang/Object;
.source "NtpUpdateController.java"


# static fields
.field private static final FIRST_GET_NTP_TIME:I = 0x0

.field private static final MAX_GET_NTP_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NtpUpdateCtr"


# instance fields
.field private mIsNetworkConnected:Z

.field private mTryNtpTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcn/nubia/server/net/NtpUpdateController;->mTryNtpTime:I

    .line 14
    iput-boolean v0, p0, Lcn/nubia/server/net/NtpUpdateController;->mIsNetworkConnected:Z

    .line 17
    return-void
.end method


# virtual methods
.method public incRetryTimes()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/server/net/NtpUpdateController;->mTryNtpTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/server/net/NtpUpdateController;->mTryNtpTime:I

    .line 47
    return-void
.end method

.method public isNeedRetryNTP()Z
    .locals 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcn/nubia/server/net/NtpUpdateController;->mIsNetworkConnected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/net/NtpUpdateController;->mTryNtpTime:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNetworkInfo(Landroid/net/IConnectivityManager;)V
    .locals 4
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    const/4 v3, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 25
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 26
    iget-boolean v2, p0, Lcn/nubia/server/net/NtpUpdateController;->mIsNetworkConnected:Z

    if-nez v2, :cond_1

    .line 27
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/net/NtpUpdateController;->mTryNtpTime:I

    .line 29
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/server/net/NtpUpdateController;->mIsNetworkConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    .end local v1    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v3, p0, Lcn/nubia/server/net/NtpUpdateController;->mIsNetworkConnected:Z

    goto :goto_0

    .line 31
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "netInfo":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcn/nubia/server/net/NtpUpdateController;->mIsNetworkConnected:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
