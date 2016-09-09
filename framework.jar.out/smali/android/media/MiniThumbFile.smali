.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x30000

.field private static final HEADER_SIZE:I = 0xd

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1388

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Landroid/media/BlobCache;

.field private mPath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 123
    return-void
.end method

.method private createDirectory()V
    .locals 5

    .prologue
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM/.thumbnails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "directoryName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "dirctory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const-string v2, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create .thumbnails directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void
.end method

.method private initBlobCache()V
    .locals 7

    .prologue
    .line 126
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    iget-object v1, p0, Landroid/media/MiniThumbFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/BlobCache;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    if-nez v0, :cond_0

    .line 132
    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 133
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->createDirectory()V

    .line 134
    new-instance v0, Landroid/media/BlobCache;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    const/high16 v3, 0xc800000

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Landroid/media/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v6

    .line 138
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "MiniThumbFile"

    const-string v1, "Cannot instantiate cache!"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 75
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 78
    .local v0, "file":Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 81
    .restart local v0    # "file":Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit v3

    return-object v0

    .line 75
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    .end local v1    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isSameKey(JLjava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "id"    # J
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 229
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 230
    .local v0, "n":J
    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 231
    const/4 v2, 0x0

    .line 233
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MiniThumbFile;->mPath:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mPath:Ljava/lang/String;

    return-object v1
.end method

.method private removeOldFile()V
    .locals 3

    .prologue
    .line 109
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    .line 68
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 69
    .local v0, "file":Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 71
    :cond_0
    :try_start_1
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 146
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    invoke-virtual {v0}, Landroid/media/BlobCache;->syncAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getMagic(J)J
    .locals 7
    .param p1, "id"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 161
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->initBlobCache()V

    .line 162
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 163
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/BlobCache$LookupRequest;

    invoke-direct {v1}, Landroid/media/BlobCache$LookupRequest;-><init>()V

    .line 164
    .local v1, "request":Landroid/media/BlobCache$LookupRequest;
    iput-wide p1, v1, Landroid/media/BlobCache$LookupRequest;->key:J

    .line 165
    const v4, 0x30010

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iput-object v4, v1, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    .line 168
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    invoke-virtual {v4, v1}, Landroid/media/BlobCache;->lookup(Landroid/media/BlobCache$LookupRequest;)Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "request":Landroid/media/BlobCache$LookupRequest;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 170
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "request":Landroid/media/BlobCache$LookupRequest;
    :cond_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    :try_start_5
    invoke-direct {p0, p1, p2, v0}, Landroid/media/MiniThumbFile;->isSameKey(JLjava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v2

    goto :goto_0

    .line 161
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "request":Landroid/media/BlobCache$LookupRequest;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 5
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 206
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->initBlobCache()V

    .line 207
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    move-object p3, v2

    .line 225
    .end local p3    # "data":[B
    :goto_0
    monitor-exit p0

    return-object p3

    .line 208
    .restart local p3    # "data":[B
    :cond_0
    :try_start_1
    new-instance v1, Landroid/media/BlobCache$LookupRequest;

    invoke-direct {v1}, Landroid/media/BlobCache$LookupRequest;-><init>()V

    .line 209
    .local v1, "request":Landroid/media/BlobCache$LookupRequest;
    iput-wide p1, v1, Landroid/media/BlobCache$LookupRequest;->key:J

    .line 210
    array-length v3, p3

    add-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iput-object v3, v1, Landroid/media/BlobCache$LookupRequest;->buffer:[B

    .line 212
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    :try_start_2
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    invoke-virtual {v3, v1}, Landroid/media/BlobCache;->lookup(Landroid/media/BlobCache$LookupRequest;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    move-object p3, v2

    goto :goto_0

    .line 214
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 218
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 219
    const/4 v3, 0x0

    iget v4, v1, Landroid/media/BlobCache$LookupRequest;->length:I

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v0, p3, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 222
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "request":Landroid/media/BlobCache$LookupRequest;
    :catch_0
    move-exception v3

    move-object p3, v2

    .line 225
    goto :goto_0

    .line 214
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "request":Landroid/media/BlobCache$LookupRequest;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 206
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "request":Landroid/media/BlobCache$LookupRequest;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->initBlobCache()V

    .line 183
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 195
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    array-length v1, p1

    add-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 185
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v0, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v2, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :try_start_2
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mCache:Landroid/media/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, p2, p3, v3}, Landroid/media/BlobCache;->insert(J[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 191
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
