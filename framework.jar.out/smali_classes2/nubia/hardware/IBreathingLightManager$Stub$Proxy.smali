.class Lnubia/hardware/IBreathingLightManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBreathingLightManager.java"

# interfaces
.implements Lnubia/hardware/IBreathingLightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/hardware/IBreathingLightManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lnubia/hardware/IBreathingLightManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnubia/hardware/IBreathingLightManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "nubia.hardware.IBreathingLightManager"

    return-object v0
.end method

.method public requestBreathingLight(I)V
    .locals 5
    .param p1, "known"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 95
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "nubia.hardware.IBreathingLightManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v2, p0, Lnubia/hardware/IBreathingLightManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public requestBreathingLightExt(IIIII)V
    .locals 5
    .param p1, "light"    # I
    .param p2, "mode"    # I
    .param p3, "frequency"    # I
    .param p4, "scene"    # I
    .param p5, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "nubia.hardware.IBreathingLightManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v2, p0, Lnubia/hardware/IBreathingLightManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    return-void

    .line 120
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method