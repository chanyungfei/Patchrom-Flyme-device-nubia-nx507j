.class Lcom/android/server/am/NubiaSelfStartUtil$3;
.super Ljava/lang/Object;
.source "NubiaSelfStartUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaSelfStartUtil;->removeWidget(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaSelfStartUtil;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil$3;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    iput-object p2, p0, Lcom/android/server/am/NubiaSelfStartUtil$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/NubiaSelfStartUtil$3;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/server/am/NubiaSelfStartUtil$3;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    iget-object v2, p0, Lcom/android/server/am/NubiaSelfStartUtil$3;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/NubiaSelfStartUtil$3;->val$className:Ljava/lang/String;

    # invokes: Lcom/android/server/am/NubiaSelfStartUtil;->deleteWidgetFromDb(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2, v3}, Lcom/android/server/am/NubiaSelfStartUtil;->access$200(Lcom/android/server/am/NubiaSelfStartUtil;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 649
    .local v0, "result":I
    return-void
.end method
