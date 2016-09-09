.class public final Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;
.super Ljava/lang/Object;
.source "IccCardIdentificationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static has3gpp2UiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 47
    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static has3gppUiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 39
    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasValid3gpp2UiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 60
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasValid3gppUiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 2
    .param p0, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v0, 0x1

    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCdmaCard(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 70
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 71
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v0, 0x0

    .line 72
    .local v0, "isCdma":Z
    if-eqz v1, :cond_1

    .line 73
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    .line 78
    :cond_1
    return v0
.end method

.method public static isCdmaCardOnSub1(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->isCdmaCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ModemStackController;->getPrimarySub()I

    move-result v0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDummyDualCard(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "card"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->hasValid3gpp2UiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->has3gppUiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->hasValid3gppUiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleCard(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "card"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->hasValid3gpp2UiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccCardIdentificationUtils;->has3gppUiccApplication(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCDMA()Z
    .locals 3

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "hardwareId":I
    const/4 v0, 0x1

    .line 94
    .local v0, "cdma":I
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getHardwareId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    and-int v2, v1, v0

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isSupportLtePlusC()Z
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "support":Z
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isSupportLtePlusC()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method
