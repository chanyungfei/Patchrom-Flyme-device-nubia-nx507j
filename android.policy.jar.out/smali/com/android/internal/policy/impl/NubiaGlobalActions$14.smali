.class Lcom/android/internal/policy/impl/NubiaGlobalActions$14;
.super Landroid/os/Handler;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1170
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1172
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->dismiss()V

    goto :goto_0

    .line 1177
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/NubiaGlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$1800(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    .line 1178
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$1300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1181
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/NubiaGlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$1900(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    goto :goto_0

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
