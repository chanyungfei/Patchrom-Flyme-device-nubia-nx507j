.class public Lnubia/net/wifi/WifiBackup;
.super Ljava/lang/Object;
.source "WifiBackup.java"


# static fields
.field private static final BYTE_COPY_INITIAL_POINT:I = 0x0

.field private static final CONFIG_BYTE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "Wifibackup"

.field private static final TLV_EAP_ANONYMOUSIDENTIY:I = 0x9

.field private static final TLV_EAP_CACERTIFICATEALIAS:I = 0xb

.field private static final TLV_EAP_EAPMETHOD:I = 0xc

.field private static final TLV_EAP_IDENTITY:I = 0xe

.field private static final TLV_EAP_PASSWORD:I = 0xa

.field private static final TLV_EAP_PHASE2METHOD:I = 0xd

.field private static final TLV_KEY_MGMT:I = 0x2

.field private static final TLV_PSK:I = 0x1

.field private static final TLV_SSID:I


# instance fields
.field private mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "manager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lnubia/net/wifi/WifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 48
    return-void
.end method

.method private Array2Typeint([B)I
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 363
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 364
    .local v1, "shift":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method private TlvWifiConfig(Landroid/net/wifi/WifiConfiguration;[B)I
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "valueConfig"    # [B

    .prologue
    const/4 v6, 0x0

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, "mvalueConfig":[B
    const/4 v1, 0x0

    .line 118
    .local v1, "mLength":I
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 120
    const-string v3, "Wifibackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config.SSID ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 122
    array-length v1, v2

    .line 124
    :cond_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const/4 v3, 0x1

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 126
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 127
    array-length v3, v2

    add-int/2addr v1, v3

    .line 129
    :cond_1
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const/16 v3, 0x9

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 131
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 132
    array-length v3, v2

    add-int/2addr v1, v3

    .line 134
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    const/16 v3, 0xa

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 136
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    array-length v3, v2

    add-int/2addr v1, v3

    .line 139
    :cond_3
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    const/16 v3, 0xb

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 141
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 142
    array-length v3, v2

    add-int/2addr v1, v3

    .line 144
    :cond_4
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 145
    const/16 v3, 0xc

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->tlvencode(II)[B

    move-result-object v2

    .line 146
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 147
    array-length v3, v2

    add-int/2addr v1, v3

    .line 149
    :cond_5
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    if-eqz v3, :cond_6

    .line 150
    const/16 v3, 0xd

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->tlvencode(II)[B

    move-result-object v2

    .line 151
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 152
    array-length v3, v2

    add-int/2addr v1, v3

    .line 154
    :cond_6
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 155
    const/16 v3, 0xe

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 156
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 157
    array-length v3, v2

    add-int/2addr v1, v3

    .line 160
    :cond_7
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "keyMgmt":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-direct {p0, v3, v0}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 162
    array-length v3, v2

    invoke-static {v2, v6, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 163
    array-length v3, v2

    add-int/2addr v1, v3

    .line 164
    return v1
.end method

.method private int2TypeArray(I)[B
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 352
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 353
    .local v0, "mByte":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 354
    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 355
    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 356
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 357
    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 409
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 385
    array-length v1, p2

    .line 386
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 388
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 387
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const-string v2, "Wifibackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to look-up a string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "set"    # Ljava/util/BitSet;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 374
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 375
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 376
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 382
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseVersion01Config([B)Ljava/util/List;
    .locals 14
    .param p1, "mbyte"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    const/4 v10, 0x0

    .line 310
    .local v10, "waitByte":[B
    const/4 v3, 0x2

    .line 311
    .local v3, "flag":I
    const/4 v8, 0x0

    .line 312
    .local v8, "qnumber":I
    const/4 v1, 0x4

    .line 313
    .local v1, "byteCopyLength":I
    const/16 v2, 0x8

    .line 314
    .local v2, "byteStepLength":I
    const/4 v12, 0x2

    new-array v9, v12, [B

    .line 315
    .local v9, "version":[B
    const/4 v12, 0x4

    new-array v4, v12, [B

    .line 316
    .local v4, "lByte":[B
    const/4 v12, 0x4

    new-array v7, v12, [B

    .line 317
    .local v7, "qByte":[B
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 318
    .local v5, "mconfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, "backconfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    array-length v12, p1

    if-ge v3, v12, :cond_3

    .line 320
    const-string v12, "Wifibackup"

    const-string v13, "wifibackup version 01"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v12, 0x0

    invoke-static {p1, v3, v7, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 322
    add-int v12, v3, v1

    const/4 v13, 0x0

    invoke-static {p1, v12, v4, v13, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 323
    invoke-direct {p0, v4}, Lnubia/net/wifi/WifiBackup;->Array2Typeint([B)I

    move-result v8

    .line 324
    invoke-direct {p0, v7}, Lnubia/net/wifi/WifiBackup;->Array2Typeint([B)I

    move-result v11

    .line 325
    .local v11, "ztype":I
    if-nez v11, :cond_0

    .line 326
    new-array v10, v8, [B

    .line 327
    add-int v12, v3, v2

    const/4 v13, 0x0

    invoke-static {p1, v12, v10, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 328
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v12, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 329
    add-int v12, v8, v2

    add-int/2addr v3, v12

    goto :goto_0

    .line 330
    :cond_0
    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 331
    new-array v10, v8, [B

    .line 332
    add-int v12, v3, v2

    const/4 v13, 0x0

    invoke-static {p1, v12, v10, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 333
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v12, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 334
    add-int v12, v8, v2

    add-int/2addr v3, v12

    goto :goto_0

    .line 335
    :cond_1
    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 336
    new-array v10, v8, [B

    .line 337
    add-int v12, v3, v2

    const/4 v13, 0x0

    invoke-static {p1, v12, v10, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 338
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    .line 339
    .local v6, "mkeyMgmt":Ljava/lang/String;
    iget-object v12, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->clear()V

    .line 340
    iget-object v12, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v6}, Lnubia/net/wifi/WifiBackup;->setKeyMgmt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->set(I)V

    .line 341
    new-instance v12, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v12, v5}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5    # "mconfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 343
    .restart local v5    # "mconfig":Landroid/net/wifi/WifiConfiguration;
    add-int v12, v8, v2

    add-int/2addr v3, v12

    .line 344
    goto :goto_0

    .line 345
    .end local v6    # "mkeyMgmt":Ljava/lang/String;
    :cond_2
    const-string v12, "Wifibackup"

    const-string v13, "version 01 error byte"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v11    # "ztype":I
    :cond_3
    return-object v0
.end method

.method private parseVersion02Config([B)Ljava/util/List;
    .locals 24
    .param p1, "mbyte"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    const/4 v7, 0x2

    .line 215
    .local v7, "compareByteLength":I
    const/4 v5, 0x4

    .line 216
    .local v5, "byteCopyLength":I
    const/16 v6, 0x8

    .line 217
    .local v6, "byteStepLength":I
    const/16 v19, -0x1

    .line 218
    .local v19, "tagValue":I
    const/4 v11, 0x0

    .line 219
    .local v11, "lengthValue":I
    const/16 v20, 0x0

    .line 220
    .local v20, "valueByteValue":[B
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v10, v0, [B

    .line 221
    .local v10, "lengthByte":[B
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 222
    .local v18, "tagByte":[B
    new-instance v12, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v12}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 223
    .local v12, "mconfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v4, "backconfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_2

    .line 225
    const-string v21, "Wifibackup"

    const-string v22, "wifibackup version 02"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v7, v1, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 227
    add-int v21, v7, v5

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v10, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lnubia/net/wifi/WifiBackup;->Array2Typeint([B)I

    move-result v11

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnubia/net/wifi/WifiBackup;->Array2Typeint([B)I

    move-result v19

    .line 230
    packed-switch v19, :pswitch_data_0

    .line 299
    :pswitch_0
    move-object/from16 v0, p1

    array-length v7, v0

    .line 300
    const-string v21, "Wifibackup"

    const-string v22, "wifibackup decode is abnormal!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :pswitch_1
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 233
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 234
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v21

    iput-object v0, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 235
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 236
    goto :goto_0

    .line 238
    :pswitch_2
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 239
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 240
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v21

    iput-object v0, v12, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 241
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 242
    goto/16 :goto_0

    .line 244
    :pswitch_3
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 245
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 246
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 247
    .local v13, "mkeyMgmt":Ljava/lang/String;
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/BitSet;->clear()V

    .line 248
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnubia/net/wifi/WifiBackup;->setKeyMgmt(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->set(I)V

    .line 249
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 250
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 251
    :cond_0
    const-string v21, "Wifibackup"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "add mconfig to revert list, ssid = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v21, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    new-instance v12, Landroid/net/wifi/WifiConfiguration;

    .end local v12    # "mconfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v12}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 255
    .restart local v12    # "mconfig":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_0

    .line 257
    .end local v13    # "mkeyMgmt":Ljava/lang/String;
    :pswitch_4
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 258
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 259
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    .line 260
    .local v14, "strAnonymousIdentity":Ljava/lang/String;
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 261
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 262
    goto/16 :goto_0

    .line 264
    .end local v14    # "strAnonymousIdentity":Ljava/lang/String;
    :pswitch_5
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 265
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 266
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 267
    .local v17, "strPassword":Ljava/lang/String;
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 268
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 269
    goto/16 :goto_0

    .line 271
    .end local v17    # "strPassword":Ljava/lang/String;
    :pswitch_6
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 272
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 273
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    .line 274
    .local v15, "strCaCertificateAlias":Ljava/lang/String;
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 275
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 276
    goto/16 :goto_0

    .line 278
    .end local v15    # "strCaCertificateAlias":Ljava/lang/String;
    :pswitch_7
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 279
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnubia/net/wifi/WifiBackup;->Array2Typeint([B)I

    move-result v8

    .line 281
    .local v8, "iEapMethod":I
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 282
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 283
    goto/16 :goto_0

    .line 285
    .end local v8    # "iEapMethod":I
    :pswitch_8
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 286
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnubia/net/wifi/WifiBackup;->Array2Typeint([B)I

    move-result v9

    .line 288
    .local v9, "iPhase2Method":I
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 289
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 290
    goto/16 :goto_0

    .line 292
    .end local v9    # "iPhase2Method":I
    :pswitch_9
    new-array v0, v11, [B

    move-object/from16 v20, v0

    .line 293
    add-int v21, v7, v6

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 294
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 295
    .local v16, "strIdentity":Ljava/lang/String;
    iget-object v0, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 296
    add-int v21, v11, v6

    add-int v7, v7, v21

    .line 297
    goto/16 :goto_0

    .line 304
    .end local v16    # "strIdentity":Ljava/lang/String;
    :cond_2
    return-object v4

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setKeyMgmt(Ljava/lang/String;)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 394
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 395
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, "vals":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 397
    .local v4, "val":Ljava/lang/String;
    sget-object v7, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lnubia/net/wifi/WifiBackup;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 399
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 405
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "index":I
    .end local v3    # "len$":I
    .end local v4    # "val":Ljava/lang/String;
    .end local v5    # "vals":[Ljava/lang/String;
    :goto_1
    return v2

    .line 396
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "index":I
    .restart local v3    # "len$":I
    .restart local v4    # "val":Ljava/lang/String;
    .restart local v5    # "vals":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "index":I
    .end local v4    # "val":Ljava/lang/String;
    :cond_1
    move v2, v6

    .line 403
    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "vals":[Ljava/lang/String;
    :cond_2
    move v2, v6

    .line 405
    goto :goto_1
.end method

.method private tlvdecode([B)Ljava/util/List;
    .locals 5
    .param p1, "mbyte"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 198
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 199
    .local v0, "version":[B
    aget-byte v2, p1, v4

    aput-byte v2, v0, v4

    .line 200
    aget-byte v2, p1, v3

    aput-byte v2, v0, v3

    .line 201
    aget-byte v1, v0, v3

    .line 206
    .local v1, "versionNum":I
    if-ne v1, v3, :cond_0

    .line 207
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->parseVersion01Config([B)Ljava/util/List;

    move-result-object v2

    .line 209
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->parseVersion02Config([B)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private tlvencode(II)[B
    .locals 7
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "tag":[B
    const/4 v0, 0x0

    .line 186
    .local v0, "length":[B
    const/4 v1, 0x0

    .line 187
    .local v1, "mvalue":[B
    const/4 v3, 0x0

    .line 188
    .local v3, "tmpValue":[B
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v2

    .line 189
    invoke-direct {p0, p2}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v3

    .line 190
    array-length v4, v3

    invoke-direct {p0, v4}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v0

    .line 191
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 192
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 193
    array-length v4, v2

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 194
    array-length v4, v2

    array-length v5, v0

    add-int/2addr v4, v5

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 195
    return-object v1
.end method

.method private tlvencode(ILjava/lang/String;)[B
    .locals 7
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "tag":[B
    const/4 v0, 0x0

    .line 170
    .local v0, "length":[B
    const/4 v1, 0x0

    .line 171
    .local v1, "mvalue":[B
    const/4 v3, 0x0

    .line 172
    .local v3, "tmpValue":[B
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v2

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 175
    array-length v4, v3

    invoke-direct {p0, v4}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v0

    .line 176
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 177
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 178
    array-length v4, v2

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 179
    array-length v4, v2

    array-length v5, v0

    add-int/2addr v4, v5

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 181
    :cond_0
    return-object v1
.end method


# virtual methods
.method public backNumWifiInformation()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getConfigured(Ljava/util/List;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "zConfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v9, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    .local v6, "retBackData":[B
    const/4 v0, 0x0

    .line 57
    .local v0, "backData":[B
    const/16 v7, 0x100

    new-array v2, v7, [B

    .line 58
    .local v2, "configByte":[B
    const/4 v3, 0x0

    .line 59
    .local v3, "configByteLen":I
    const/4 v5, 0x0

    .line 61
    .local v5, "number":I
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 62
    const/4 v3, 0x0

    .line 63
    iput-object p1, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    .line 64
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit16 v7, v7, 0x100

    new-array v0, v7, [B

    .line 66
    aput-byte v9, v0, v9

    .line 67
    const/4 v7, 0x1

    const/4 v8, 0x2

    aput-byte v8, v0, v7

    .line 68
    const/4 v5, 0x2

    .line 69
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 70
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, v2}, Lnubia/net/wifi/WifiBackup;->TlvWifiConfig(Landroid/net/wifi/WifiConfiguration;[B)I

    move-result v3

    .line 71
    invoke-static {v2, v9, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 72
    add-int/2addr v5, v3

    .line 73
    goto :goto_0

    .line 75
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz v0, :cond_1

    array-length v7, v0

    if-eqz v7, :cond_1

    .line 76
    new-array v6, v5, [B

    .line 77
    invoke-static {v0, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    move-object v7, v6

    .line 82
    :goto_1
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setConfigured([B)Ljava/util/List;
    .locals 1
    .param p1, "mbyte"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lnubia/net/wifi/WifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->tlvdecode([B)Ljava/util/List;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
