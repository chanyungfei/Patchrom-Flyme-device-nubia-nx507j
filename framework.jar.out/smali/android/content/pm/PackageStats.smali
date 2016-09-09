.class public Landroid/content/pm/PackageStats;
.super Ljava/lang/Object;
.source "PackageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cacheSize:J

.field public codeSize:J

.field public dataSize:J

.field public extUserHandle:I

.field public externalCacheSize:J

.field public externalCodeSize:J

.field public externalDataSize:J

.field public externalMediaSize:J

.field public externalObbSize:J

.field public packageName:Ljava/lang/String;

.field public userHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Landroid/content/pm/PackageStats$1;

    invoke-direct {v0}, Landroid/content/pm/PackageStats$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageStats;)V
    .locals 2
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    .line 174
    iget-object v0, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 175
    iget v0, p1, Landroid/content/pm/PackageStats;->userHandle:I

    iput v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    .line 176
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 177
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 178
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 179
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 180
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 181
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 182
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 183
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 185
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v0, :cond_0

    .line 186
    iget v0, p1, Landroid/content/pm/PackageStats;->extUserHandle:I

    iput v0, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    .line 189
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 167
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    .line 171
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    .line 135
    iput-object p1, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    .line 138
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v0, :cond_0

    .line 139
    iget v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    iput v0, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    .line 142
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    .line 146
    iput-object p1, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 147
    iput p2, p0, Landroid/content/pm/PackageStats;->userHandle:I

    .line 149
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v0, :cond_0

    .line 150
    iput p2, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PackageStats{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 99
    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 103
    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 107
    const-string v1, " cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    :cond_2
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 111
    const-string v1, " extCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    :cond_3
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 115
    const-string v1, " extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    :cond_4
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 119
    const-string v1, " extCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    :cond_5
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 123
    const-string v1, " media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    :cond_6
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 127
    const-string v1, " obb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    :cond_7
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 196
    iget-object v0, p0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v0, :cond_0

    .line 208
    iget v0, p0, Landroid/content/pm/PackageStats;->extUserHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    :cond_0
    return-void
.end method
