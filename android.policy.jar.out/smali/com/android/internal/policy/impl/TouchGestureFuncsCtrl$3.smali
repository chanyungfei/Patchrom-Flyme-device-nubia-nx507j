.class Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$3;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$3;->this$0:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$3;->this$0:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    # getter for: Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->access$500(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshotProxy()V

    .line 200
    return-void
.end method
