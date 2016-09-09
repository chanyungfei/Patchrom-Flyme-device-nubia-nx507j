.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mEmulatedDirForDirect:Ljava/io/File;

.field private final mExternalDirsForApp:[Ljava/io/File;

.field private final mExternalDirsForVold:[Ljava/io/File;

.field private final mSecondaryStorage:Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 20
    .param p1, "userId"    # I

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string v18, "EXTERNAL_STORAGE"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, "rawExternalStorage":Ljava/lang/String;
    const-string v18, "EMULATED_STORAGE_SOURCE"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "rawEmulatedSource":Ljava/lang/String;
    const-string v18, "EMULATED_STORAGE_TARGET"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, "rawEmulatedTarget":Ljava/lang/String;
    const-string v18, "MEDIA_STORAGE"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 149
    .local v14, "rawMediaStorage":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 150
    const-string v14, "/data/media"

    .line 153
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 154
    .local v6, "externalForVold":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 156
    .local v5, "externalForApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 159
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 160
    .local v16, "rawUserId":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, "emulatedSourceBase":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "emulatedTargetBase":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v10, "mediaBase":Ljava/io/File;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    .line 184
    .end local v3    # "emulatedSourceBase":Ljava/io/File;
    .end local v4    # "emulatedTargetBase":Ljava/io/File;
    .end local v10    # "mediaBase":Ljava/io/File;
    .end local v16    # "rawUserId":Ljava/lang/String;
    :goto_0
    const-string v18, "SECONDARY_STORAGE"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 186
    .local v15, "rawSecondaryStorage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 187
    .local v7, "hasSecondarySotageForAppandVold":Z
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    if-nez p1, :cond_3

    .line 189
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v17, v2, v8

    .line 190
    .local v17, "secondaryPath":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 171
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "hasSecondarySotageForAppandVold":Z
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v15    # "rawSecondaryStorage":Ljava/lang/String;
    .end local v17    # "secondaryPath":Ljava/lang/String;
    :cond_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 172
    const-string v18, "Environment"

    const-string v19, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v13, "/storage/sdcard0"

    .line 177
    :cond_2
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    goto :goto_0

    .line 195
    .restart local v7    # "hasSecondarySotageForAppandVold":Z
    .restart local v15    # "rawSecondaryStorage":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    .line 196
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    .line 198
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 199
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    .line 204
    :goto_2
    return-void

    .line 201
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    goto :goto_2
.end method

.method private filecat([Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;
    .locals 3
    .param p1, "target1"    # [Ljava/io/File;
    .param p2, "target2"    # [Ljava/io/File;

    .prologue
    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz p1, :cond_0

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 288
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 292
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 293
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    return-object v2
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirsForVold()[Ljava/io/File;
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "cache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;I)[Ljava/io/File;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 337
    sget-boolean v3, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-eqz v3, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 351
    :goto_0
    return-object v3

    .line 341
    :cond_0
    if-gez p2, :cond_1

    .line 342
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    const-string v5, "data"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    const-string v5, "cache"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 343
    .local v1, "master":[Ljava/io/File;
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    const-string v5, "data_cloned"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    const-string v5, "cache"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 344
    .local v2, "slave":[Ljava/io/File;
    invoke-direct {p0, v1, v2}, Landroid/os/Environment$UserEnvironment;->filecat([Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 347
    .end local v1    # "master":[Ljava/io/File;
    .end local v2    # "slave":[Ljava/io/File;
    :cond_1
    const-string v0, "data"

    .line 348
    .local v0, "data":Ljava/lang/String;
    if-lez p2, :cond_2

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_cloned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_2
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    aput-object p1, v4, v8

    const-string v5, "cache"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;I)[Ljava/io/File;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 300
    sget-boolean v3, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 315
    :goto_0
    return-object v3

    .line 304
    :cond_0
    if-gez p2, :cond_1

    .line 305
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    const-string v5, "data"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 306
    .local v1, "master":[Ljava/io/File;
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    const-string v5, "data_cloned"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 307
    .local v2, "slave":[Ljava/io/File;
    invoke-direct {p0, v1, v2}, Landroid/os/Environment$UserEnvironment;->filecat([Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 310
    .end local v1    # "master":[Ljava/io/File;
    .end local v2    # "slave":[Ljava/io/File;
    :cond_1
    const-string v0, "data"

    .line 311
    .local v0, "data":Ljava/lang/String;
    if-lez p2, :cond_2

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_cloned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_2
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0
.end method

.method public buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "files"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;I)[Ljava/io/File;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 319
    sget-boolean v3, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 333
    :goto_0
    return-object v3

    .line 323
    :cond_0
    if-gez p2, :cond_1

    .line 324
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    const-string/jumbo v5, "media"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 325
    .local v0, "master":[Ljava/io/File;
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    const-string/jumbo v5, "media_cloned"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 326
    .local v2, "slave":[Ljava/io/File;
    invoke-direct {p0, v0, v2}, Landroid/os/Environment$UserEnvironment;->filecat([Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 329
    .end local v0    # "master":[Ljava/io/File;
    .end local v2    # "slave":[Ljava/io/File;
    :cond_1
    const-string/jumbo v1, "media"

    .line 330
    .local v1, "media":Ljava/lang/String;
    if-lez p2, :cond_2

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_cloned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_2
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0
.end method

.method public buildExternalStorageAppMediaDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;I)[Ljava/io/File;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 355
    sget-boolean v3, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-eqz v3, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 369
    :goto_0
    return-object v3

    .line 359
    :cond_0
    if-gez p2, :cond_1

    .line 360
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    const-string/jumbo v5, "obb"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 361
    .local v1, "master":[Ljava/io/File;
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    const-string/jumbo v5, "obb_cloned"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 362
    .local v2, "slave":[Ljava/io/File;
    invoke-direct {p0, v1, v2}, Landroid/os/Environment$UserEnvironment;->filecat([Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 365
    .end local v1    # "master":[Ljava/io/File;
    .end local v2    # "slave":[Ljava/io/File;
    :cond_1
    const-string/jumbo v0, "obb"

    .line 366
    .local v0, "data":Ljava/lang/String;
    if-lez p2, :cond_2

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_cloned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_2
    iget-object v3, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Android"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0
.end method

.method public buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalDirsForApp()[Ljava/io/File;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    return-object v0
.end method

.method public getExternalDirsForVold()[Ljava/io/File;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    return-object v0
.end method

.method public getSecondaryStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    return-object v0
.end method
