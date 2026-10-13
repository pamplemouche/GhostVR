.class public LRx0;
.super LLg;
.source "PG"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(LTx0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, LLg;-><init>()V

    .line 2
    iput p2, p0, LRx0;->a:I

    .line 3
    iput p3, p0, LRx0;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lbh;)V
    .locals 3

    .line 1
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-ltz p2, :cond_1

    .line 2
    iget p4, p0, LRx0;->a:I

    rem-int v0, p2, p4

    .line 3
    iget v1, p0, LRx0;->b:I

    mul-int v2, v0, v1

    div-int/2addr v2, p4

    sub-int v2, v1, v2

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, v1

    .line 4
    div-int/2addr v0, p4

    if-ge p2, p4, :cond_0

    move p3, v1

    .line 5
    :cond_0
    iget p2, p0, LRx0;->b:I

    move p4, p2

    move p2, p3

    move p3, v2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, p3, p2, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
