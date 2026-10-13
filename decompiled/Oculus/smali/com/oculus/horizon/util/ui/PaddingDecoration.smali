.class public Lcom/oculus/horizon/util/ui/PaddingDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PaddingDecoration.java"


# instance fields
.field private final mOrientation:I

.field private final mPaddingEdgesPx:I

.field private final mPaddingPx:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 35
    iput p1, p0, Lcom/oculus/horizon/util/ui/PaddingDecoration;->mOrientation:I

    .line 37
    iput p2, p0, Lcom/oculus/horizon/util/ui/PaddingDecoration;->mPaddingPx:I

    .line 38
    iput p3, p0, Lcom/oculus/horizon/util/ui/PaddingDecoration;->mPaddingEdgesPx:I

    .line 39
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 45
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 46
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    .line 52
    iget v1, p0, Lcom/oculus/horizon/util/ui/PaddingDecoration;->mPaddingPx:I

    .line 53
    iget v0, p0, Lcom/oculus/horizon/util/ui/PaddingDecoration;->mPaddingPx:I

    .line 55
    if-nez v2, :cond_2

    .line 56
    iget v2, p0, Lcom/oculus/horizon/util/ui/PaddingDecoration;->mPaddingEdgesPx:I

    add-int/2addr v1, v2

    .line 61
    :cond_1
    :goto_1
    iget v2, p0, Lcom/oculus/horizon/util/ui/PaddingDecoration;->mOrientation:I

    if-nez v2, :cond_3

    .line 62
    invoke-virtual {p1, v1, v4, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 57
    :cond_2
    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 58
    iget v2, p0, Lcom/oculus/horizon/util/ui/PaddingDecoration;->mPaddingEdgesPx:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p1, v4, v1, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
