.class Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DdsSwitchSerializerHandler"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsSwitchSerializer"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 976
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 977
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 999
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1061
    :goto_0
    return-void

    .line 1001
    :pswitch_0
    const-string v2, "DdsSwitchSerializer"

    const-string v3, "EVENT_START_DDS_SWITCH"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1006
    const-string v2, "DdsSwitchSerializer"

    const-string v3, "DDS switch in progress, wait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 1012
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1013
    :catch_0
    move-exception v13

    .line 1014
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "DdsSwitchSerializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while serializing the DDS switch request , e="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    const-string v2, "DdsSwitchSerializer"

    const-string v3, "Locked!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$502(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 1012
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1019
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkRequest;

    .line 1021
    .local v4, "n":Landroid/net/NetworkRequest;
    const-string v2, "DdsSwitchSerializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start the DDS switch for req "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v17

    .line 1024
    .local v17, "subId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()I

    move-result v2

    move/from16 v0, v17

    if-ne v0, v2, :cond_1

    .line 1025
    const-string v2, "DdsSwitchSerializer"

    const-string v3, "No change in DDS, respond back"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$502(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$700(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/os/RegistrantList;

    move-result-object v2

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1031
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v15

    .line 1032
    .local v15, "phoneId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v16

    .line 1035
    .local v16, "prefPhoneId":I
    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1036
    const-string v2, "DdsSwitchSerializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not valid, prefPhoneId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->unLock()V

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$700(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/os/RegistrantList;

    move-result-object v2

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "get phoneId fail"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1043
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$800(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .local v14, "phone":Lcom/android/internal/telephony/Phone;
    move-object v2, v14

    .line 1044
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1045
    .local v12, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;ILandroid/net/NetworkRequest;ZZ)V

    .line 1047
    .local v1, "prefSwitchInfo":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1049
    .local v11, "dataAllowFalse":Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {v12, v2, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    .line 1051
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1053
    const-string v2, "Ondemand DDS switch"

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1055
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;ILandroid/net/NetworkRequest;ZZ)V

    .line 1056
    .local v5, "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$800(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    aget-object v2, v2, v16

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->access$900()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6, v5}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 999
    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method public isLocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 990
    monitor-enter p0

    .line 991
    :try_start_0
    const-string v3, "DdsSwitchSerializer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLocked = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 991
    goto :goto_0

    :cond_1
    move v0, v1

    .line 992
    goto :goto_1

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unLock()V
    .locals 2

    .prologue
    .line 980
    const-string v0, "DdsSwitchSerializer"

    const-string v1, "unLock the DdsSwitchSerializer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    monitor-enter p0

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$502(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z

    .line 983
    const-string v0, "DdsSwitchSerializer"

    const-string v1, "unLocked the DdsSwitchSerializer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 985
    monitor-exit p0

    .line 987
    return-void

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
