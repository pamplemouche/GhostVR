.class public Lrf;
.super LUg;
.source "PG"


# instance fields
.field public final synthetic a:Luf;


# direct methods
.method public constructor <init>(Luf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrf;->a:Luf;

    invoke-direct {p0}, LUg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8

    .line 1
    iget-object p2, p0, Lrf;->a:Luf;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 3
    iget-object v0, p2, Luf;->s:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 4
    iget v1, p2, Luf;->r:I

    sub-int v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 5
    iget v2, p2, Luf;->a:I

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p2, Luf;->t:Z

    .line 6
    iget-object v2, p2, Luf;->s:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 7
    iget v5, p2, Luf;->q:I

    sub-int v6, v2, v5

    if-lez v6, :cond_1

    .line 8
    iget v6, p2, Luf;->a:I

    if-lt v5, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, p2, Luf;->u:Z

    .line 9
    iget-boolean v7, p2, Luf;->t:Z

    if-nez v7, :cond_2

    if-nez v6, :cond_2

    .line 10
    iget p1, p2, Luf;->v:I

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p2, v4}, Luf;->a(I)V

    goto :goto_2

    .line 12
    :cond_2
    iget-boolean v4, p2, Luf;->t:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    int-to-float p1, p1

    int-to-float v4, v1

    div-float v7, v4, v6

    add-float/2addr v7, p1

    mul-float v7, v7, v4

    int-to-float p1, v0

    div-float/2addr v7, p1

    float-to-int p1, v7

    .line 13
    iput p1, p2, Luf;->l:I

    mul-int p1, v1, v1

    .line 14
    div-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Luf;->k:I

    .line 15
    :cond_3
    iget-boolean p1, p2, Luf;->u:Z

    if-eqz p1, :cond_4

    int-to-float p1, p3

    int-to-float p3, v5

    div-float v0, p3, v6

    add-float/2addr v0, p1

    mul-float v0, v0, p3

    int-to-float p1, v2

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 16
    iput p1, p2, Luf;->o:I

    mul-int p1, v5, v5

    .line 17
    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Luf;->n:I

    .line 18
    :cond_4
    iget p1, p2, Luf;->v:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_6

    .line 19
    :cond_5
    invoke-virtual {p2, v3}, Luf;->a(I)V

    :cond_6
    :goto_2
    return-void
.end method
