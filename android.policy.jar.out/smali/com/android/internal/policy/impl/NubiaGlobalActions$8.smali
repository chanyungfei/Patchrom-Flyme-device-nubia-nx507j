.class Lcom/android/internal/policy/impl/NubiaGlobalActions$8;
.super Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;->createDialog()Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/NubiaGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 530
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$400(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 532
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040114

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 534
    const v2, 0x1040115

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 536
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 538
    const v2, 0x10404a0

    new-instance v3, Lcom/android/internal/policy/impl/NubiaGlobalActions$8$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$8$1;-><init>(Lcom/android/internal/policy/impl/NubiaGlobalActions$8;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 563
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 565
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 566
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x1

    return v0
.end method
