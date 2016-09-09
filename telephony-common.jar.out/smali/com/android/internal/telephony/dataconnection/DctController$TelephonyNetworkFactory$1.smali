.class Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;
.super Ljava/lang/Object;
.source "DctController.java"

# interfaces
.implements Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->registerOnDemandDdsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyOnDemandDdsLockGranted(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got the tempDds lock for the request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    const v2, 0x83066

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 1238
    return-void
.end method
