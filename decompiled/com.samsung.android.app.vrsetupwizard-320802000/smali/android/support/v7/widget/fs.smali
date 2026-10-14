.class Landroid/support/v7/widget/fs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/view/animation/Interpolator;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView;

.field private c:I

.field private d:I

.field private e:Landroid/support/v7/widget/iv;

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/fs;->a:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/fs;->f:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/fs;->g:Z

    new-instance v0, Landroid/support/v7/widget/iv;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->V:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/iv;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/fs;->e:Landroid/support/v7/widget/iv;

    return-void
.end method

.method private a(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method static synthetic a(Landroid/support/v7/widget/fs;)Landroid/support/v7/widget/iv;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/fs;->e:Landroid/support/v7/widget/iv;

    return-object p0
.end method

.method private b(IIII)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int p3, p3, p3

    mul-int p4, p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-eqz v2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float p1, p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/fs;->a(F)F

    move-result p1

    mul-float p1, p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/fs;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/fs;->f:Z

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/fs;->f:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/fs;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/fs;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/fs;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/fs;->g:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/be;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 10

    iget-object v0, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/fs;->d:I

    iput v0, p0, Landroid/support/v7/widget/fs;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/fs;->e:Landroid/support/v7/widget/iv;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/support/v7/widget/iv;->a(IIIIIIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/fs;->a()V

    return-void
.end method

.method public a(III)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/fs;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/fs;->b(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/fs;->a(III)V

    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2, v1}, Landroid/support/v7/widget/RecyclerView;->j(II)Z

    iget-object v4, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/RecyclerView;->a(II[I[II)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/fs;->a:Landroid/view/animation/Interpolator;

    if-eq v1, p4, :cond_1

    iput-object p4, p0, Landroid/support/v7/widget/fs;->a:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/support/v7/widget/iv;

    iget-object v2, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Landroid/support/v7/widget/iv;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v7/widget/fs;->e:Landroid/support/v7/widget/iv;

    :cond_1
    iget-object p4, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p4, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    const/4 p4, 0x0

    iput p4, p0, Landroid/support/v7/widget/fs;->d:I

    iput p4, p0, Landroid/support/v7/widget/fs;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/fs;->e:Landroid/support/v7/widget/iv;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/iv;->a(IIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-ge p1, p3, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/fs;->e:Landroid/support/v7/widget/iv;

    invoke-virtual {p1}, Landroid/support/v7/widget/iv;->g()Z

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/fs;->a()V

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public a(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/fs;->b(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->V:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/fs;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/fs;->e:Landroid/support/v7/widget/iv;

    invoke-virtual {v0}, Landroid/support/v7/widget/iv;->h()V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/fs;->a(IIII)V

    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/fs;->b()V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/fs;->c()V

    iget-object v1, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v1, v0, Landroid/support/v7/widget/fs;->e:Landroid/support/v7/widget/iv;

    iget-object v2, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object v2, v2, Landroid/support/v7/widget/et;->v:Landroid/support/v7/widget/fn;

    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->g()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->M(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->b()I

    move-result v11

    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->c()I

    move-result v12

    iget v5, v0, Landroid/support/v7/widget/fs;->c:I

    sub-int v13, v11, v5

    iget v5, v0, Landroid/support/v7/widget/fs;->d:I

    sub-int v14, v12, v5

    iput v11, v0, Landroid/support/v7/widget/fs;->c:I

    iput v12, v0, Landroid/support/v7/widget/fs;->d:I

    iget-object v5, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, v13

    move v7, v14

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->a(II[I[II)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    aget v5, v3, v4

    sub-int/2addr v13, v5

    aget v5, v3, v6

    sub-int/2addr v14, v5

    iget-object v5, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    aget v3, v3, v6

    invoke-static {v5, v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v14}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;I)V

    :goto_0
    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/ej;

    if-eqz v3, :cond_7

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->e()V

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->n()V

    const-string v3, "RV Scroll"

    invoke-static {v3}, Landroid/support/v4/os/o;->a(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/fq;)V

    if-eqz v13, :cond_2

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object v5, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ff;

    iget-object v7, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    invoke-virtual {v3, v13, v5, v7}, Landroid/support/v7/widget/et;->a(ILandroid/support/v7/widget/ff;Landroid/support/v7/widget/fq;)I

    move-result v3

    sub-int v5, v13, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-eqz v14, :cond_3

    iget-object v7, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object v8, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ff;

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    invoke-virtual {v7, v14, v8, v9}, Landroid/support/v7/widget/et;->b(ILandroid/support/v7/widget/ff;Landroid/support/v7/widget/fq;)I

    move-result v7

    sub-int v8, v14, v7

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->N(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9, v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9, v6}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_4
    :goto_2
    invoke-static {}, Landroid/support/v4/os/o;->a()V

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->A()V

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->o()V

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v4}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/support/v7/widget/fn;->g()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v2}, Landroid/support/v7/widget/fn;->h()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    invoke-virtual {v9}, Landroid/support/v7/widget/fq;->e()I

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/widget/fn;->f()V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/widget/fn;->i()I

    move-result v10

    if-lt v10, v9, :cond_6

    sub-int/2addr v9, v6

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/fn;->d(I)V

    :cond_6
    sub-int v9, v13, v5

    sub-int v10, v14, v8

    invoke-static {v2, v9, v10}, Landroid/support/v7/widget/fn;->a(Landroid/support/v7/widget/fn;II)V

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_8
    :goto_3
    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_9
    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_a

    iget-object v9, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v13, v14}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    :cond_a
    iget-object v15, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v5

    move/from16 v19, v8

    invoke-virtual/range {v15 .. v21}, Landroid/support/v7/widget/RecyclerView;->a(IIII[II)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v15, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->O(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v15

    aput v4, v15, v4

    iget-object v15, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->O(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v15

    aput v4, v15, v6

    :cond_b
    if-nez v5, :cond_c

    if-eqz v8, :cond_16

    :cond_c
    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->d()F

    move-result v15

    float-to-int v15, v15

    if-eq v5, v11, :cond_e

    if-gez v5, :cond_d

    neg-int v4, v15

    goto :goto_4

    :cond_d
    if-lez v5, :cond_e

    move v4, v15

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    :goto_4
    if-eq v8, v12, :cond_10

    if-gez v8, :cond_f

    neg-int v15, v15

    goto :goto_5

    :cond_f
    if-lez v8, :cond_10

    goto :goto_5

    :cond_10
    const/4 v15, 0x0

    :goto_5
    if-eqz v9, :cond_11

    if-ltz v8, :cond_12

    :cond_11
    iget-object v6, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v6

    if-eq v6, v10, :cond_12

    iget-object v6, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v4, v15}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    :cond_12
    if-eqz v9, :cond_13

    if-ltz v8, :cond_16

    :cond_13
    if-nez v4, :cond_14

    if-eq v5, v11, :cond_14

    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->e()I

    move-result v4

    if-nez v4, :cond_16

    :cond_14
    if-nez v15, :cond_15

    if-eq v8, v12, :cond_15

    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->f()I

    move-result v4

    if-nez v4, :cond_16

    :cond_15
    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->h()V

    :cond_16
    if-nez v3, :cond_17

    if-eqz v7, :cond_18

    :cond_17
    iget-object v4, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3, v7}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    :cond_18
    iget-object v4, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->P(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_19
    if-eqz v14, :cond_1a

    iget-object v4, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    invoke-virtual {v4}, Landroid/support/v7/widget/et;->f()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-ne v7, v14, :cond_1a

    const/4 v4, 0x1

    goto :goto_6

    :cond_1a
    const/4 v4, 0x0

    :goto_6
    if-eqz v13, :cond_1b

    iget-object v5, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    invoke-virtual {v5}, Landroid/support/v7/widget/et;->e()Z

    move-result v5

    if-eqz v5, :cond_1b

    if-ne v3, v13, :cond_1b

    const/4 v3, 0x1

    goto :goto_7

    :cond_1b
    const/4 v3, 0x0

    :goto_7
    if-nez v13, :cond_1c

    if-eqz v14, :cond_1e

    :cond_1c
    if-nez v3, :cond_1e

    if-eqz v4, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v3, 0x0

    goto :goto_9

    :cond_1e
    :goto_8
    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->a()Z

    move-result v4

    if-nez v4, :cond_20

    if-nez v3, :cond_1f

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->k(I)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_a

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/fs;->a()V

    iget-object v1, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/cq;

    if-eqz v1, :cond_25

    iget-object v1, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/cq;

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v13, v14}, Landroid/support/v7/widget/cq;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_d

    :cond_20
    :goto_a
    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    if-eq v3, v10, :cond_22

    if-eqz v9, :cond_22

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->Q(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v1}, Landroid/support/v7/widget/iv;->d()F

    move-result v1

    float-to-int v1, v1

    if-lez v8, :cond_21

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v3, v4, v1}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    goto :goto_c

    :cond_21
    const/4 v4, 0x0

    if-gez v8, :cond_23

    iget-object v3, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    neg-int v1, v1

    goto :goto_b

    :cond_22
    const/4 v4, 0x0

    :cond_23
    :goto_c
    iget-object v1, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->H()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v7/widget/cs;

    invoke-virtual {v1}, Landroid/support/v7/widget/cs;->a()V

    :cond_24
    iget-object v1, v0, Landroid/support/v7/widget/fs;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    :cond_25
    :goto_d
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/support/v7/widget/fn;->g()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    invoke-static {v2, v1, v1}, Landroid/support/v7/widget/fn;->a(Landroid/support/v7/widget/fn;II)V

    :cond_26
    iget-boolean v1, v0, Landroid/support/v7/widget/fs;->g:Z

    if-nez v1, :cond_27

    invoke-virtual {v2}, Landroid/support/v7/widget/fn;->f()V

    :cond_27
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/fs;->d()V

    return-void
.end method
