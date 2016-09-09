.class public abstract Lnubia/os/edge/IEdgePointerEventManager$Stub;
.super Landroid/os/Binder;
.source "IEdgePointerEventManager.java"

# interfaces
.implements Lnubia/os/edge/IEdgePointerEventManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/edge/IEdgePointerEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.edge.IEdgePointerEventManager"

.field static final TRANSACTION_onTopActivityChanged:I = 0x5

.field static final TRANSACTION_registerEdgePointerEventListener:I = 0x1

.field static final TRANSACTION_registerPointerEventListener:I = 0x3

.field static final TRANSACTION_unregisterEdgePointerEventListener:I = 0x2

.field static final TRANSACTION_unregisterPointerEventListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p0, p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "nubia.os.edge.IEdgePointerEventManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/edge/IEdgePointerEventManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lnubia/os/edge/IEdgePointerEventManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lnubia/os/edge/IEdgePointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventListener;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    :sswitch_2
    const-string v3, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lnubia/os/edge/IEdgePointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventListener;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Lnubia/os/edge/IEdgePointerEventListener;
    :sswitch_3
    const-string v3, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lnubia/os/edge/IPointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IPointerEventListener;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Lnubia/os/edge/IPointerEventListener;
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    :sswitch_4
    const-string v3, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lnubia/os/edge/IPointerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IPointerEventListener;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    invoke-virtual {p0, v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Lnubia/os/edge/IPointerEventListener;
    :sswitch_5
    const-string v3, "nubia.os.edge.IEdgePointerEventManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->onTopActivityChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
