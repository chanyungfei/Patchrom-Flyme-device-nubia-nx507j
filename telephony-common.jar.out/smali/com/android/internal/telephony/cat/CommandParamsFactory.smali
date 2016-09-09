.class Lcom/android/internal/telephony/cat/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final DTTZ_SETTING:I = 0x3

.field static final LANGUAGE_SETTING:I = 0x4

.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field private static final MAX_GSM7_DEFAULT_CHARS:I = 0xef

.field private static final MAX_UCS2_CHARS:I = 0x76

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field private static sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private mloadIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 49
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 51
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 94
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 95
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 2
    .param p0, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 83
    const-class v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit v1

    return-object v0

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processActivate(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 5
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1031
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1033
    .local v0, "commandType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    const/4 v1, 0x0

    .line 1039
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ACTIVATE_DESCRIPTOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1040
    if-eqz v1, :cond_0

    .line 1041
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTarget(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v2

    .line 1042
    .local v2, "target":I
    new-instance v3, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate cmd target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    .end local v2    # "target":I
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 1045
    :cond_0
    const-string v3, "ctlv is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 992
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 994
    .local v0, "commandType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_0

    .line 995
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 999
    .local v4, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    .line 1000
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    .line 1001
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v2, 0x0

    .line 1004
    .local v2, "has_alpha_id":Z
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1005
    if-eqz v1, :cond_1

    .line 1006
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1007
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alpha TLV text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    const/4 v2, 0x1

    .line 1012
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1013
    if-eqz v1, :cond_2

    .line 1014
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1015
    iget-boolean v7, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1018
    :cond_2
    iput-boolean v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 1019
    new-instance v7, Lcom/android/internal/telephony/cat/BIPClientParams;

    invoke-direct {v7, p1, v4, v2}, Lcom/android/internal/telephony/cat/BIPClientParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1021
    if-eqz v3, :cond_3

    .line 1022
    iput v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1023
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v7, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1026
    :goto_0
    return v5

    :cond_3
    move v5, v6

    goto :goto_0
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 100
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-eqz p1, :cond_0

    .line 102
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 104
    .local v1, "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    .end local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .line 107
    .restart local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCommandDetails: Failed to procees command details e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 338
    const-string v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 341
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 343
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 345
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 346
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 350
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 351
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    .line 354
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_2

    .line 356
    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 359
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_3

    .line 361
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 362
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 365
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_4

    .line 367
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 371
    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 372
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 374
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 376
    if-eqz v1, :cond_7

    .line 377
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 378
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 379
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 383
    :goto_2
    return v4

    :cond_5
    move v3, v5

    .line 371
    goto :goto_0

    :cond_6
    move v3, v5

    .line 372
    goto :goto_1

    :cond_7
    move v4, v5

    .line 383
    goto :goto_2
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 686
    const-string v5, "process EventNotify"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 689
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 691
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 693
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 695
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 696
    if-eqz v0, :cond_0

    .line 697
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 698
    iget-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 701
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 702
    new-instance v5, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v5, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 704
    if-eqz v1, :cond_1

    .line 705
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 706
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 707
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 711
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 449
    const-string v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    new-instance v2, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 452
    .local v2, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v1, 0x0

    .line 454
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 456
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 457
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 462
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_0

    .line 464
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 468
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_1

    .line 470
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 473
    :cond_1
    iput v4, v2, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 474
    iput v4, v2, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 476
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 477
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 478
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 479
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 480
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 482
    new-instance v3, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 484
    if-eqz v1, :cond_7

    .line 485
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 486
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 487
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 491
    :goto_4
    return v4

    .line 459
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    :cond_3
    move v3, v5

    .line 476
    goto :goto_0

    :cond_4
    move v3, v5

    .line 477
    goto :goto_1

    :cond_5
    move v3, v5

    .line 478
    goto :goto_2

    :cond_6
    move v3, v5

    .line 479
    goto :goto_3

    :cond_7
    move v4, v5

    .line 491
    goto :goto_4
.end method

.method private processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/16 v11, 0xef

    const/16 v10, 0x76

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 507
    const-string v6, "process GetInput"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    new-instance v3, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 510
    .local v3, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v2, 0x0

    .line 512
    .local v2, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 514
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_3

    .line 515
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 520
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_4

    .line 523
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 524
    .local v4, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 525
    .local v5, "valueIndex":I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 526
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 539
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_1

    .line 541
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v2

    .line 544
    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_5

    move v6, v7

    :goto_0
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 545
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    move v6, v7

    :goto_1
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 546
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_7

    move v6, v7

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 547
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_8

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 548
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_9

    move v6, v7

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 552
    iget-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    if-eqz v6, :cond_a

    iget v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v6, v10, :cond_a

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UCS2: received maxLen = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", truncating to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iput v10, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 562
    :cond_2
    :goto_5
    new-instance v6, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 564
    if-eqz v2, :cond_b

    .line 565
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 566
    iput v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 567
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v8, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 571
    :goto_6
    return v7

    .line 517
    .end local v4    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 531
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .restart local v4    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :cond_5
    move v6, v8

    .line 544
    goto/16 :goto_0

    :cond_6
    move v6, v8

    .line 545
    goto :goto_1

    :cond_7
    move v6, v8

    .line 546
    goto :goto_2

    :cond_8
    move v6, v8

    .line 547
    goto :goto_3

    :cond_9
    move v6, v8

    .line 548
    goto :goto_4

    .line 556
    :cond_a
    iget-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->packed:Z

    if-nez v6, :cond_2

    iget v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v6, v11, :cond_2

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GSM 7Bit Default: received maxLen = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", truncating to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iput v11, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    goto :goto_5

    :cond_b
    move v7, v8

    .line 571
    goto :goto_6
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x1

    .line 778
    const-string v10, "process LaunchBrowser"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 781
    .local v0, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    .line 782
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v6, 0x0

    .line 784
    .local v6, "url":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 785
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 787
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 788
    .local v5, "rawValue":[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 789
    .local v7, "valueIndex":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    .line 790
    .local v8, "valueLen":I
    if-lez v8, :cond_2

    .line 791
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 802
    .end local v5    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :cond_0
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 803
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 806
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 807
    if-eqz v1, :cond_1

    .line 808
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 809
    iget-boolean v10, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 814
    :cond_1
    iget v10, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v10, :pswitch_data_0

    .line 817
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 827
    .local v4, "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :goto_1
    new-instance v10, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    invoke-direct {v10, p1, v0, v6, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 829
    if-eqz v3, :cond_3

    .line 830
    iput v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 831
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v11, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 835
    :goto_2
    return v9

    .line 794
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .restart local v5    # "rawValue":[B
    .restart local v7    # "valueIndex":I
    .restart local v8    # "valueLen":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 796
    .end local v5    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :catch_0
    move-exception v2

    .line 797
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 820
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 821
    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    .line 823
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    .line 835
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 814
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 851
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    const/4 v3, 0x0

    .line 854
    .local v3, "tone":Lcom/android/internal/telephony/cat/Tone;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 855
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 856
    .local v4, "duration":Lcom/android/internal/telephony/cat/Duration;
    const/4 v8, 0x0

    .line 858
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 859
    .local v6, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 861
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 863
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 864
    .local v9, "rawValue":[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 865
    .local v11, "valueIndex":I
    aget-byte v10, v9, v11

    .line 866
    .local v10, "toneVal":I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 874
    .end local v9    # "rawValue":[B
    .end local v10    # "toneVal":I
    .end local v11    # "valueIndex":I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 875
    if-eqz v6, :cond_1

    .line 876
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 880
    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 883
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 884
    if-eqz v6, :cond_2

    .line 885
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v4

    .line 888
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 889
    if-eqz v6, :cond_3

    .line 890
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v8

    .line 891
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 894
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 896
    .local v5, "vibrate":Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 897
    new-instance v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 899
    if-eqz v8, :cond_5

    .line 900
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 903
    const/4 v0, 0x1

    .line 905
    :goto_1
    return v0

    .line 867
    .end local v5    # "vibrate":Z
    :catch_0
    move-exception v7

    .line 868
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 894
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 905
    .restart local v5    # "vibrate":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 972
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process ProvideLocalInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLI["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Command Not Supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 985
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 975
    :pswitch_0
    const-string v0, "PLI [DTTZ_SETTING]"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 987
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 979
    :pswitch_1
    const-string v0, "PLI [LANGUAGE_SETTING]"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_0

    .line 973
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 587
    const-string v7, "process SelectItem"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    new-instance v3, Lcom/android/internal/telephony/cat/Menu;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    .line 590
    .local v3, "menu":Lcom/android/internal/telephony/cat/Menu;
    const/4 v6, 0x0

    .line 591
    .local v6, "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    .line 592
    .local v1, "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 594
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 596
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 597
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 601
    :cond_0
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_1

    .line 603
    iget-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :cond_1
    iget-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 611
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 614
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_3

    .line 618
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 621
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_4

    .line 623
    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 624
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v6

    .line 625
    iget-boolean v7, v6, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 628
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_5

    .line 630
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 631
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;

    move-result-object v1

    .line 632
    iget-boolean v7, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 635
    :cond_5
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    move v4, v8

    .line 636
    .local v4, "presentTypeSpecified":Z
    :goto_1
    if-eqz v4, :cond_6

    .line 637
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    .line 638
    sget-object v7, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 643
    :cond_6
    :goto_2
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 644
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_a

    move v7, v8

    :goto_4
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 646
    new-instance v10, Lcom/android/internal/telephony/cat/SelectItemParams;

    if-eqz v6, :cond_b

    move v7, v8

    :goto_5
    invoke-direct {v10, p1, v3, v7}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 649
    iget v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    :goto_6
    move v9, v8

    .line 671
    :pswitch_0
    return v9

    .end local v4    # "presentTypeSpecified":Z
    :cond_7
    move v4, v9

    .line 635
    goto :goto_1

    .line 640
    .restart local v4    # "presentTypeSpecified":Z
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    goto :goto_2

    :cond_9
    move v7, v9

    .line 643
    goto :goto_3

    :cond_a
    move v7, v9

    .line 644
    goto :goto_4

    :cond_b
    move v7, v9

    .line 646
    goto :goto_5

    .line 653
    :pswitch_1
    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 654
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v9, v6, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto :goto_6

    .line 658
    :pswitch_2
    iget-object v5, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 659
    .local v5, "recordNumbers":[I
    if-eqz v6, :cond_c

    .line 661
    iget-object v7, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 662
    iget v7, v6, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    aput v7, v5, v9

    .line 663
    iget-object v7, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    iget-object v10, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v10, v10

    invoke-static {v7, v9, v5, v8, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 666
    :cond_c
    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 667
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_6

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 727
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v8, "process SetUpEventList"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 729
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 731
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 732
    .local v5, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 733
    .local v6, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v7

    .line 734
    .local v7, "valueLen":I
    new-array v2, v7, [I

    .line 735
    .local v2, "eventList":[I
    const/4 v3, -0x1

    .line 736
    .local v3, "eventValue":I
    const/4 v4, 0x0

    .line 737
    .local v4, "i":I
    :goto_0
    if-lez v7, :cond_0

    .line 738
    aget-byte v8, v5, v6

    and-int/lit16 v3, v8, 0xff

    .line 739
    add-int/lit8 v6, v6, 0x1

    .line 740
    add-int/lit8 v7, v7, -0x1

    .line 742
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 749
    :sswitch_0
    aput v3, v2, v4

    .line 750
    add-int/lit8 v4, v4, 0x1

    .line 751
    goto :goto_0

    .line 757
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/cat/SetEventListParams;

    invoke-direct {v8, p1, v2}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    iput-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v2    # "eventList":[I
    .end local v3    # "eventValue":I
    .end local v4    # "i":I
    .end local v5    # "rawValue":[B
    .end local v6    # "valueIndex":I
    .end local v7    # "valueLen":I
    :cond_1
    :goto_1
    const/4 v8, 0x0

    return v8

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, " IndexOutofBoundException in processSetUpEventList"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 742
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xf -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x1

    .line 399
    const-string v4, "process SetUpIdleModeText"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 402
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 404
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 406
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 407
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 410
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_1

    .line 412
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 413
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 421
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v4, :cond_2

    .line 422
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    .line 424
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 426
    if-eqz v1, :cond_3

    .line 427
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 428
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 429
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 433
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x1

    .line 920
    const-string v7, "process SetupCall"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 923
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x0

    .line 925
    .local v4, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 927
    .local v3, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 928
    .local v1, "callMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v2, 0x0

    .line 929
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v0, 0x0

    .line 932
    .local v0, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v4

    .line 933
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 935
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v4

    .line 936
    if-eqz v4, :cond_0

    .line 937
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v2

    .line 938
    iget-boolean v7, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 942
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v4

    .line 943
    if-eqz v4, :cond_1

    .line 944
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 947
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v4

    .line 948
    if-eqz v4, :cond_2

    .line 949
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v0

    .line 950
    iget-boolean v7, v0, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 953
    :cond_2
    new-instance v7, Lcom/android/internal/telephony/cat/CallSetupParams;

    invoke-direct {v7, p1, v3, v1}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 955
    if-nez v2, :cond_3

    if-eqz v0, :cond_6

    .line 956
    :cond_3
    iput v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 957
    new-array v6, v11, [I

    .line 958
    .local v6, "recordNumbers":[I
    if-eqz v2, :cond_5

    iget v7, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    :goto_0
    aput v7, v6, v9

    .line 960
    if-eqz v0, :cond_4

    iget v8, v0, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    :cond_4
    aput v8, v6, v10

    .line 963
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    move v7, v10

    .line 967
    .end local v6    # "recordNumbers":[I
    :goto_1
    return v7

    .restart local v6    # "recordNumbers":[I
    :cond_5
    move v7, v8

    .line 958
    goto :goto_0

    .end local v6    # "recordNumbers":[I
    :cond_6
    move v7, v9

    .line 967
    goto :goto_1
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 3
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 315
    .local v1, "tagValue":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 317
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 321
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 237
    const/4 v4, 0x0

    .line 238
    .local v4, "icons":[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 241
    .local v3, "iconIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    if-nez v6, :cond_0

    .line 242
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 273
    .end local p1    # "data":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 246
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_2

    .line 247
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    if-eqz v6, :cond_1

    .line 248
    const-string v6, "Optional Icon data is NULL"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    iput-boolean v7, v6, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    .line 250
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    .line 253
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    .line 255
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    .line 257
    :cond_2
    iget v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    packed-switch v6, :pswitch_data_0

    .line 273
    .end local p1    # "data":Ljava/lang/Object;
    :cond_3
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    .line 259
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 262
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "data":Ljava/lang/Object;
    move-object v4, p1

    check-cast v4, [Landroid/graphics/Bitmap;

    .line 264
    move-object v0, v4

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v2, v0, v1

    .line 265
    .local v2, "icon":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 266
    if-nez v2, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    if-eqz v6, :cond_4

    .line 267
    const-string v6, "Optional Icon data is NULL while loading multi icons"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    iput-boolean v7, v6, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    .line 264
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/IconLoader;->dispose()V

    .line 1052
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 1053
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1054
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 1055
    sput-object v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 1056
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .locals 7
    .param p1, "berTlv"    # Lcom/android/internal/telephony/cat/BerTlv;

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 122
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_2

    .line 125
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 128
    :cond_2
    const/4 v1, 0x0

    .line 129
    .local v1, "cmdPending":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 131
    .local v3, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v0

    .line 132
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-nez v0, :cond_3

    .line 133
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 139
    :cond_3
    iget v5, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 141
    .local v2, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-nez v2, :cond_4

    .line 144
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 145
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->isLengthValid()Z

    move-result v5

    if-nez v5, :cond_5

    .line 151
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 152
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 157
    :cond_5
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/cat/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 212
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 213
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "make: caught ResultException e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 219
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 159
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 222
    :goto_1
    if-nez v1, :cond_0

    .line 223
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 162
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 163
    goto :goto_1

    .line 165
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 166
    goto :goto_1

    .line 168
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 169
    goto :goto_1

    .line 171
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 172
    goto :goto_1

    .line 174
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 175
    goto :goto_1

    .line 180
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 181
    goto :goto_1

    .line 184
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 185
    goto :goto_1

    .line 187
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 188
    goto :goto_1

    .line 190
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 191
    goto :goto_1

    .line 193
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 194
    goto :goto_1

    .line 196
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 197
    goto :goto_1

    .line 199
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 200
    goto :goto_1

    .line 205
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 206
    goto :goto_1

    .line 208
    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processActivate(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 209
    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
