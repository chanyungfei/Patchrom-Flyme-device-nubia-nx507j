.class final Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayHandle"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

.field private final mDismissQuickRunnable:Ljava/lang/Runnable;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mGravity:I

.field private mHeight:I

.field private final mLeftOrRight:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mWidth:I

.field private mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

.field private final mX:I

.field private final mY:I

.field private final rate:D

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Ljava/lang/String;IIIIIILjava/lang/String;D)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "gravity"    # I
    .param p9, "leftOrRight"    # Ljava/lang/String;
    .param p10, "rate"    # D

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    .line 422
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    .line 440
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle$3;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissQuickRunnable:Ljava/lang/Runnable;

    .line 313
    iput-object p2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 314
    iput p3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mX:I

    .line 315
    iput p4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mY:I

    .line 316
    iput p5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    .line 317
    iput p6, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    .line 318
    iput p7, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    .line 319
    iput p8, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 320
    iput-object p9, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mLeftOrRight:Ljava/lang/String;

    .line 321
    iput-wide p10, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    .line 323
    # getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mLeftOrRight:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    .param p1, "x1"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mY:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 295
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    return v0
.end method


# virtual methods
.method public dismissLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_close_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, "exitMode":I
    if-nez v0, :cond_0

    .line 332
    const-string v1, "nubiaOverlayDisplayAdapter"

    const-string v2, "single ui exit usually"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_close_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    const-string v1, "nubiaOverlayDisplayAdapter"

    const-string v2, "single ui exit without animation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDismissQuickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDensityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    if-eqz v1, :cond_0

    .line 399
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 401
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 402
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    const-wide/16 v4, 0xc8

    invoke-static {v1, v2, v0, v4, v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;J)V

    .line 404
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    return-void
.end method

.method public onOrientationChanged()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onSetRotated(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    # setter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z
    invoke-static {v0, p1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$102(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Z)Z

    .line 388
    return-void
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;F)V
    .locals 10
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "refreshRate"    # F

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v9

    monitor-enter v9

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 353
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    iget v7, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    move v6, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILandroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    .line 355
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 357
    monitor-exit v9

    .line 358
    return-void

    .line 357
    .end local v2    # "displayToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowDestroyed()V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->destroyLocked()V

    .line 366
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 369
    :cond_0
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowSizeChanged(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 377
    int-to-double v2, p1

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    mul-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    .line 378
    int-to-double v2, p2

    iget-wide v4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->rate:D

    mul-double/2addr v2, v4

    double-to-int p2, v2

    iput p2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
