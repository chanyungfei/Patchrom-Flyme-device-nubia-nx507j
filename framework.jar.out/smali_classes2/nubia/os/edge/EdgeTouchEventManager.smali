.class public final Lnubia/os/edge/EdgeTouchEventManager;
.super Ljava/lang/Object;
.source "EdgeTouchEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/EdgeTouchEventManager$1;,
        Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;,
        Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EdgePointerEventManager"

.field private static sInstance:Lnubia/os/edge/EdgeTouchEventManager;


# instance fields
.field private mCommonListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnubia/os/edge/CommonTouchEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mCommonListenersArray:[Lnubia/os/edge/CommonTouchEventListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnubia/os/edge/EdgeTouchEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

.field private mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;

.field private mService:Lnubia/os/edge/IEdgePointerEventManager;

.field private mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lnubia/os/edge/EdgeTouchEventManager;

    invoke-direct {v0}, Lnubia/os/edge/EdgeTouchEventManager;-><init>()V

    sput-object v0, Lnubia/os/edge/EdgeTouchEventManager;->sInstance:Lnubia/os/edge/EdgeTouchEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    .line 38
    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    .line 41
    new-array v0, v1, [Lnubia/os/edge/EdgeTouchEventListener;

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    .line 44
    new-array v0, v1, [Lnubia/os/edge/CommonTouchEventListener;

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListenersArray:[Lnubia/os/edge/CommonTouchEventListener;

    .line 48
    :try_start_0
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    .line 50
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$200(Lnubia/os/edge/EdgeTouchEventManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/edge/EdgeTouchEventManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchEventManager;->dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lnubia/os/edge/EdgeTouchEventManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/edge/EdgeTouchEventManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchEventManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v3, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    if-nez v2, :cond_2

    .line 125
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lnubia/os/edge/EdgeTouchEventListener;

    iput-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 126
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    :cond_2
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 129
    .local v1, "listeners":[Lnubia/os/edge/EdgeTouchEventListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 131
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    .line 132
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lnubia/os/edge/EdgeTouchEventListener;->onEdgeTouchEvent(Landroid/view/MotionEvent;)V

    .line 130
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    .end local v1    # "listeners":[Lnubia/os/edge/EdgeTouchEventListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    return-void

    .line 142
    :cond_1
    iget-object v3, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 143
    :try_start_0
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListenersArray:[Lnubia/os/edge/CommonTouchEventListener;

    if-nez v2, :cond_2

    .line 144
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lnubia/os/edge/CommonTouchEventListener;

    iput-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListenersArray:[Lnubia/os/edge/CommonTouchEventListener;

    .line 145
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListenersArray:[Lnubia/os/edge/CommonTouchEventListener;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    :cond_2
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListenersArray:[Lnubia/os/edge/CommonTouchEventListener;

    .line 148
    .local v1, "listeners":[Lnubia/os/edge/CommonTouchEventListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 150
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    .line 151
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lnubia/os/edge/CommonTouchEventListener;->onCommonTouchEvent(Landroid/view/MotionEvent;)V

    .line 149
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    .end local v1    # "listeners":[Lnubia/os/edge/CommonTouchEventListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchEventManager;Lnubia/os/edge/EdgeTouchEventManager$1;)V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    .line 168
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    return-object v0
.end method

.method public static getInstance()Lnubia/os/edge/EdgeTouchEventManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lnubia/os/edge/EdgeTouchEventManager;->sInstance:Lnubia/os/edge/EdgeTouchEventManager;

    return-object v0
.end method

.method private getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchEventManager;Lnubia/os/edge/EdgeTouchEventManager$1;)V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;

    .line 175
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mPointerEventListenerWrapper:Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;

    return-object v0
.end method

.method private getService()Lnubia/os/edge/IEdgePointerEventManager;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "nubia.edge.touch"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    .line 161
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getEdgePointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    .line 60
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getPointerEventListenerWrapper()Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerCommonTouchEventListener(Lnubia/os/edge/CommonTouchEventListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/CommonTouchEventListener;

    .prologue
    .line 95
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListenersArray:[Lnubia/os/edge/CommonTouchEventListener;

    .line 103
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerEdgeTouchEventListener(Lnubia/os/edge/EdgeTouchEventListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/EdgeTouchEventListener;

    .prologue
    .line 71
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 79
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterCommonTouchEventListener(Lnubia/os/edge/CommonTouchEventListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/CommonTouchEventListener;

    .prologue
    .line 107
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mCommonListenersArray:[Lnubia/os/edge/CommonTouchEventListener;

    .line 115
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterEdgeTouchEventListener(Lnubia/os/edge/EdgeTouchEventListener;)V
    .locals 2
    .param p1, "listener"    # Lnubia/os/edge/EdgeTouchEventListener;

    .prologue
    .line 83
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 91
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
