.class public Lcom/oculus/horizon/store/PivotGravityScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PivotGravityScrollListener.java"


# instance fields
.field private mPivotPx:I

.field private mScrolling:Z


# direct methods
.method private findClosestView(Landroidx/recyclerview/widget/LinearLayoutManager;)Landroid/view/View;
    .locals 7

    .prologue
    .line 57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 58
    const/4 v2, 0x0

    .line 59
    const/4 v0, 0x0

    move v4, v2

    move-object v2, v0

    move v0, v1

    .line 60
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    if-gt v0, v3, :cond_2

    .line 61
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v5

    if-nez v5, :cond_1

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 66
    :goto_1
    iget v6, p0, Lcom/oculus/horizon/store/PivotGravityScrollListener;->mPivotPx:I

    sub-int v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 67
    if-le v5, v4, :cond_0

    if-ne v0, v1, :cond_2

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    move v4, v5

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 74
    :cond_2
    return-object v2
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    iget-boolean v1, p0, Lcom/oculus/horizon/store/PivotGravityScrollListener;->mScrolling:Z

    if-eqz v1, :cond_0

    .line 34
    if-nez p2, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lcom/oculus/horizon/store/PivotGravityScrollListener;->findClosestView(Landroidx/recyclerview/widget/LinearLayoutManager;)Landroid/view/View;

    move-result-object v1

    .line 37
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-nez v2, :cond_3

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 40
    :goto_0
    iget v2, p0, Lcom/oculus/horizon/store/PivotGravityScrollListener;->mPivotPx:I

    sub-int/2addr v1, v2

    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_4

    .line 42
    invoke-virtual {p1, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 46
    :goto_1
    iput-boolean v3, p0, Lcom/oculus/horizon/store/PivotGravityScrollListener;->mScrolling:Z

    .line 49
    :cond_0
    if-eq p2, v4, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 51
    :cond_1
    iput-boolean v4, p0, Lcom/oculus/horizon/store/PivotGravityScrollListener;->mScrolling:Z

    .line 53
    :cond_2
    return-void

    .line 39
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p1, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1
.end method
