.class public Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
.super Ljava/lang/Object;
.source "ActivityLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyRecord"
.end annotation


# instance fields
.field mAttachActivity:Lcom/android/server/am/ActivityRecord;

.field mPackageName:Ljava/lang/String;

.field mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

.field mVerifyId:I

.field mVerifyWithStart:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityLockHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;)V
    .locals 0
    .param p2, "verifyWithStart"    # Z
    .param p3, "verifyId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attachActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "startIntentInfo"    # Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->this$0:Lcom/android/server/am/ActivityLockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-boolean p2, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyWithStart:Z

    .line 406
    iput p3, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    .line 407
    iput-object p4, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    .line 408
    iput-object p5, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    .line 409
    iput-object p6, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    .line 410
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mVerifyWithStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyWithStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVerifyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAttachActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mStartIntentInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    iget v2, v2, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCallingUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    iget-object v2, v2, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
