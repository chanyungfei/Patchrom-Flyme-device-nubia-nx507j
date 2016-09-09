.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$HwuiContext;,
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field private mHwuiContext:Landroid/view/Surface$HwuiContext;

.field final mLock:Ljava/lang/Object;

.field private mLockedObject:J

.field private mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 130
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeObject"    # J

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 156
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/view/Surface;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(JJ)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nHwuiCreate(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 41
    invoke-static {p0, p1}, Landroid/view/Surface;->nHwuiDraw(J)V

    return-void
.end method

.method static synthetic access$400(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nHwuiSetSurface(JJ)V

    return-void
.end method

.method static synthetic access$500(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 41
    invoke-static {p0, p1}, Landroid/view/Surface;->nHwuiDestroy(J)V

    return-void
.end method

.method private checkNotReleasedLocked()V
    .locals 4

    .prologue
    .line 488
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    return-void
.end method

.method private static native nHwuiCreate(JJ)J
.end method

.method private static native nHwuiDestroy(J)V
.end method

.method private static native nHwuiDraw(J)V
.end method

.method private static native nHwuiSetSurface(JJ)V
.end method

.method private static native nativeAllocateBuffers(J)V
.end method

.method private static native nativeCreateFromSurfaceControl(J)J
.end method

.method private static native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeIsConsumerRunningBehind(J)Z
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeSetDirtyRect(JLandroid/graphics/Rect;)V
.end method

.method private static native nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static rotationToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "rotation"    # I

    .prologue
    .line 536
    packed-switch p0, :pswitch_data_0

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :pswitch_0
    const-string v0, "ROTATION_0"

    .line 547
    :goto_0
    return-object v0

    .line 541
    :pswitch_1
    const-string v0, "ROATATION_90"

    goto :goto_0

    .line 544
    :pswitch_2
    const-string v0, "ROATATION_180"

    goto :goto_0

    .line 547
    :pswitch_3
    const-string v0, "ROATATION_270"

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNativeObjectLocked(J)V
    .locals 5
    .param p1, "ptr"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 473
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 474
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 479
    :cond_0
    :goto_0
    iput-wide p1, p0, Landroid/view/Surface;->mNativeObject:J

    .line 480
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/Surface;->mGenerationId:I

    .line 481
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->updateSurface()V

    .line 485
    :cond_1
    return-void

    .line 476
    :cond_2
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method private unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0x0

    .line 303
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-eq p1, v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 308
    const-string v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") != mLockedObject (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    :try_start_0
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1}, Landroid/view/Surface;->nativeRelease(J)V

    .line 319
    iput-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    .line 321
    return-void

    .line 318
    :catchall_0
    move-exception v0

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    .line 319
    iput-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    throw v0
.end method


# virtual methods
.method public allocateBuffers()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x8

    .line 499
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "Surface.allocateBuffers"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 503
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 505
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeAllocateBuffers(J)V

    .line 506
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 512
    :cond_1
    return-void

    .line 506
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public copyFrom(Landroid/view/SurfaceControl;)V
    .locals 10
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .prologue
    const-wide/16 v8, 0x0

    .line 384
    if-nez p1, :cond_0

    .line 385
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "other must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_0
    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 389
    .local v2, "surfaceControlPtr":J
    cmp-long v4, v2, v8

    if-nez v4, :cond_1

    .line 390
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "SurfaceControl native object is null. Are you using a released SurfaceControl?"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :cond_1
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(J)J

    move-result-wide v0

    .line 395
    .local v0, "newNativeObject":J
    iget-object v5, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 396
    :try_start_0
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    .line 397
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v6, v7}, Landroid/view/Surface;->nativeRelease(J)V

    .line 399
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 400
    monitor-exit v5

    .line 401
    return-void

    .line 400
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 209
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGenerationId()I
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    monitor-exit v1

    return v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConsumerRunningBehind()Z
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 246
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    .line 218
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 220
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeIsValid(J)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 6
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 272
    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was already locked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 279
    :cond_0
    :try_start_1
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/view/Surface;->nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    .line 280
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 6

    .prologue
    .line 343
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 345
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Landroid/view/Surface$HwuiContext;

    invoke-direct {v0, p0}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 348
    :cond_0
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 446
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 447
    monitor-exit v1

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 189
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 191
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    .line 192
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 194
    :cond_0
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 198
    :cond_1
    monitor-exit v1

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2
    .param p1, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 369
    .local v0, "appScale":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 370
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 372
    .end local v0    # "appScale":F
    :cond_0
    return-void
.end method

.method public setDirtyRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 178
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 179
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeSetDirtyRect(JLandroid/graphics/Rect;)V

    .line 181
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface(name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")/@0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .locals 8
    .param p1, "other"    # Landroid/view/Surface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 411
    if-nez p1, :cond_0

    .line 412
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "other must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_0
    if-eq p1, p0, :cond_2

    .line 416
    iget-object v3, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 417
    :try_start_0
    iget-wide v0, p1, Landroid/view/Surface;->mNativeObject:J

    .line 418
    .local v0, "newPtr":J
    const-wide/16 v4, 0x0

    invoke-direct {p1, v4, v5}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 419
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object v3, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 422
    :try_start_1
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 423
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeRelease(J)V

    .line 425
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 426
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 428
    .end local v0    # "newPtr":J
    :cond_2
    return-void

    .line 419
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 426
    .restart local v0    # "newPtr":J
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 291
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 294
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0, p1}, Landroid/view/Surface$HwuiContext;->unlockAndPost(Landroid/graphics/Canvas;)V

    .line 299
    :goto_0
    monitor-exit v1

    .line 300
    return-void

    .line 297
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/Surface;->unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 452
    if-nez p1, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 458
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 462
    :cond_1
    return-void

    .line 458
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
