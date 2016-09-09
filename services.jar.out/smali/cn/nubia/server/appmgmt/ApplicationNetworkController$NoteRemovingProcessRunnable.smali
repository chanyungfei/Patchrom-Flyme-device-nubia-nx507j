.class Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;
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
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mProcess:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationNetworkController;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 651
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput p2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mUid:I

    .line 653
    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    .line 654
    iput-object p4, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mProcess:Ljava/lang/String;

    .line 655
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "count":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 662
    add-int/lit8 v0, v0, -0x1

    .line 663
    if-nez v0, :cond_2

    .line 664
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessUids:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 672
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    iget v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mUid:I

    # invokes: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->cancelPendingControlRunnable(I)V
    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$700(Lcn/nubia/server/appmgmt/ApplicationNetworkController;I)V

    .line 673
    :cond_1
    return-void

    .line 667
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationNetworkController;

    # getter for: Lcn/nubia/server/appmgmt/ApplicationNetworkController;->mPackageProcessCounts:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationNetworkController;->access$1600(Lcn/nubia/server/appmgmt/ApplicationNetworkController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationNetworkController$NoteRemovingProcessRunnable;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
