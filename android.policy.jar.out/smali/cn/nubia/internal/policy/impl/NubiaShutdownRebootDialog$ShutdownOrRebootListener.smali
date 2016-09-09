.class Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Lcn/nubia/internal/policy/impl/NubiaSlideView$OnShutDownRebootListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownOrRebootListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    .param p2, "x1"    # Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$1;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;-><init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V

    return-void
.end method


# virtual methods
.method public reboot()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCallbackAction:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$1500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;->rebooting()V

    .line 270
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$ShutdownOrRebootListener;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mCallbackAction:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$1500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$CallbackAction;->shutdowning()V

    .line 274
    return-void
.end method
