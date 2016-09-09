.class Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->cancelNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$extId:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$extId:I

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 526
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 527
    .local v1, "inm":Landroid/app/INotificationManager;
    if-nez v1, :cond_0

    .line 545
    :goto_0
    return-void

    .line 530
    :cond_0
    const/4 v2, 0x0

    .line 531
    .local v2, "tag":Ljava/lang/String;
    sget-boolean v3, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v3, :cond_1

    .line 532
    iget v3, p0, Lcom/android/server/am/ServiceRecord$2;->val$extId:I

    if-lez v3, :cond_1

    .line 533
    iget v3, p0, Lcom/android/server/am/ServiceRecord$2;->val$extId:I

    invoke-static {v2, v3}, Landroid/service/notification/StatusBarNotification;->encodeInstanceIdIntoTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 537
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v1, v3, v2, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    const-string v4, "Error canceling notification for service"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
