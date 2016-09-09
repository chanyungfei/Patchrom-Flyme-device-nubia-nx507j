.class public Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;,
        Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;,
        Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EDGE_DATABASE:Ljava/lang/String; = "content://cn.nubia.edge/fit_manager"

.field private static final EDGE_DATABASE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "EdgeDatabaseHelper"

.field static sInstance:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field private mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

.field private mContext:Landroid/content/Context;

.field private mLastEdgeTpState:I

.field private mObserver:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;

.field private mSettingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "content://cn.nubia.edge/fit_manager"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->EDGE_DATABASE_URI:Landroid/net/Uri;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mLastEdgeTpState:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->registerReceiver()V

    .line 43
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;-><init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mObserver:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getAllDatabase()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->updateEdgeTpState()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->EDGE_DATABASE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .prologue
    .line 25
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mLastEdgeTpState:I

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getValue(Landroid/net/Uri;)V

    return-void
.end method

.method private getAllDatabase()V
    .locals 10

    .prologue
    .line 270
    const/4 v6, 0x0

    .line 272
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->EDGE_DATABASE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "name IN(?,?,?,?,?,?,?,?)"

    sget-object v4, Lcn/nubia/internal/policy/impl/edge/EdgeSettings;->ALL_INCOMPLETE_EDGE_SWITCH:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 275
    if-nez v6, :cond_1

    .line 276
    const-string v0, "EdgeDatabaseHelper"

    const-string v1, "edge cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-eqz v6, :cond_0

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    const/4 v6, 0x0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 280
    const-string v0, "EdgeDatabaseHelper"

    const-string v1, "edge cursor\'s count is less than zero!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    if-eqz v6, :cond_0

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    const/4 v6, 0x0

    goto :goto_0

    .line 283
    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    :cond_3
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    .local v8, "key":Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 288
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 297
    if-eqz v6, :cond_0

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    const/4 v6, 0x0

    goto :goto_0

    .line 294
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 295
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    if-eqz v6, :cond_0

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    const/4 v6, 0x0

    goto :goto_0

    .line 297
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EdgeHelper getInstance\'s context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    :cond_0
    sget-object v1, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .line 78
    :cond_1
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getValue(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 216
    if-nez p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v6, 0x0

    .line 219
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v6, :cond_0

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    const/4 v6, 0x0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    if-eqz v6, :cond_0

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    const/4 v6, 0x0

    goto :goto_0

    .line 224
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method private getValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v6, 0x0

    .line 234
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->EDGE_DATABASE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    invoke-direct {p0, v6, p1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-eqz v6, :cond_0

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v6, 0x0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v7

    .line 237
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v6, :cond_0

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v6, 0x0

    goto :goto_0

    .line 239
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v6, 0x0

    :cond_1
    throw v0
.end method

.method private getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 248
    const-string v2, "EdgeDatabaseHelper"

    const-string v3, "edge cursor is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 252
    const-string v2, "EdgeDatabaseHelper"

    const-string v3, "edge cursor\'s count is less than zero!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 256
    const-string v2, "value"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 258
    const-string v2, "EdgeDatabaseHelper"

    const-string v3, "edge database column named value not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 263
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    :cond_4
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isNeedUserEdgeTP()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 329
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nubia_edge_enable_czone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 336
    :cond_1
    const-string v3, "off"

    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getSingleSlideSwitch(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    const-string v3, "off"

    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getSingleSlideSwitch(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getDoubleSlideSwitch()I

    move-result v3

    if-gtz v3, :cond_0

    .line 348
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getLoopSlideSwitch()I

    move-result v3

    if-gtz v3, :cond_0

    .line 352
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getHoldHoldSwtich()I

    move-result v3

    if-gtz v3, :cond_0

    .line 356
    const-string v3, "off"

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getTapSwitch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getHoldFourCornerSwitch()I

    move-result v3

    if-gtz v3, :cond_0

    .line 364
    const-string v3, "00"

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getDoubleClickSwitch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 368
    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 47
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;

    invoke-direct {v2, p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;-><init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$2;

    invoke-direct {v2, p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$2;-><init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method private updateEdgeTpState()V
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->isNeedUserEdgeTP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->writeEdgeTpState(I)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->writeEdgeTpState(I)V

    goto :goto_0
.end method

.method private updateEdgeTpState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 316
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->writeEdgeTpState(I)V

    .line 319
    :cond_0
    return-void
.end method

.method private writeEdgeTpState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 322
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mLastEdgeTpState:I

    if-eq v0, p1, :cond_0

    .line 323
    iput p1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mLastEdgeTpState:I

    .line 324
    const-string v0, "persist.sys.edgetp.czone"

    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mLastEdgeTpState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method public getDoubleClickSwitch()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    const-string v2, "nubia_edge_double_click"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v0, "00"

    .line 144
    :cond_0
    return-object v0
.end method

.method public getDoubleSlideSwitch()I
    .locals 5

    .prologue
    .line 106
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    const-string v4, "nubia_edge_double_side_move"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 108
    .local v0, "realValue":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 115
    .end local v0    # "realValue":I
    .local v1, "realValue":I
    :goto_0
    return v1

    .line 112
    .end local v1    # "realValue":I
    .restart local v0    # "realValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 115
    .end local v0    # "realValue":I
    .restart local v1    # "realValue":I
    goto :goto_0

    .line 113
    .end local v1    # "realValue":I
    .restart local v0    # "realValue":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getHoldFourCornerSwitch()I
    .locals 5

    .prologue
    .line 148
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    const-string v4, "nubia_edge_hold_four_corner"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 150
    .local v0, "realValue":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 157
    .end local v0    # "realValue":I
    .local v1, "realValue":I
    :goto_0
    return v1

    .line 154
    .end local v1    # "realValue":I
    .restart local v0    # "realValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 157
    .end local v0    # "realValue":I
    .restart local v1    # "realValue":I
    goto :goto_0

    .line 155
    .end local v1    # "realValue":I
    .restart local v0    # "realValue":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getHoldHoldSwtich()I
    .locals 5

    .prologue
    .line 119
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    const-string v4, "nubia_edge_hold_hold"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 121
    .local v0, "realValue":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 128
    .end local v0    # "realValue":I
    .local v1, "realValue":I
    :goto_0
    return v1

    .line 125
    .end local v1    # "realValue":I
    .restart local v0    # "realValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 128
    .end local v0    # "realValue":I
    .restart local v1    # "realValue":I
    goto :goto_0

    .line 126
    .end local v1    # "realValue":I
    .restart local v0    # "realValue":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getLoopSlideSwitch()I
    .locals 5

    .prologue
    .line 93
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    const-string v4, "nubia_edge_move_loop"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 95
    .local v0, "realValue":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 102
    .end local v0    # "realValue":I
    .local v1, "realValue":I
    :goto_0
    return v1

    .line 99
    .end local v1    # "realValue":I
    .restart local v0    # "realValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 102
    .end local v0    # "realValue":I
    .restart local v1    # "realValue":I
    goto :goto_0

    .line 100
    .end local v1    # "realValue":I
    .restart local v0    # "realValue":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getSingleSlideSwitch(Z)Ljava/lang/String;
    .locals 3
    .param p1, "left"    # Z

    .prologue
    .line 84
    if-eqz p1, :cond_1

    const-string v0, "nubia_edge_left_move_switch"

    .line 85
    .local v0, "key":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string v1, "off"

    .line 89
    :cond_0
    return-object v1

    .line 84
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "nubia_edge_right_move_switch"

    goto :goto_0
.end method

.method public getTapSwitch()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;

    const-string v2, "nubia_edge_hold_tap"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v0, "off"

    .line 136
    :cond_0
    return-object v0
.end method

.method public handleBootCompleted()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mObserver:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->observe()V

    .line 163
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;-><init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    return-void
.end method

.method public removeChangeListener()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    .line 378
    return-void
.end method

.method public setChangeListener(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    .prologue
    .line 373
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    .line 374
    return-void
.end method
