.class public Landroid/accounts/AuthenticatorDescription;
.super Ljava/lang/Object;
.source "AuthenticatorDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountPreferencesId:I

.field public final customTokens:Z

.field public duplicated:Z

.field public final iconId:I

.field public final labelId:I

.field public final packageName:Ljava/lang/String;

.field public final smallIconId:I

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Landroid/accounts/AuthenticatorDescription$1;

    invoke-direct {v0}, Landroid/accounts/AuthenticatorDescription$1;-><init>()V

    sput-object v0, Landroid/accounts/AuthenticatorDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v2, p0, Landroid/accounts/AuthenticatorDescription;->duplicated:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 109
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Landroid/accounts/AuthenticatorDescription;->duplicated:Z

    .line 113
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 107
    goto :goto_0

    :cond_2
    move v1, v2

    .line 110
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/accounts/AuthenticatorDescription$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/accounts/AuthenticatorDescription$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/accounts/AuthenticatorDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Landroid/accounts/AuthenticatorDescription;->duplicated:Z

    .line 91
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 93
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 94
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 95
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 96
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 97
    iput-boolean v1, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "iconId"    # I
    .param p5, "smallIconId"    # I
    .param p6, "prefId"    # I

    .prologue
    .line 77
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "iconId"    # I
    .param p5, "smallIconId"    # I
    .param p6, "prefId"    # I
    .param p7, "customTokens"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->duplicated:Z

    .line 64
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 68
    iput p3, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 69
    iput p4, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 70
    iput p5, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 71
    iput p6, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 72
    iput-boolean p7, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 73
    return-void
.end method

.method public static newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    invoke-direct {v0, p0}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    .line 128
    :cond_0
    instance-of v1, p1, Landroid/accounts/AuthenticatorDescription;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 129
    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 130
    .local v0, "other":Landroid/accounts/AuthenticatorDescription;
    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticatorDescription {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v0, :cond_0

    .line 148
    iget-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->duplicated:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 145
    goto :goto_0

    :cond_2
    move v1, v2

    .line 148
    goto :goto_1
.end method
