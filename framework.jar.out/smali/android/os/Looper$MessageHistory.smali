.class Landroid/os/Looper$MessageHistory;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageHistory"
.end annotation


# instance fields
.field array:[Ljava/lang/String;

.field index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/Looper$MessageHistory;->array:[Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method addMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v0, p0, Landroid/os/Looper$MessageHistory;->array:[Ljava/lang/String;

    iget v1, p0, Landroid/os/Looper$MessageHistory;->index:I

    aput-object p1, v0, v1

    .line 363
    iget v0, p0, Landroid/os/Looper$MessageHistory;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/os/Looper$MessageHistory;->array:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/os/Looper$MessageHistory;->index:I

    .line 364
    monitor-exit p0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/os/Looper$MessageHistory;->array:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 375
    iget v2, p0, Landroid/os/Looper$MessageHistory;->index:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/os/Looper$MessageHistory;->array:[Ljava/lang/String;

    array-length v3, v3

    rem-int v1, v2, v3

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Message ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/Looper$MessageHistory;->array:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    monitor-exit p0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method size()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/os/Looper$MessageHistory;->array:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
