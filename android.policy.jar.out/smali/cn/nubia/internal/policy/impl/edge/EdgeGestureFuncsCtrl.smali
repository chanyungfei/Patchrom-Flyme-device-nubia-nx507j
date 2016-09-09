.class public Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;
.super Ljava/lang/Object;
.source "EdgeGestureFuncsCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeGestureFuncsCtrl"


# instance fields
.field private mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

.field private mDoubleClickCtrl:Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;

.field private mDoubleSideCtrl:Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

.field private mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

.field private mHoldAndHoldCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

.field private mHoldCornerCtrl:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

.field private mLoopSideCtrl:Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSingleSideCtrl:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    .line 41
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 43
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/edgegesture/EdgeGestureManager;->getDefaultManager(Landroid/content/Context;)Lcn/nubia/edgegesture/EdgeGestureManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    .line 45
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSingleSideCtrl:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    .line 46
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mDoubleSideCtrl:Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

    .line 47
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mHoldAndHoldCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

    .line 48
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mHoldCornerCtrl:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .line 49
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mLoopSideCtrl:Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

    .line 50
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mDoubleClickCtrl:Lcn/nubia/internal/policy/impl/edge/DoubleClickCtrl;

    .line 52
    invoke-static {p1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mDatabaseHelper:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .line 53
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mDatabaseHelper:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->setChangeListener(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;)Lcn/nubia/edgegesture/EdgeGestureManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    return-object v0
.end method


# virtual methods
.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/edgegesture/EdgeGestureManager;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    :try_start_0
    const-string v1, "nubia.edge.touch"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    .line 62
    .local v0, "edgeService":Lnubia/os/edge/IEdgePointerEventManager;
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1, p2}, Lnubia/os/edge/IEdgePointerEventManager;->onTopActivityChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "edgeService":Lnubia/os/edge/IEdgePointerEventManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
