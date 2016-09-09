.class Landroid/media/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/BlobCache$LookupRequest;
    }
.end annotation


# static fields
.field private static final BH_CHECKSUM:I = 0x8

.field private static final BH_KEY:I = 0x0

.field private static final BH_LENGTH:I = 0x10

.field private static final BH_OFFSET:I = 0xc

.field private static final BLOB_HEADER_SIZE:I = 0x14

.field private static final DATA_HEADER_SIZE:I = 0x4

.field private static final IH_ACTIVE_BYTES:I = 0x14

.field private static final IH_ACTIVE_ENTRIES:I = 0x10

.field private static final IH_ACTIVE_REGION:I = 0xc

.field private static final IH_CHECKSUM:I = 0x1c

.field private static final IH_MAGIC:I = 0x0

.field private static final IH_MAX_BYTES:I = 0x8

.field private static final IH_MAX_ENTRIES:I = 0x4

.field private static final IH_VERSION:I = 0x18

.field private static final INDEX_HEADER_SIZE:I = 0x20

.field private static final MAGIC_DATA_FILE:I = -0x42db7af0

.field private static final MAGIC_INDEX_FILE:I = -0x4cd8cfd0

.field private static final TAG:Ljava/lang/String; = "BlobCache"


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Landroid/media/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxEntries"    # I
    .param p3, "maxBytes"    # I
    .param p4, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxEntries"    # I
    .param p3, "maxBytes"    # I
    .param p4, "reset"    # Z
    .param p5, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    .line 124
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/BlobCache;->mBlobHeader:[B

    .line 125
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Landroid/media/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 421
    new-instance v0, Landroid/media/BlobCache$LookupRequest;

    invoke-direct {v0}, Landroid/media/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Landroid/media/BlobCache;->mLookupRequest:Landroid/media/BlobCache$LookupRequest;

    .line 140
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 141
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 142
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 143
    iput p5, p0, Landroid/media/BlobCache;->mVersion:I

    .line 145
    if-nez p4, :cond_1

    invoke-direct {p0}, Landroid/media/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/media/BlobCache;->resetCache(II)V

    .line 151
    invoke-direct {p0}, Landroid/media/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Landroid/media/BlobCache;->closeAll()V

    .line 153
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .locals 6
    .param p1, "hashStart"    # I

    .prologue
    const/16 v5, 0x400

    .line 362
    new-array v2, v5, [B

    .line 363
    .local v2, "zero":[B
    iget-object v3, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 364
    iget v3, p0, Landroid/media/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    .line 365
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 366
    .local v1, "todo":I
    iget-object v3, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 367
    sub-int/2addr v0, v1

    .line 368
    goto :goto_0

    .line 369
    .end local v1    # "todo":I
    :cond_0
    return-void
.end method

.method private closeAll()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Landroid/media/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 193
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Landroid/media/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 194
    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Landroid/media/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 195
    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Landroid/media/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 196
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 629
    if-nez p0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 631
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 177
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget v0, p0, Landroid/media/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/BlobCache;->mActiveRegion:I

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/BlobCache;->mActiveEntries:I

    .line 340
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/BlobCache;->mActiveBytes:I

    .line 342
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Landroid/media/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 343
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Landroid/media/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 344
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Landroid/media/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 345
    invoke-direct {p0}, Landroid/media/BlobCache;->updateIndexHeader()V

    .line 347
    invoke-direct {p0}, Landroid/media/BlobCache;->setActiveVariables()V

    .line 348
    iget v0, p0, Landroid/media/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Landroid/media/BlobCache;->clearHash(I)V

    .line 349
    invoke-virtual {p0}, Landroid/media/BlobCache;->syncIndex()V

    .line 350
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILandroid/media/BlobCache$LookupRequest;)Z
    .locals 15
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "offset"    # I
    .param p3, "req"    # Landroid/media/BlobCache$LookupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v6, p0, Landroid/media/BlobCache;->mBlobHeader:[B

    .line 491
    .local v6, "header":[B
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    .line 493
    .local v8, "oldPosition":J
    move/from16 v0, p2

    int-to-long v12, v0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 494
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v12

    const/16 v13, 0x14

    if-eq v12, v13, :cond_0

    .line 495
    const-string v12, "BlobCache"

    const-string v13, "cannot read blob header"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    const/4 v12, 0x0

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return v12

    .line 498
    :cond_0
    const/4 v12, 0x0

    :try_start_1
    invoke-static {v6, v12}, Landroid/media/BlobCache;->readLong([BI)J

    move-result-wide v4

    .line 499
    .local v4, "blobKey":J
    move-object/from16 v0, p3

    iget-wide v12, v0, Landroid/media/BlobCache$LookupRequest;->key:J

    cmp-long v12, v4, v12

    if-eqz v12, :cond_1

    .line 500
    const-string v12, "BlobCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blob key does not match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    const/4 v12, 0x0

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 503
    :cond_1
    const/16 v12, 0x8

    :try_start_2
    invoke-static {v6, v12}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v10

    .line 504
    .local v10, "sum":I
    const/16 v12, 0xc

    invoke-static {v6, v12}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v3

    .line 505
    .local v3, "blobOffset":I
    move/from16 v0, p2

    if-eq v3, v0, :cond_2

    .line 506
    const-string v12, "BlobCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blob offset does not match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    const/4 v12, 0x0

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 509
    :cond_2
    const/16 v12, 0x10

    :try_start_3
    invoke-static {v6, v12}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v7

    .line 510
    .local v7, "length":I
    if-ltz v7, :cond_3

    iget v12, p0, Landroid/media/BlobCache;->mMaxBytes:I

    sub-int v12, v12, p2

    add-int/lit8 v12, v12, -0x14

    if-le v7, v12, :cond_4

    .line 511
    :cond_3
    const-string v12, "BlobCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid blob length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 512
    const/4 v12, 0x0

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 514
    :cond_4
    :try_start_4
    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    if-eqz v12, :cond_5

    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    array-length v12, v12

    if-ge v12, v7, :cond_6

    .line 515
    :cond_5
    new-array v12, v7, [B

    move-object/from16 v0, p3

    iput-object v12, v0, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    .line 518
    :cond_6
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    .line 519
    .local v2, "blob":[B
    move-object/from16 v0, p3

    iput v7, v0, Landroid/media/BlobCache$LookupRequest;->length:I

    .line 521
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v12

    if-eq v12, v7, :cond_7

    .line 522
    const-string v12, "BlobCache"

    const-string v13, "cannot read blob data"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 523
    const/4 v12, 0x0

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 525
    :cond_7
    const/4 v12, 0x0

    :try_start_5
    invoke-virtual {p0, v2, v12, v7}, Landroid/media/BlobCache;->checkSum([BII)I

    move-result v12

    if-eq v12, v10, :cond_8

    .line 526
    const-string v12, "BlobCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blob checksum does not match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 527
    const/4 v12, 0x0

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 529
    :cond_8
    const/4 v12, 0x1

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 530
    .end local v2    # "blob":[B
    .end local v3    # "blobOffset":I
    .end local v4    # "blobKey":J
    .end local v7    # "length":I
    .end local v10    # "sum":I
    :catch_0
    move-exception v11

    .line 531
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_6
    const-string v12, "BlobCache"

    const-string v13, "getBlob failed."

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 532
    const/4 v12, 0x0

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v12
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .param p1, "key"    # J
    .param p3, "data"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v0, p0, Landroid/media/BlobCache;->mBlobHeader:[B

    .line 399
    .local v0, "header":[B
    invoke-virtual {p0, p3}, Landroid/media/BlobCache;->checkSum([B)I

    move-result v1

    .line 400
    .local v1, "sum":I
    invoke-static {v0, v4, p1, p2}, Landroid/media/BlobCache;->writeLong([BIJ)V

    .line 401
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 402
    const/16 v2, 0xc

    iget v3, p0, Landroid/media/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 403
    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 404
    iget-object v2, p0, Landroid/media/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 405
    iget-object v2, p0, Landroid/media/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 407
    iget-object v2, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Landroid/media/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 408
    iget-object v2, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Landroid/media/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Landroid/media/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 409
    iget v2, p0, Landroid/media/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Landroid/media/BlobCache;->mActiveBytes:I

    .line 410
    iget-object v2, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Landroid/media/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 411
    return-void
.end method

.method private loadIndex()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v10, 0x0

    .line 202
    :try_start_0
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 203
    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 204
    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 206
    iget-object v6, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    .line 207
    .local v6, "buf":[B
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 208
    const-string v0, "BlobCache"

    const-string v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 290
    .end local v6    # "buf":[B
    :goto_0
    return v0

    .line 212
    .restart local v6    # "buf":[B
    :cond_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_1

    .line 213
    const-string v0, "BlobCache"

    const-string v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 214
    goto :goto_0

    .line 217
    :cond_1
    const/16 v0, 0x18

    invoke-static {v6, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Landroid/media/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_2

    .line 218
    const-string v0, "BlobCache"

    const-string/jumbo v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 219
    goto :goto_0

    .line 222
    :cond_2
    const/4 v0, 0x4

    invoke-static {v6, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Landroid/media/BlobCache;->mMaxEntries:I

    .line 223
    const/16 v0, 0x8

    invoke-static {v6, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Landroid/media/BlobCache;->mMaxBytes:I

    .line 224
    const/16 v0, 0xc

    invoke-static {v6, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Landroid/media/BlobCache;->mActiveRegion:I

    .line 225
    const/16 v0, 0x10

    invoke-static {v6, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Landroid/media/BlobCache;->mActiveEntries:I

    .line 226
    const/16 v0, 0x14

    invoke-static {v6, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Landroid/media/BlobCache;->mActiveBytes:I

    .line 228
    const/16 v0, 0x1c

    invoke-static {v6, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v9

    .line 229
    .local v9, "sum":I
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-virtual {p0, v6, v0, v1}, Landroid/media/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 230
    const-string v0, "BlobCache"

    const-string v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 231
    goto :goto_0

    .line 235
    :cond_3
    iget v0, p0, Landroid/media/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    .line 236
    const-string v0, "BlobCache"

    const-string v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 237
    goto :goto_0

    .line 239
    :cond_4
    iget v0, p0, Landroid/media/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    .line 240
    const-string v0, "BlobCache"

    const-string v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 241
    goto :goto_0

    .line 243
    :cond_5
    iget v0, p0, Landroid/media/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/media/BlobCache;->mActiveRegion:I

    if-eq v0, v11, :cond_6

    .line 244
    const-string v0, "BlobCache"

    const-string v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_6
    iget v0, p0, Landroid/media/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/media/BlobCache;->mActiveEntries:I

    iget v1, p0, Landroid/media/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    .line 248
    :cond_7
    const-string v0, "BlobCache"

    const-string v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 249
    goto/16 :goto_0

    .line 251
    :cond_8
    iget v0, p0, Landroid/media/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Landroid/media/BlobCache;->mActiveBytes:I

    iget v1, p0, Landroid/media/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    .line 252
    :cond_9
    const-string v0, "BlobCache"

    const-string v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 253
    goto/16 :goto_0

    .line 255
    :cond_a
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Landroid/media/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 257
    const-string v0, "BlobCache"

    const-string v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 258
    goto/16 :goto_0

    .line 262
    :cond_b
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 263
    .local v8, "magic":[B
    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 264
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_c
    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 268
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 269
    goto/16 :goto_0

    .line 271
    :cond_d
    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 272
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 273
    goto/16 :goto_0

    .line 275
    :cond_e
    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroid/media/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 276
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 277
    goto/16 :goto_0

    .line 281
    :cond_f
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 282
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 284
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 286
    invoke-direct {p0}, Landroid/media/BlobCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 287
    goto/16 :goto_0

    .line 288
    .end local v6    # "buf":[B
    .end local v8    # "magic":[B
    .end local v9    # "sum":I
    :catch_0
    move-exception v7

    .line 289
    .local v7, "ex":Ljava/io/IOException;
    const-string v0, "BlobCache"

    const-string v1, "loadIndex failed."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 290
    goto/16 :goto_0
.end method

.method private lookupInternal(JI)Z
    .locals 11
    .param p1, "key"    # J
    .param p3, "hashStart"    # I

    .prologue
    const/4 v6, 0x0

    .line 548
    iget v7, p0, Landroid/media/BlobCache;->mMaxEntries:I

    int-to-long v8, v7

    rem-long v8, p1, v8

    long-to-int v4, v8

    .line 549
    .local v4, "slot":I
    if-gez v4, :cond_0

    iget v7, p0, Landroid/media/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v7

    .line 550
    :cond_0
    move v5, v4

    .line 552
    .local v5, "slotBegin":I
    :cond_1
    :goto_0
    mul-int/lit8 v7, v4, 0xc

    add-int v3, p3, v7

    .line 553
    .local v3, "offset":I
    iget-object v7, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 554
    .local v0, "candidateKey":J
    iget-object v7, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 555
    .local v2, "candidateOffset":I
    if-nez v2, :cond_2

    .line 556
    iput v3, p0, Landroid/media/BlobCache;->mSlotOffset:I

    .line 561
    :goto_1
    return v6

    .line 558
    :cond_2
    cmp-long v7, v0, p1

    if-nez v7, :cond_3

    .line 559
    iput v3, p0, Landroid/media/BlobCache;->mSlotOffset:I

    .line 560
    iput v2, p0, Landroid/media/BlobCache;->mFileOffset:I

    .line 561
    const/4 v6, 0x1

    goto :goto_1

    .line 563
    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Landroid/media/BlobCache;->mMaxEntries:I

    if-lt v4, v7, :cond_4

    .line 564
    const/4 v4, 0x0

    .line 566
    :cond_4
    if-ne v4, v5, :cond_1

    .line 567
    const-string v7, "BlobCache"

    const-string v8, "corrupted index: clear the slot."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v7, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v4, 0xc

    add-int/2addr v8, p3

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 638
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 645
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    .line 646
    .local v2, "result":J
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 647
    const/16 v1, 0x8

    shl-long v4, v2, v1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    .line 646
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 649
    :cond_0
    return-wide v2
.end method

.method private resetCache(II)V
    .locals 9
    .param p1, "maxEntries"    # I
    .param p2, "maxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 311
    iget-object v1, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 312
    iget-object v1, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p1, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 313
    iget-object v1, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 314
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    .line 315
    .local v0, "buf":[B
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 316
    invoke-static {v0, v5, p1}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 317
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 318
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 319
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 320
    const/16 v1, 0x14

    invoke-static {v0, v1, v5}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 321
    const/16 v1, 0x18

    iget v2, p0, Landroid/media/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 322
    invoke-virtual {p0, v0, v4, v8}, Landroid/media/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 323
    iget-object v1, p0, Landroid/media/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 327
    iget-object v1, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 328
    iget-object v1, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 329
    iget-object v1, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 330
    iget-object v1, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 331
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 332
    iget-object v1, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 333
    iget-object v1, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 334
    return-void
.end method

.method private setActiveVariables()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 295
    iget v0, p0, Landroid/media/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Landroid/media/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 296
    iget v0, p0, Landroid/media/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Landroid/media/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 297
    iget-object v0, p0, Landroid/media/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Landroid/media/BlobCache;->mActiveBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 298
    iget-object v0, p0, Landroid/media/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Landroid/media/BlobCache;->mActiveBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 300
    iput v4, p0, Landroid/media/BlobCache;->mActiveHashStart:I

    .line 301
    iput v4, p0, Landroid/media/BlobCache;->mInactiveHashStart:I

    .line 303
    iget v0, p0, Landroid/media/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 304
    iget v0, p0, Landroid/media/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Landroid/media/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/BlobCache;->mInactiveHashStart:I

    .line 308
    :goto_2
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 306
    :cond_2
    iget v0, p0, Landroid/media/BlobCache;->mActiveHashStart:I

    iget v1, p0, Landroid/media/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 356
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 357
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 358
    return-void
.end method

.method static writeInt([BII)V
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 654
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 655
    shr-int/lit8 p2, p2, 0x8

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method static writeLong([BIJ)V
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .prologue
    const/16 v4, 0x8

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 661
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 662
    shr-long/2addr p2, v4

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_0
    return-void
.end method


# virtual methods
.method checkSum([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 617
    iget-object v0, p0, Landroid/media/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 618
    iget-object v0, p0, Landroid/media/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 619
    iget-object v0, p0, Landroid/media/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "nbytes"    # I

    .prologue
    .line 623
    iget-object v0, p0, Landroid/media/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 624
    iget-object v0, p0, Landroid/media/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 625
    iget-object v0, p0, Landroid/media/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/media/BlobCache;->syncAll()V

    .line 188
    invoke-direct {p0}, Landroid/media/BlobCache;->closeAll()V

    .line 189
    return-void
.end method

.method getActiveCount()I
    .locals 9

    .prologue
    .line 601
    const/4 v3, 0x0

    .line 602
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, p0, Landroid/media/BlobCache;->mMaxEntries:I

    if-ge v4, v6, :cond_1

    .line 603
    iget v6, p0, Landroid/media/BlobCache;->mActiveHashStart:I

    mul-int/lit8 v7, v4, 0xc

    add-int v5, v6, v7

    .line 604
    .local v5, "offset":I
    iget-object v6, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 605
    .local v0, "candidateKey":J
    iget-object v6, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v7, v5, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 606
    .local v2, "candidateOffset":I
    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 602
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "candidateKey":J
    .end local v2    # "candidateOffset":I
    .end local v5    # "offset":I
    :cond_1
    iget v6, p0, Landroid/media/BlobCache;->mActiveEntries:I

    if-ne v3, v6, :cond_2

    .line 612
    .end local v3    # "count":I
    :goto_1
    return v3

    .line 611
    .restart local v3    # "count":I
    :cond_2
    const-string v6, "BlobCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wrong active count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/media/BlobCache;->mActiveEntries:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public insert(J[B)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/media/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 374
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    iget v0, p0, Landroid/media/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Landroid/media/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Landroid/media/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/media/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 379
    :cond_1
    invoke-direct {p0}, Landroid/media/BlobCache;->flipRegion()V

    .line 382
    :cond_2
    iget v0, p0, Landroid/media/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Landroid/media/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    iget v0, p0, Landroid/media/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/BlobCache;->mActiveEntries:I

    .line 386
    iget-object v0, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Landroid/media/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 389
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/BlobCache;->insertInternal(J[BI)V

    .line 390
    invoke-direct {p0}, Landroid/media/BlobCache;->updateIndexHeader()V

    .line 391
    return-void
.end method

.method public isFileExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 166
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".idx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "indexFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "file0":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "file1":Ljava/io/File;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 172
    :cond_0
    return v3
.end method

.method public lookup(Landroid/media/BlobCache$LookupRequest;)Z
    .locals 7
    .param p1, "req"    # Landroid/media/BlobCache$LookupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 444
    iget-wide v4, p1, Landroid/media/BlobCache$LookupRequest;->key:J

    iget v3, p0, Landroid/media/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v4, v5, v3}, Landroid/media/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    iget-object v3, p0, Landroid/media/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Landroid/media/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Landroid/media/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILandroid/media/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v2

    .line 453
    :cond_1
    iget v0, p0, Landroid/media/BlobCache;->mSlotOffset:I

    .line 456
    .local v0, "insertOffset":I
    iget-wide v4, p1, Landroid/media/BlobCache$LookupRequest;->key:J

    iget v3, p0, Landroid/media/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v4, v5, v3}, Landroid/media/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    iget-object v3, p0, Landroid/media/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Landroid/media/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Landroid/media/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILandroid/media/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    iget v3, p0, Landroid/media/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p1, Landroid/media/BlobCache$LookupRequest;->length:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/media/BlobCache;->mMaxBytes:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Landroid/media/BlobCache;->mActiveEntries:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/media/BlobCache;->mMaxEntries:I

    if-ge v3, v4, :cond_0

    .line 465
    iput v0, p0, Landroid/media/BlobCache;->mSlotOffset:I

    .line 467
    :try_start_0
    iget-wide v4, p1, Landroid/media/BlobCache$LookupRequest;->key:J

    iget-object v3, p1, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    iget v6, p1, Landroid/media/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v4, v5, v3, v6}, Landroid/media/BlobCache;->insertInternal(J[BI)V

    .line 468
    iget v3, p0, Landroid/media/BlobCache;->mActiveEntries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/media/BlobCache;->mActiveEntries:I

    .line 469
    iget-object v3, p0, Landroid/media/BlobCache;->mIndexHeader:[B

    const/16 v4, 0x10

    iget v5, p0, Landroid/media/BlobCache;->mActiveEntries:I

    invoke-static {v3, v4, v5}, Landroid/media/BlobCache;->writeInt([BII)V

    .line 470
    invoke-direct {p0}, Landroid/media/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, "BlobCache"

    const-string v4, "cannot copy over"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Landroid/media/BlobCache;->mLookupRequest:Landroid/media/BlobCache$LookupRequest;

    iput-wide p1, v1, Landroid/media/BlobCache$LookupRequest;->key:J

    .line 424
    iget-object v1, p0, Landroid/media/BlobCache;->mLookupRequest:Landroid/media/BlobCache$LookupRequest;

    iput-object v0, v1, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    .line 425
    iget-object v1, p0, Landroid/media/BlobCache;->mLookupRequest:Landroid/media/BlobCache$LookupRequest;

    invoke-virtual {p0, v1}, Landroid/media/BlobCache;->lookup(Landroid/media/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v0, p0, Landroid/media/BlobCache;->mLookupRequest:Landroid/media/BlobCache$LookupRequest;

    iget-object v0, v0, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    .line 428
    :cond_0
    return-object v0
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/media/BlobCache;->syncIndex()V

    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/media/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/media/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_1
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string/jumbo v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 591
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 592
    .restart local v0    # "t":Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string/jumbo v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 576
    :try_start_0
    iget-object v1, p0, Landroid/media/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string/jumbo v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
