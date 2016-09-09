.class Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CpuSpeedTime"
.end annotation


# instance fields
.field private LOGV:Z

.field private mCpuSpeeds:[J

.field private mCurCpuSpeedTimes:[J

.field private mDeltaCpuSpeedsTimes:[J

.field private mId:I

.field private mInitSucess:Z

.field final synthetic this$0:Lcom/android/internal/os/ProcessCpuTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/os/ProcessCpuTracker;I)V
    .locals 1
    .param p2, "cpuId"    # I

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->this$0:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->LOGV:Z

    .line 195
    iput p2, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mId:I

    .line 196
    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mInitSucess:Z

    .line 197
    return-void
.end method

.method private getCpuSpeedTimes()Z
    .locals 14

    .prologue
    .line 243
    const/4 v3, 0x0

    .line 244
    .local v3, "speed":I
    const/16 v0, 0x3c

    .line 245
    .local v0, "MAX_SPEEDS":I
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    .line 246
    .local v6, "tempTimes":[J
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    .line 248
    .local v5, "tempSpeeds":[J
    iget-boolean v10, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mInitSucess:Z

    if-nez v10, :cond_0

    .line 249
    const/16 v10, 0x3c

    new-array v6, v10, [J

    .line 250
    const/16 v10, 0x3c

    new-array v5, v10, [J

    .line 253
    :cond_0
    iget-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->this$0:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/cpufreq/stats/time_in_state"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    # invokes: Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;
    invoke-static {v10, v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->access$000(Lcom/android/internal/os/ProcessCpuTracker;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "file":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 256
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v4, "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 258
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 262
    .local v8, "val":J
    array-length v10, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v10, :cond_4

    .line 285
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "val":J
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mInitSucess:Z

    if-nez v10, :cond_3

    .line 286
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mInitSucess:Z

    .line 287
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    .line 288
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    .line 290
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    const/4 v12, 0x0

    invoke-static {v5, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 291
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    const/4 v12, 0x0

    invoke-static {v6, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 294
    :cond_3
    const/4 v10, 0x1

    .end local v4    # "st":Ljava/util/StringTokenizer;
    :goto_1
    return v10

    .line 265
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v8    # "val":J
    :cond_4
    :try_start_1
    aput-wide v8, v5, v3

    .line 266
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 267
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 268
    aput-wide v8, v6, v3

    .line 269
    add-int/lit8 v3, v3, 0x1

    .line 270
    const/16 v10, 0x3c

    if-eq v3, v10, :cond_2

    .line 271
    iget-boolean v10, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->LOGV:Z

    if-eqz v10, :cond_1

    .line 272
    const-string v10, "ProcessCpuTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "First time : Speed/Time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, -0x1

    aget-wide v12, v5, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, -0x1

    aget-wide v12, v6, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 275
    .end local v8    # "val":J
    :catch_0
    move-exception v2

    .line 276
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-string v10, "ProcessCpuTracker"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v10, 0x0

    goto :goto_1

    .line 281
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "token":Ljava/lang/String;
    :cond_5
    const-string v10, "ProcessCpuTracker"

    const-string v11, "time_in_state file does not exist"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private initDeltaTime()V
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    if-nez v1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convertString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    if-eqz v2, :cond_2

    .line 301
    const-string v2, "  CPU"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 306
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    iget-boolean v2, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->LOGV:Z

    if-eqz v2, :cond_2

    .line 313
    const-string v2, "ProcessCpuTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertString return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCpuDeltaSpeedTimes()[J
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    return-object v0
.end method

.method public getCpuNumSpeedTimes()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    array-length v0, v0

    goto :goto_0
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 208
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->initDeltaTime()V

    .line 210
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->getCpuSpeedTimes()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    .line 239
    :goto_0
    return-object v1

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCurCpuSpeedTimes:[J

    if-nez v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCurCpuSpeedTimes:[J

    .line 216
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCurCpuSpeedTimes:[J

    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    array-length v5, v5

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 218
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->initDeltaTime()V

    .line 234
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->LOGV:Z

    if-eqz v1, :cond_2

    .line 235
    const-string v1, "ProcessCpuTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastCpuSpeedTimes CPU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mCurCpuSpeedTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCurCpuSpeedTimes:[J

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v1, "ProcessCpuTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastCpuSpeedTimes CPU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mDeltaCpuSpeedsTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->convertString()Ljava/lang/String;

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    goto :goto_0

    .line 220
    :cond_3
    const-wide/16 v2, 0x0

    .line 222
    .local v2, "temp":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCpuSpeeds:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCurCpuSpeedTimes:[J

    aget-wide v6, v1, v0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    aget-wide v2, v1, v0

    .line 225
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    aget-wide v4, v1, v0

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCurCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 226
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCurCpuSpeedTimes:[J

    aput-wide v2, v1, v0

    .line 222
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mCurCpuSpeedTimes:[J

    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker$CpuSpeedTime;->mDeltaCpuSpeedsTimes:[J

    aget-wide v4, v4, v0

    aput-wide v4, v1, v0

    goto :goto_2
.end method
