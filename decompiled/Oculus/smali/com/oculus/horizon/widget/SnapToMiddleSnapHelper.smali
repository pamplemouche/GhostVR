.class public Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "SnapToMiddleSnapHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    return-void
.end method

.method protected static canScrollFurther(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-static {p0, p1}, Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;->findFirstViewStartPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v0

    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 47
    :goto_0
    invoke-static {p0, p1}, Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;->findLastViewEndPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v3

    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v3, v1

    .line 50
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 45
    goto :goto_0

    :cond_1
    move v3, v2

    .line 48
    goto :goto_1

    :cond_2
    move v1, v2

    .line 50
    goto :goto_2
.end method

.method private static findFirstViewStartPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    const/4 v1, -0x1

    .line 67
    :cond_0
    return v1

    .line 59
    :cond_1
    const v1, 0x7fffffff

    .line 60
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 63
    if-ge v0, v1, :cond_2

    .line 60
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static findLastViewEndPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    .line 74
    if-nez v3, :cond_1

    .line 75
    const/4 v1, -0x1

    .line 85
    :cond_0
    return v1

    :cond_1
    move v2, v0

    move v1, v0

    .line 78
    :goto_0
    if-ge v2, v3, :cond_0

    .line 79
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 81
    if-le v0, v1, :cond_2

    .line 78
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;->canScrollFurther(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 32
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected calculateNewPosition(II)I
    .locals 1

    .prologue
    .line 36
    if-lez p1, :cond_0

    add-int/lit8 v0, p2, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 23
    invoke-virtual {p0, p2, v0}, Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;->calculateNewPosition(II)I

    move-result v0

    return v0
.end method
