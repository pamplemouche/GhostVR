.class public Lcom/oculus/horizon/widget/SnapToStartSnapHelper;
.super Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;
.source "SnapToStartSnapHelper.java"


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mMarginLeft:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;-><init>()V

    .line 18
    iput p1, p0, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->mMarginLeft:I

    .line 19
    return-void
.end method

.method private calculateDistanceBetweenItemStartAndContainerStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->mMarginLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private findViewClosestToStart(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 56
    :cond_0
    return-object v3

    .line 47
    :cond_1
    const v1, 0x7fffffff

    .line 48
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 49
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 50
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget v6, p0, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->mMarginLeft:I

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 51
    if-ge v0, v1, :cond_2

    move-object v1, v2

    .line 48
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method private getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_0

    .line 74
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->canScrollFurther(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-object v0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    .line 30
    invoke-direct {p0, p2, v2}, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->calculateDistanceBetweenItemStartAndContainerStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method protected calculateNewPosition(II)I
    .locals 1

    .prologue
    .line 67
    if-lez p1, :cond_0

    add-int/lit8 v0, p2, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;->findViewClosestToStart(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
