.class Lcom/android/server/am/NubiaSelfStartUtil$1;
.super Landroid/database/ContentObserver;
.source "NubiaSelfStartUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaSelfStartUtil;->registerSelfStartObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaSelfStartUtil;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil$1;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil$1;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    # invokes: Lcom/android/server/am/NubiaSelfStartUtil;->setWhiteListPkgNames()V
    invoke-static {v0}, Lcom/android/server/am/NubiaSelfStartUtil;->access$000(Lcom/android/server/am/NubiaSelfStartUtil;)V

    .line 101
    return-void
.end method
