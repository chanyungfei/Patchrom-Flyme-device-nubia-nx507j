.class Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl$1;
.super Ljava/lang/Object;
.source "TouchHomeLightCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    # invokes: Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->isCurrentLightActivity()Z
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->access$000(Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    const-string v1, "com.ztemt.v5light.home_key_close_light"

    # invokes: Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->sendLightBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->access$100(Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    # invokes: Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->stopTimer()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->access$200(Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;)V

    .line 48
    return-void
.end method
