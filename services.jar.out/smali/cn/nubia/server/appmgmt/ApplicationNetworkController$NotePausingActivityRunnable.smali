.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotePausingActivityRunnable"
.end annotation


# instance fields
.field private mPausingPackage:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;IILjava/lang/String;)V
    .locals 0
    .param p2, "stackId"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mStackId:I

    .line 520
    iput p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mUid:I

    .line 521
    iput-object p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    .line 522
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 526
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mStackId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 530
    .local v2, "stackId":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/HashMap;
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 533
    .local v3, "uid":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mUid:I

    if-ne v4, v3, :cond_0

    .line 534
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mDumpDebugLog:Z
    invoke-static {v4}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$900(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 535
    const-string v4, "ApplicationNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stack id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contains this package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", no need to disable network"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "stackId":I
    .end local v3    # "uid":I
    :cond_2
    :goto_0
    return-void

    .line 543
    :cond_3
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mUid:I

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V
    invoke-static {v4, v5}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    .line 544
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v5, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mUid:I

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NotePausingActivityRunnable;->mPausingPackage:Ljava/lang/String;

    const/4 v7, 0x0

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->setPendingControlRunnable(ILjava/lang/String;Z)V
    invoke-static {v4, v5, v6, v7}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1100(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Z)V

    goto :goto_0
.end method
