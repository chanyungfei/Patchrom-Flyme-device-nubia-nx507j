.class Lcom/android/internal/policy/impl/NubiaGlobalActions$3;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;->setAllClickListener()V
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
    .line 348
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    .line 352
    iget-object v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 353
    .local v3, "ringerMode":I
    if-eq v3, v7, :cond_0

    .line 354
    iget-object v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 361
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 362
    .local v4, "vibratorModeOn":I
    if-ne v4, v7, :cond_1

    .line 363
    iget-object v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 365
    .local v0, "currentRingVolume":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 367
    .local v1, "maxRingVolume":I
    mul-int/lit8 v5, v0, 0x64

    div-int v2, v5, v1

    .line 368
    .local v2, "powerVolume":I
    const-string v5, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSilentLayout onClick powerVolume is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v5, "persist.sys.power.volume"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v0    # "currentRingVolume":I
    .end local v1    # "maxRingVolume":I
    .end local v2    # "powerVolume":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/NubiaGlobalActions;->setRingerModeView()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    .line 377
    iget-object v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/internal/policy/impl/NubiaShutdownRebootDialog;->dismiss()V

    .line 378
    return-void

    .line 358
    .end local v4    # "vibratorModeOn":I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 373
    .restart local v4    # "vibratorModeOn":I
    :cond_1
    const-string v5, "GlobalActions"

    const-string v6, "mSilentLayout onClick silent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v5, "persist.sys.power.volume"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
