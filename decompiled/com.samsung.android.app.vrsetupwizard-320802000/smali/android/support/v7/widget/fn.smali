.class public abstract Landroid/support/v7/widget/fn;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/et;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroid/support/v7/widget/fo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/fn;->a:I

    new-instance v0, Landroid/support/v7/widget/fo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/fo;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/fn;->g:Landroid/support/v7/widget/fo;

    return-void
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, p0, Landroid/support/v7/widget/fn;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/fn;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/fn;->f()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/fn;->d:Z

    iget-object v1, p0, Landroid/support/v7/widget/fn;->f:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/fn;->a(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/fn;->a:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/fn;->f:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    iget-object v3, p0, Landroid/support/v7/widget/fn;->g:Landroid/support/v7/widget/fo;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/fn;->a(Landroid/view/View;Landroid/support/v7/widget/fq;Landroid/support/v7/widget/fo;)V

    iget-object v1, p0, Landroid/support/v7/widget/fn;->g:Landroid/support/v7/widget/fo;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/fo;->a(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/fn;->f()V

    goto :goto_0

    :cond_2
    const-string v1, "SeslRecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/fn;->f:Landroid/view/View;

    :cond_3
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/fn;->e:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    iget-object v2, p0, Landroid/support/v7/widget/fn;->g:Landroid/support/v7/widget/fo;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/fn;->a(IILandroid/support/v7/widget/fq;Landroid/support/v7/widget/fo;)V

    iget-object p1, p0, Landroid/support/v7/widget/fn;->g:Landroid/support/v7/widget/fo;

    invoke-virtual {p1}, Landroid/support/v7/widget/fo;->a()Z

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/fn;->g:Landroid/support/v7/widget/fo;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/fo;->a(Landroid/support/v7/widget/RecyclerView;)V

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroid/support/v7/widget/fn;->e:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/fn;->d:Z

    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/fs;

    invoke-virtual {p1}, Landroid/support/v7/widget/fs;->a()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/fn;->f()V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/fn;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/fn;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected abstract a()V
.end method

.method protected abstract a(IILandroid/support/v7/widget/fq;Landroid/support/v7/widget/fo;)V
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/et;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Landroid/support/v7/widget/fn;->c:Landroid/support/v7/widget/et;

    iget p1, p0, Landroid/support/v7/widget/fn;->a:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    iget p2, p0, Landroid/support/v7/widget/fn;->a:I

    invoke-static {p1, p2}, Landroid/support/v7/widget/fq;->a(Landroid/support/v7/widget/fq;I)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/fn;->e:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/fn;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/fn;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/fn;->e(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/fn;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/widget/fn;->a()V

    iget-object p1, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/fs;

    invoke-virtual {p1}, Landroid/support/v7/widget/fs;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/fq;Landroid/support/v7/widget/fo;)V
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/fn;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/fn;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/fn;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/fn;->a:I

    return-void
.end method

.method public e()Landroid/support/v7/widget/et;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/fn;->c:Landroid/support/v7/widget/et;

    return-object v0
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/et;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final f()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/fn;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/fn;->e:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/fn;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v7/widget/fq;->a(Landroid/support/v7/widget/fq;I)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/fn;->f:Landroid/view/View;

    iput v2, p0, Landroid/support/v7/widget/fn;->a:I

    iput-boolean v0, p0, Landroid/support/v7/widget/fn;->d:Z

    iget-object v0, p0, Landroid/support/v7/widget/fn;->c:Landroid/support/v7/widget/et;

    invoke-static {v0, p0}, Landroid/support/v7/widget/et;->a(Landroid/support/v7/widget/et;Landroid/support/v7/widget/fn;)V

    iput-object v1, p0, Landroid/support/v7/widget/fn;->c:Landroid/support/v7/widget/et;

    iput-object v1, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/fn;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/fn;->e:Z

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/fn;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/fn;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    invoke-virtual {v0}, Landroid/support/v7/widget/et;->v()I

    move-result v0

    return v0
.end method
