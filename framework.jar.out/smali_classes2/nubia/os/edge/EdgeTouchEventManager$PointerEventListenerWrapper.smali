.class Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;
.super Lnubia/os/edge/IPointerEventListener$Stub;
.source "EdgeTouchEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/edge/EdgeTouchEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerEventListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/os/edge/EdgeTouchEventManager;


# direct methods
.method private constructor <init>(Lnubia/os/edge/EdgeTouchEventManager;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;->this$0:Lnubia/os/edge/EdgeTouchEventManager;

    invoke-direct {p0}, Lnubia/os/edge/IPointerEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/os/edge/EdgeTouchEventManager;Lnubia/os/edge/EdgeTouchEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/os/edge/EdgeTouchEventManager;
    .param p2, "x1"    # Lnubia/os/edge/EdgeTouchEventManager$1;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchEventManager;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager$PointerEventListenerWrapper;->this$0:Lnubia/os/edge/EdgeTouchEventManager;

    # invokes: Lnubia/os/edge/EdgeTouchEventManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lnubia/os/edge/EdgeTouchEventManager;->access$300(Lnubia/os/edge/EdgeTouchEventManager;Landroid/view/MotionEvent;)V

    .line 189
    return-void
.end method
