.class Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 6

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .line 1014
    const v1, 0x1080322

    const v2, 0x1080321

    const v3, 0x1040117

    const v4, 0x1040118

    const v5, 0x1040119

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1018
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1021
    if-eqz p1, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1026
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x1

    return v0
.end method
