.class Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;
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
    .line 47
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->handleBootCompleted()V

    .line 51
    return-void
.end method
