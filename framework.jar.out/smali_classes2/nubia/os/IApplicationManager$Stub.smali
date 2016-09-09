.class public abstract Lnubia/os/IApplicationManager$Stub;
.super Landroid/os/Binder;
.source "IApplicationManager.java"

# interfaces
.implements Lnubia/os/IApplicationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/IApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/IApplicationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.IApplicationManager"

.field static final TRANSACTION_allow3rdPartyPush:I = 0x3

.field static final TRANSACTION_allowBackgroundSyncToRun:I = 0xf

.field static final TRANSACTION_allowDeliverPendingNonWakeupAlarmInScreenOff:I = 0x4

.field static final TRANSACTION_allowPartialWakelock:I = 0x1

.field static final TRANSACTION_allowWakeupAlarm:I = 0x2

.field static final TRANSACTION_isControlledByMotionDoze:I = 0x11

.field static final TRANSACTION_isNetworkBlocked:I = 0x10

.field static final TRANSACTION_noteActivityStackRemoved:I = 0xa

.field static final TRANSACTION_noteAppTransitionAnimation:I = 0xc

.field static final TRANSACTION_noteMagicBookAnimation:I = 0xe

.field static final TRANSACTION_notePausingActivity:I = 0x6

.field static final TRANSACTION_noteRemovingProcess:I = 0x9

.field static final TRANSACTION_noteResumedAppDie:I = 0xb

.field static final TRANSACTION_noteResumingActivity:I = 0x5

.field static final TRANSACTION_noteStartingProcess:I = 0x8

.field static final TRANSACTION_noteStatusBarExpanding:I = 0xd

.field static final TRANSACTION_noteStoppingActivity:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p0, p0, v0}, Lnubia/os/IApplicationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/IApplicationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "nubia.os.IApplicationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/IApplicationManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lnubia/os/IApplicationManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lnubia/os/IApplicationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnubia/os/IApplicationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->allowPartialWakelock(ILjava/lang/String;)Z

    move-result v6

    .line 56
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_2
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->allowWakeupAlarm(ILjava/lang/String;)Z

    move-result v6

    .line 68
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v6, :cond_1

    move v0, v7

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_3
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 80
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v6, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    .line 89
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 94
    .local v1, "_arg0":Landroid/app/PendingIntent;
    :goto_1
    invoke-virtual {p0, v1}, Lnubia/os/IApplicationManager$Stub;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z

    move-result v6

    .line 95
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v6, :cond_3

    move v0, v7

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    .end local v6    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1

    .line 101
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v5, v7

    .local v5, "_arg4":Z
    :goto_2
    move-object v0, p0

    .line 112
    invoke-virtual/range {v0 .. v5}, Lnubia/os/IApplicationManager$Stub;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v5    # "_arg4":Z
    :cond_5
    move v5, v0

    .line 111
    goto :goto_2

    .line 118
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_6
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lnubia/os/IApplicationManager$Stub;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_7
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lnubia/os/IApplicationManager$Stub;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_8
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lnubia/os/IApplicationManager$Stub;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_9
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lnubia/os/IApplicationManager$Stub;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 176
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_a
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/IApplicationManager$Stub;->noteActivityStackRemoved(I)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 185
    .end local v1    # "_arg0":I
    :sswitch_b
    const-string v0, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lnubia/os/IApplicationManager$Stub;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 200
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_c
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v1, v7

    .line 203
    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lnubia/os/IApplicationManager$Stub;->noteAppTransitionAnimation(Z)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_6
    move v1, v0

    .line 202
    goto :goto_3

    .line 209
    :sswitch_d
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    move v1, v7

    .line 212
    .restart local v1    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Lnubia/os/IApplicationManager$Stub;->noteStatusBarExpanding(Z)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_7
    move v1, v0

    .line 211
    goto :goto_4

    .line 218
    :sswitch_e
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    move v1, v7

    .line 221
    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Lnubia/os/IApplicationManager$Stub;->noteMagicBookAnimation(Z)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_8
    move v1, v0

    .line 220
    goto :goto_5

    .line 227
    :sswitch_f
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lnubia/os/IApplicationManager$Stub;->allowBackgroundSyncToRun()Z

    move-result v6

    .line 229
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v6, :cond_9

    move v0, v7

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v6    # "_result":Z
    :sswitch_10
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->isNetworkBlocked(II)Z

    move-result v6

    .line 241
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v6, :cond_a

    move v0, v7

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_11
    const-string v8, "nubia.os.IApplicationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lnubia/os/IApplicationManager$Stub;->isControlledByMotionDoze(ILjava/lang/String;)Z

    move-result v6

    .line 253
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v6, :cond_b

    move v0, v7

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
