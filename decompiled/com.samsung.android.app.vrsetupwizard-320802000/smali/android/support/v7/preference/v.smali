.class Landroid/support/v7/preference/v;
.super Landroid/support/v7/widget/es;


# instance fields
.field final synthetic a:Landroid/support/v7/preference/s;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-direct {p0}, Landroid/support/v7/widget/es;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/preference/v;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/s;Landroid/support/v7/preference/t;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/v;-><init>(Landroid/support/v7/preference/s;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/et;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result p1

    if-ge v0, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    return v2
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ft;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/preference/am;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/preference/am;

    invoke-virtual {v0}, Landroid/support/v7/preference/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/preference/v;->d:Z

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_3

    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ft;

    move-result-object p1

    instance-of p2, p1, Landroid/support/v7/preference/am;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/support/v7/preference/am;

    invoke-virtual {p1}, Landroid/support/v7/preference/am;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/v;->c:I

    iget-object p1, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {p1}, Landroid/support/v7/preference/s;->b(Landroid/support/v7/preference/s;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->y()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/fq;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/es;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/fq;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/ej;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_7

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ft;

    move-result-object v7

    instance-of v8, v7, Landroid/support/v7/preference/am;

    if-eqz v8, :cond_0

    check-cast v7, Landroid/support/v7/preference/am;

    goto :goto_1

    :cond_0
    move-object v7, v2

    :goto_1
    if-nez v3, :cond_1

    move-object v4, v7

    goto :goto_2

    :cond_1
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    move-object v5, v7

    :cond_2
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/support/v7/preference/v;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    invoke-direct {p0, v6, p2}, Landroid/support/v7/preference/v;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/support/v7/preference/v;->b:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroid/support/v7/preference/v;->c:I

    add-int/2addr v10, v8

    invoke-virtual {v9, v1, v8, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Landroid/support/v7/preference/v;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v8, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {v8}, Landroid/support/v7/preference/s;->c(Landroid/support/v7/preference/s;)I

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    iget-boolean v8, v7, Landroid/support/v7/preference/am;->b:Z

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Landroid/support/v7/preference/am;->d()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {v8}, Landroid/support/v7/preference/s;->d(Landroid/support/v7/preference/s;)Landroid/support/v7/g/m;

    move-result-object v8

    iget v7, v7, Landroid/support/v7/preference/am;->a:I

    invoke-virtual {v8, v7}, Landroid/support/v7/g/m;->a(I)V

    iget-object v7, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {v7}, Landroid/support/v7/preference/s;->d(Landroid/support/v7/preference/s;)Landroid/support/v7/g/m;

    move-result-object v7

    invoke-virtual {v7, v6, p1}, Landroid/support/v7/g/m;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_5
    iget-object v8, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {v8}, Landroid/support/v7/preference/s;->e(Landroid/support/v7/preference/s;)Landroid/support/v7/g/k;

    move-result-object v8

    iget v7, v7, Landroid/support/v7/preference/am;->a:I

    invoke-virtual {v8, v7}, Landroid/support/v7/g/k;->a(I)V

    iget-object v7, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {v7}, Landroid/support/v7/preference/s;->e(Landroid/support/v7/preference/s;)Landroid/support/v7/g/k;

    move-result-object v7

    invoke-virtual {v7, v6, p1}, Landroid/support/v7/g/k;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    iget-object p3, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {p3}, Landroid/support/v7/preference/s;->c(Landroid/support/v7/preference/s;)I

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {p3}, Landroid/support/v7/preference/s;->c(Landroid/support/v7/preference/s;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_9

    if-eqz v4, :cond_9

    invoke-direct {p0, p2}, Landroid/support/v7/preference/v;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v4}, Landroid/support/v7/preference/am;->d()Z

    move-result p2

    if-nez p2, :cond_9

    if-eqz v5, :cond_8

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/support/v7/preference/am;->c()I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_9

    :cond_8
    iget-object p2, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {p2}, Landroid/support/v7/preference/s;->f(Landroid/support/v7/preference/s;)Landroid/support/v7/g/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/g/k;->a(Landroid/graphics/Canvas;)V

    return-void

    :cond_9
    iget-object p2, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {p2}, Landroid/support/v7/preference/s;->g(Landroid/support/v7/preference/s;)Landroid/support/v7/g/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/g/k;->a(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/support/v7/preference/v;->c:I

    iput-object p1, p0, Landroid/support/v7/preference/v;->b:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Landroid/support/v7/preference/v;->a:Landroid/support/v7/preference/s;

    invoke-static {p1}, Landroid/support/v7/preference/s;->b(Landroid/support/v7/preference/s;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->y()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/preference/v;->d:Z

    return-void
.end method
