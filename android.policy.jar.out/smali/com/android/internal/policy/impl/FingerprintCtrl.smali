.class public Lcom/android/internal/policy/impl/FingerprintCtrl;
.super Ljava/lang/Object;
.source "FingerprintCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;


# instance fields
.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p1, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/internal/policy/impl/FingerprintCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 11
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 16
    .local v0, "keyCode":I
    const/16 v1, 0x8d

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/internal/policy/impl/FingerprintCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->dispatch(Landroid/view/MotionEvent;)V

    .line 21
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method
