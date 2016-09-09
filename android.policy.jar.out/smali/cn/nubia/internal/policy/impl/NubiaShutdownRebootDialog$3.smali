.class Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$3;
.super Ljava/lang/Object;
.source "NubiaShutdownRebootDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->show()V
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
    .line 137
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mShutDownView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$500(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->startEnterIntoAnimator(I)V

    .line 142
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # getter for: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->mRebootView:Lcn/nubia/internal/policy/impl/NubiaSlideView;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$400(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)Lcn/nubia/internal/policy/impl/NubiaSlideView;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/NubiaSlideView;->startEnterIntoAnimator(I)V

    .line 143
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog$3;->this$0:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    # invokes: Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->startEnterAnimator()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->access$900(Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method
