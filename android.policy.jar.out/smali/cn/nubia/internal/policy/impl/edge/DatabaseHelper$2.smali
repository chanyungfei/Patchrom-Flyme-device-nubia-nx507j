.class Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$2;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 61
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 62
    const-string v1, "package"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cn.nubia.edge"

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$2;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;-><init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :cond_0
    return-void
.end method
