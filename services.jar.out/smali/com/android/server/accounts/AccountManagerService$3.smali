.class Lcom/android/server/accounts/AccountManagerService$3;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/ISmartShowContext$OnOpsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualInstanceAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 315
    return-void
.end method

.method public onDualInstanceConfigChanged(Ljava/lang/String;IIZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 322
    const/16 v0, 0x8

    if-ne v0, p3, :cond_0

    if-nez p4, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->removeAccountsForSecondInstance(Ljava/lang/String;I)V
    invoke-static {v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->access$300(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;I)V

    .line 325
    :cond_0
    return-void
.end method

.method public onDualInstanceRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->removeAccountsForSecondInstance(Ljava/lang/String;I)V
    invoke-static {v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->access$300(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;I)V

    .line 319
    return-void
.end method
