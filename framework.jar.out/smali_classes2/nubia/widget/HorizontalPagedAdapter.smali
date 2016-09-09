.class public Lnubia/widget/HorizontalPagedAdapter;
.super Landroid/widget/BaseAdapter;
.source "HorizontalPagedAdapter.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mEndPosition:I

.field private mIsChanged:Z

.field mPageNumber:I

.field private mStartPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    iput v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    .line 12
    iput v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mEndPosition:I

    .line 13
    iput v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mPageNumber:I

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mIsChanged:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListAdapter;III)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "nStart"    # I
    .param p3, "nEnd"    # I
    .param p4, "nPage"    # I

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    iput v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    .line 12
    iput v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mEndPosition:I

    .line 13
    iput v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mPageNumber:I

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mIsChanged:Z

    .line 24
    iput-object p1, p0, Lnubia/widget/HorizontalPagedAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 25
    iput p2, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    .line 26
    iput p3, p0, Lnubia/widget/HorizontalPagedAdapter;->mEndPosition:I

    .line 27
    iput p4, p0, Lnubia/widget/HorizontalPagedAdapter;->mPageNumber:I

    .line 28
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mEndPosition:I

    iget v1, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPagePosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    iget v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    sub-int v0, p1, v0

    return v0
.end method

.method public getItemRealId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    iget v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemRealPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    iget-object v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public hasChanged()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mIsChanged:Z

    return v0
.end method

.method public isOnPage(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mStartPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lnubia/widget/HorizontalPagedAdapter;->mEndPosition:I

    if-ge p1, v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChanged(Z)Z
    .locals 0
    .param p1, "change"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lnubia/widget/HorizontalPagedAdapter;->mIsChanged:Z

    return p1
.end method
