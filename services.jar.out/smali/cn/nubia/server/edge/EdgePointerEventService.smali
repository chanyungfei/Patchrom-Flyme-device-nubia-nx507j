.class public Lcn/nubia/server/edge/EdgePointerEventService;
.super Lnubia/os/edge/IEdgePointerEventManager$Stub;
.source "EdgePointerEventService.java"


# static fields
.field private static final CZONE_COMPONENT:Ljava/lang/String; = "cn.nubia.edge/cn.nubia.edge.instruct.InstructActivity"

.field private static final ENABLE_CZONE:Ljava/lang/String; = "nubia_edge_enable_czone"

.field private static final TAG:Ljava/lang/String; = "EdgePointerEventService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mLastEnableFitState:I

.field private mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "input"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 41
    invoke-direct {p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;-><init>()V

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mLastEnableFitState:I

    .line 42
    iput-object p1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 44
    iput-object p3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 45
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "ro.nubia.edge.channel"

    const-string v2, "nubia_edge"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "channelName":Ljava/lang/String;
    new-instance v1, Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;-><init>(Landroid/content/Context;Landroid/view/InputChannel;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    .line 49
    new-instance v1, Lcn/nubia/server/edge/PointerEventDispatcher;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v4, "EdgePointer"

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/edge/PointerEventDispatcher;-><init>(Landroid/content/Context;Landroid/view/InputChannel;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    .line 52
    .end local v0    # "channelName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private enableFitTZoneAccordingTopActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/util/Pair;

    const/4 v4, 0x0

    new-instance v5, Landroid/util/Pair;

    const-string v6, "cn.nubia.contacts"

    const-string v7, "cn.nubia.contacts.mainlist.PeopleActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v4

    .line 99
    .local v0, "disableFitActivities":[Landroid/util/Pair;, "[Landroid/util/Pair<**>;"
    const/4 v1, 0x1

    .line 100
    .local v1, "enable":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 101
    aget-object v3, v0, v2

    .line 102
    .local v3, "item":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    const-string v4, "EdgePointerEventService"

    const-string v5, "Disable fit according top activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x0

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v3    # "item":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    :cond_3
    iget v4, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mLastEnableFitState:I

    if-eq v4, v1, :cond_4

    .line 109
    iput v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mLastEnableFitState:I

    .line 110
    const-string v4, "persist.sys.edgetp.tzone"

    iget v5, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mLastEnableFitState:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_4
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/edge/EdgePointerEventService;->setCZoneConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCZoneConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v2, "cn.nubia.edge/cn.nubia.edge.instruct.InstructActivity"

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 121
    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_edge_enable_czone"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "enableCZone":I
    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v4

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v1, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 125
    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_edge_enable_czone"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 126
    :cond_2
    if-eqz v0, :cond_0

    .line 127
    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_edge_enable_czone"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onTopActivityChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/edge/EdgePointerEventService;->enableFitTZoneAccordingTopActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .prologue
    .line 57
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->registerEventListener(Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method public registerPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IPointerEventListener;

    .prologue
    .line 73
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/PointerEventDispatcher;->registerEventListener(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .prologue
    .line 65
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->unregisterEventListener(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public unregisterPointerEventListener(Lnubia/os/edge/IPointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IPointerEventListener;

    .prologue
    .line 81
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mPointerEventDispatcher:Lcn/nubia/server/edge/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/PointerEventDispatcher;->unregisterEventListener(Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method
