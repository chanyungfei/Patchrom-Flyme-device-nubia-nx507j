.class public interface abstract Lcom/android/server/AppOpsInternal;
.super Ljava/lang/Object;
.source "AppOpsInternal.java"


# virtual methods
.method public abstract checkOperation(IILjava/lang/String;I)I
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getExtUserId(II)I
.end method

.method public abstract getInstanceId(I)I
.end method

.method public abstract getRealUserId(I)I
.end method

.method public abstract isOrigUserId(I)Z
.end method

.method public abstract noteOperation(IILjava/lang/String;I)I
.end method

.method public abstract packageRemoved(ILjava/lang/String;)V
.end method

.method public abstract publish(Landroid/content/Context;)V
.end method

.method public abstract removeUser(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resetAllModes(ILjava/lang/String;)V
.end method

.method public abstract setMode(IILjava/lang/String;II)V
.end method

.method public abstract setUserRestrictions(Landroid/os/Bundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract uidRemoved(I)V
.end method
