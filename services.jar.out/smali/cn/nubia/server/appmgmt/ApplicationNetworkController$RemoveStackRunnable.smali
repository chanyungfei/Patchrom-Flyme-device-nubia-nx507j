.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;
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
    name = "RemoveStackRunnable"
.end annotation


# instance fields
.field private mStackId:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V
    .locals 0
    .param p2, "stackId"    # I

    .prologue
    .line 551
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;->mStackId:I

    .line 553
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$500(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mResumedPackageUids:Ljava/util/HashMap;
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$RemoveStackRunnable;->mStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
