.class Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$4;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # invokes: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->isCanInterrupt()Z
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$1100(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$4;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->dismiss()V

    .line 177
    :cond_0
    return-void
.end method
