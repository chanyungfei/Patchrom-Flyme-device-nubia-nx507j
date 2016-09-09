.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_computeBatteryTimeRemaining:I = 0xb

.field static final TRANSACTION_computeChargeTimeRemaining:I = 0xc

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x44

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x45

.field static final TRANSACTION_getBatteryStat:I = 0x46

.field static final TRANSACTION_getStatistics:I = 0x9

.field static final TRANSACTION_getStatisticsStream:I = 0xa

.field static final TRANSACTION_noteBluetoothOff:I = 0x31

.field static final TRANSACTION_noteBluetoothOn:I = 0x30

.field static final TRANSACTION_noteBluetoothState:I = 0x32

.field static final TRANSACTION_noteChangeWakelockFromSource:I = 0x15

.field static final TRANSACTION_noteConnectivityChanged:I = 0x21

.field static final TRANSACTION_noteEvent:I = 0xd

.field static final TRANSACTION_noteFlashlightOff:I = 0x1a

.field static final TRANSACTION_noteFlashlightOn:I = 0x19

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x33

.field static final TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x39

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x34

.field static final TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x3a

.field static final TRANSACTION_noteInteractive:I = 0x20

.field static final TRANSACTION_noteJobFinish:I = 0x11

.field static final TRANSACTION_noteJobStart:I = 0x10

.field static final TRANSACTION_noteMobileRadioPowerState:I = 0x22

.field static final TRANSACTION_noteNetworkInterfaceType:I = 0x41

.field static final TRANSACTION_noteNetworkStatsEnabled:I = 0x42

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x26

.field static final TRANSACTION_notePhoneOff:I = 0x24

.field static final TRANSACTION_notePhoneOn:I = 0x23

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x25

.field static final TRANSACTION_notePhoneState:I = 0x27

.field static final TRANSACTION_noteResetAudio:I = 0x8

.field static final TRANSACTION_noteResetVideo:I = 0x7

.field static final TRANSACTION_noteScreenBrightness:I = 0x1e

.field static final TRANSACTION_noteScreenState:I = 0x1d

.field static final TRANSACTION_noteStartAudio:I = 0x5

.field static final TRANSACTION_noteStartGps:I = 0x1b

.field static final TRANSACTION_noteStartSensor:I = 0x1

.field static final TRANSACTION_noteStartVideo:I = 0x3

.field static final TRANSACTION_noteStartWakelock:I = 0x12

.field static final TRANSACTION_noteStartWakelockFromSource:I = 0x14

.field static final TRANSACTION_noteStopAudio:I = 0x6

.field static final TRANSACTION_noteStopGps:I = 0x1c

.field static final TRANSACTION_noteStopSensor:I = 0x2

.field static final TRANSACTION_noteStopVideo:I = 0x4

.field static final TRANSACTION_noteStopWakelock:I = 0x13

.field static final TRANSACTION_noteStopWakelockFromSource:I = 0x16

.field static final TRANSACTION_noteSyncFinish:I = 0xf

.field static final TRANSACTION_noteSyncStart:I = 0xe

.field static final TRANSACTION_noteUserActivity:I = 0x1f

.field static final TRANSACTION_noteVibratorOff:I = 0x18

.field static final TRANSACTION_noteVibratorOn:I = 0x17

.field static final TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x3d

.field static final TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x3e

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x38

.field static final TRANSACTION_noteWifiMulticastDisabledFromSource:I = 0x40

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x37

.field static final TRANSACTION_noteWifiMulticastEnabledFromSource:I = 0x3f

.field static final TRANSACTION_noteWifiOff:I = 0x29

.field static final TRANSACTION_noteWifiOn:I = 0x28

.field static final TRANSACTION_noteWifiRssiChanged:I = 0x2f

.field static final TRANSACTION_noteWifiRunning:I = 0x2a

.field static final TRANSACTION_noteWifiRunningChanged:I = 0x2b

.field static final TRANSACTION_noteWifiScanStarted:I = 0x35

.field static final TRANSACTION_noteWifiScanStartedFromSource:I = 0x3b

.field static final TRANSACTION_noteWifiScanStopped:I = 0x36

.field static final TRANSACTION_noteWifiScanStoppedFromSource:I = 0x3c

.field static final TRANSACTION_noteWifiState:I = 0x2d

.field static final TRANSACTION_noteWifiStopped:I = 0x2c

.field static final TRANSACTION_noteWifiSupplicantStateChanged:I = 0x2e

.field static final TRANSACTION_setBatteryState:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 844
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 44
    :sswitch_0
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v4, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 53
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    const/4 v4, 0x1

    goto :goto_0

    .line 60
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_2
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 65
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    const/4 v4, 0x1

    goto :goto_0

    .line 71
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_3
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 74
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v4, 0x1

    goto :goto_0

    .line 80
    .end local v5    # "_arg0":I
    :sswitch_4
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 83
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v4, 0x1

    goto :goto_0

    .line 89
    .end local v5    # "_arg0":I
    :sswitch_5
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 92
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v4, 0x1

    goto :goto_0

    .line 98
    .end local v5    # "_arg0":I
    :sswitch_6
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 101
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 107
    .end local v5    # "_arg0":I
    :sswitch_7
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 114
    :sswitch_8
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 121
    :sswitch_9
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v18

    .line 123
    .local v18, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 129
    .end local v18    # "_result":[B
    :sswitch_a
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 131
    .local v18, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v18, :cond_0

    .line 133
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_1
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 137
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 143
    .end local v18    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_b
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    move-result-wide v18

    .line 145
    .local v18, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 151
    .end local v18    # "_result":J
    :sswitch_c
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    move-result-wide v18

    .line 153
    .restart local v18    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 159
    .end local v18    # "_result":J
    :sswitch_d
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 163
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 166
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 172
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_e
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 177
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 183
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 188
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 194
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_10
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 198
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 199
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 205
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_11
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 210
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;I)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 216
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_12
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 220
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 222
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 228
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v10, 0x1

    .local v10, "_arg5":Z
    :goto_2
    move-object/from16 v4, p0

    .line 229
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 228
    .end local v10    # "_arg5":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 235
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_13
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 239
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 241
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 243
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 245
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 246
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 252
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_14
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 261
    .local v5, "_arg0":Landroid/os/WorkSource;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 263
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 265
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 267
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 269
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v10, 0x1

    .restart local v10    # "_arg5":Z
    :goto_4
    move-object/from16 v4, p0

    .line 270
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 258
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_3

    .line 269
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 276
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_15
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 279
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 285
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 287
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 289
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 291
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 293
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 294
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/WorkSource;

    .line 300
    .local v10, "_arg5":Landroid/os/WorkSource;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 302
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 304
    .local v12, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 306
    .local v13, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 308
    .local v14, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v15, 0x1

    .local v15, "_arg10":Z
    :goto_7
    move-object/from16 v4, p0

    .line 309
    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 282
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/os/WorkSource;
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":I
    .end local v15    # "_arg10":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_5

    .line 297
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":I
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/os/WorkSource;
    goto :goto_6

    .line 308
    .restart local v11    # "_arg6":I
    .restart local v12    # "_arg7":Ljava/lang/String;
    .restart local v13    # "_arg8":Ljava/lang/String;
    .restart local v14    # "_arg9":I
    :cond_6
    const/4 v15, 0x0

    goto :goto_7

    .line 315
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/os/WorkSource;
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":I
    :sswitch_16
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 318
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 324
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 326
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 328
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 330
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 331
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 321
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_8

    .line 337
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_17
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 341
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 342
    .local v16, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 348
    .end local v5    # "_arg0":I
    .end local v16    # "_arg1":J
    :sswitch_18
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 351
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 357
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn()V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 364
    :sswitch_1a
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff()V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 371
    :sswitch_1b
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 374
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 380
    .end local v5    # "_arg0":I
    :sswitch_1c
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 383
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 389
    .end local v5    # "_arg0":I
    :sswitch_1d
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 392
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(I)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 398
    .end local v5    # "_arg0":I
    :sswitch_1e
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 401
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 407
    .end local v5    # "_arg0":I
    :sswitch_1f
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 411
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 412
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 418
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_20
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v5, 0x1

    .line 421
    .local v5, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 420
    .end local v5    # "_arg0":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 427
    :sswitch_21
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 431
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 438
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_22
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 442
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 443
    .restart local v16    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJ)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 449
    .end local v5    # "_arg0":I
    .end local v16    # "_arg1":J
    :sswitch_23
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 456
    :sswitch_24
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 463
    :sswitch_25
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 466
    sget-object v4, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SignalStrength;

    .line 471
    .local v5, "_arg0":Landroid/telephony/SignalStrength;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 469
    .end local v5    # "_arg0":Landroid/telephony/SignalStrength;
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_a

    .line 477
    .end local v5    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_26
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 481
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v6, 0x1

    .line 482
    .local v6, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 481
    .end local v6    # "_arg1":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_b

    .line 488
    .end local v5    # "_arg0":I
    :sswitch_27
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 491
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 497
    .end local v5    # "_arg0":I
    :sswitch_28
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 504
    :sswitch_29
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 511
    :sswitch_2a
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 514
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 519
    .local v5, "_arg0":Landroid/os/WorkSource;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 517
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_c

    .line 525
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_2b
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 528
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 534
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 535
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource;

    .line 540
    .local v6, "_arg1":Landroid/os/WorkSource;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 531
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":Landroid/os/WorkSource;
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_d

    .line 538
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/WorkSource;
    goto :goto_e

    .line 546
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":Landroid/os/WorkSource;
    :sswitch_2c
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 549
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 554
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 552
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_f

    .line 560
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_2d
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 564
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 571
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_2e
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 575
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/4 v6, 0x1

    .line 576
    .local v6, "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 575
    .end local v6    # "_arg1":Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_10

    .line 582
    .end local v5    # "_arg0":I
    :sswitch_2f
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 585
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 591
    .end local v5    # "_arg0":I
    :sswitch_30
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn()V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 598
    :sswitch_31
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff()V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 605
    :sswitch_32
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 608
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothState(I)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 614
    .end local v5    # "_arg0":I
    :sswitch_33
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 617
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 623
    .end local v5    # "_arg0":I
    :sswitch_34
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 626
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 632
    .end local v5    # "_arg0":I
    :sswitch_35
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 635
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 641
    .end local v5    # "_arg0":I
    :sswitch_36
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 644
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 650
    .end local v5    # "_arg0":I
    :sswitch_37
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 653
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 659
    .end local v5    # "_arg0":I
    :sswitch_38
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 662
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 668
    .end local v5    # "_arg0":I
    :sswitch_39
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 671
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 676
    .local v5, "_arg0":Landroid/os/WorkSource;
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 674
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_10
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_11

    .line 682
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3a
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 685
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 690
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 688
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_11
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_12

    .line 696
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3b
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 699
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 704
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 702
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_12
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_13

    .line 710
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3c
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 713
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 718
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 716
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_13
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_14

    .line 724
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3d
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 727
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 733
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 734
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 730
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    .end local v6    # "_arg1":I
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_15

    .line 740
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3e
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 743
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 748
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 746
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_15
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_16

    .line 754
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3f
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 757
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 762
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 760
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_17

    .line 768
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_40
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 771
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 776
    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V

    .line 777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 774
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/WorkSource;
    goto :goto_18

    .line 782
    .end local v5    # "_arg0":Landroid/os/WorkSource;
    :sswitch_41
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 786
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 787
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 793
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_42
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 800
    :sswitch_43
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 804
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 806
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 808
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 810
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 812
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    move-object/from16 v4, p0

    .line 813
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIII)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 819
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    :sswitch_44
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v18

    .line 821
    .restart local v18    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 823
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 827
    .end local v18    # "_result":J
    :sswitch_45
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v18

    .line 829
    .restart local v18    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 831
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 835
    .end local v18    # "_result":J
    :sswitch_46
    const-string v4, "com.android.internal.app.IBatteryStats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 838
    .local v5, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryStat([I)[Landroid/os/Bundle;

    move-result-object v18

    .line 839
    .local v18, "_result":[Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 841
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 40
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
