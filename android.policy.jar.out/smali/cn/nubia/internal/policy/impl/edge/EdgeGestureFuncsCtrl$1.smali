.class Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;
.super Ljava/lang/Object;
.source "EdgeGestureFuncsCtrl.java"

# interfaces
.implements Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 73
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    # getter for: Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->access$000(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;)Lcn/nubia/edgegesture/EdgeGestureManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/nubia/edgegesture/EdgeGestureManager;->updateSettings(Ljava/util/Map;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "key":Ljava/lang/String;
    const-string v1, "nubia_edge_left_move_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "nubia_edge_right_move_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "nubia_edge_move_loop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    # getter for: Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->access$000(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;)Lcn/nubia/edgegesture/EdgeGestureManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/nubia/edgegesture/EdgeGestureManager;->updateSettings(Ljava/util/Map;)V

    goto :goto_0
.end method
