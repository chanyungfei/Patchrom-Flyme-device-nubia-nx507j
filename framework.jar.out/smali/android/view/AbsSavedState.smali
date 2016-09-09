.class public abstract Landroid/view/AbsSavedState;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/AbsSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Landroid/view/AbsSavedState;


# instance fields
.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/view/AbsSavedState$1;

    invoke-direct {v0}, Landroid/view/AbsSavedState$1;-><init>()V

    sput-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 88
    new-instance v0, Landroid/view/AbsSavedState$2;

    invoke-direct {v0}, Landroid/view/AbsSavedState$2;-><init>()V

    sput-object v0, Landroid/view/AbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "superState":Landroid/os/Parcelable;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    move-object v2, v1

    :goto_0
    iput-object v2, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 74
    :goto_1
    return-void

    .line 71
    :cond_0
    sget-object v2, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/BadParcelableException;
    :try_start_1
    const-string v2, "Nubia"

    const-string v3, "Catch BadParcelableException, in case app crash"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v1, :cond_1

    move-object v2, v1

    :goto_2
    iput-object v2, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    goto :goto_2

    .end local v0    # "e":Landroid/os/BadParcelableException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_3
    iput-object v1, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    throw v2

    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_2
    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    goto :goto_3
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "superState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    .end local p1    # "superState":Landroid/os/Parcelable;
    :goto_0
    iput-object p1, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 50
    return-void

    .line 49
    .restart local p1    # "superState":Landroid/os/Parcelable;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/AbsSavedState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/AbsSavedState$1;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/view/AbsSavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    return-void
.end method
