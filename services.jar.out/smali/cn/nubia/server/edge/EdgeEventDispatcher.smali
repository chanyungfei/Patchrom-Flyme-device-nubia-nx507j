.class public abstract Lcn/nubia/server/edge/EdgeEventDispatcher;
.super Landroid/view/InputEventReceiver;
.source "EdgeEventDispatcher.java"


# static fields
.field private static final ACTION_SCREEN_SAVER_SHOW:Ljava/lang/String; = "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isScreenSaverShow:Z

.field private mContext:Landroid/content/Context;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mListenersArray:[Ljava/lang/Object;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/InputChannel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 31
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 21
    const-string v1, "EdgeEventDispatcher"

    iput-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->TAG:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 25
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenersArray:[Ljava/lang/Object;

    .line 117
    new-instance v1, Lcn/nubia/server/edge/EdgeEventDispatcher$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/edge/EdgeEventDispatcher$1;-><init>(Lcn/nubia/server/edge/EdgeEventDispatcher;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/edge/EdgeEventDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/edge/EdgeEventDispatcher;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->isScreenSaverShow:Z

    return p1
.end method

.method private notifyAndRemoveDeadListener(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    iget-object v7, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 60
    :try_start_0
    iget-object v6, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenersArray:[Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 61
    iget-object v6, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenersArray:[Ljava/lang/Object;

    .line 62
    iget-object v6, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    iget-object v8, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenersArray:[Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenersArray:[Ljava/lang/Object;

    .line 65
    .local v4, "listeners":[Ljava/lang/Object;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "deadObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 69
    :try_start_1
    aget-object v6, v4, v2

    if-eqz v6, :cond_1

    .line 70
    aget-object v6, v4, v2

    invoke-virtual {p0, p1, v6}, Lcn/nubia/server/edge/EdgeEventDispatcher;->notifyListener(Landroid/view/MotionEvent;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "deadObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "i":I
    .end local v4    # "listeners":[Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 72
    .restart local v0    # "deadObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2    # "i":I
    .restart local v4    # "listeners":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/os/DeadObjectException;
    aget-object v6, v4, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_2
    iget-object v7, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 78
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 79
    .local v5, "o":Ljava/lang/Object;
    iget-object v6, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "o":Ljava/lang/Object;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 81
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 82
    const/4 v6, 0x0

    iput-object v6, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenersArray:[Ljava/lang/Object;

    .line 84
    :cond_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    return-void

    .line 74
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method protected abstract notifyListener(Landroid/view/MotionEvent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v3, 0x0

    .line 42
    :try_start_0
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 44
    iget-boolean v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->isScreenSaverShow:Z

    if-nez v2, :cond_0

    .line 45
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v1, v0

    .line 46
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v1}, Lcn/nubia/server/edge/EdgeEventDispatcher;->notifyAndRemoveDeadListener(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcn/nubia/server/edge/EdgeEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 52
    return-void

    .line 50
    :catchall_0
    move-exception v2

    invoke-virtual {p0, p1, v3}, Lcn/nubia/server/edge/EdgeEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v2
.end method

.method public registerEventListener(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 95
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenersArray:[Ljava/lang/Object;

    .line 99
    :cond_0
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterEventListener(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 109
    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenersArray:[Ljava/lang/Object;

    .line 114
    :cond_0
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
