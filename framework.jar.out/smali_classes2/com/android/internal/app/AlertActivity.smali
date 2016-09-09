.class public abstract Lcom/android/internal/app/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mNubiaDialog:Lnubia/widget/IDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 73
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 100
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 104
    const-class v3, Landroid/app/Dialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 108
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 110
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 112
    return v2

    .end local v0    # "isFullScreen":Z
    :cond_0
    move v0, v2

    .line 108
    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 90
    const/4 v0, 0x0

    const v1, 0x3040016

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/AlertActivity;->overridePendingTransition(II)V

    .line 91
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/widget/IDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 64
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 66
    invoke-static {p0}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/widget/NubiaDialog;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaDialog;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 69
    return-void

    .line 66
    :cond_0
    new-instance v0, Lnubia/widget/ProtoDialog;

    invoke-direct {v0, p0}, Lnubia/widget/ProtoDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnubia/widget/IDialog;->setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V

    .line 85
    return-void
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 125
    return-void
.end method
