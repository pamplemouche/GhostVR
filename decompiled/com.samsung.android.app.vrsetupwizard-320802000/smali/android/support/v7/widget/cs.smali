.class Landroid/support/v7/widget/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ew;


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cs;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/cs;->d:I

    return-void
.end method

.method a(II)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/cs;->a:I

    iput p2, p0, Landroid/support/v7/widget/cs;->b:I

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/cs;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/cs;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/ej;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/et;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/ag;

    invoke-virtual {v1}, Landroid/support/v7/widget/ag;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/ej;

    invoke-virtual {v1}, Landroid/support/v7/widget/ej;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/et;->a(ILandroid/support/v7/widget/ew;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->z()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/cs;->a:I

    iget v2, p0, Landroid/support/v7/widget/cs;->b:I

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v7/widget/et;->a(IILandroid/support/v7/widget/fq;Landroid/support/v7/widget/ew;)V

    :cond_2
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/cs;->d:I

    iget v2, v0, Landroid/support/v7/widget/et;->z:I

    if-le v1, v2, :cond_3

    iget v1, p0, Landroid/support/v7/widget/cs;->d:I

    iput v1, v0, Landroid/support/v7/widget/et;->z:I

    iput-boolean p2, v0, Landroid/support/v7/widget/et;->A:Z

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ff;

    invoke-virtual {p1}, Landroid/support/v7/widget/ff;->b()V

    :cond_3
    return-void
.end method

.method a(I)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/cs;->c:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/cs;->d:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/cs;->c:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Landroid/support/v7/widget/cs;->d:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/support/v7/widget/cs;->c:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/cs;->c:[I

    iget-object v1, p0, Landroid/support/v7/widget/cs;->c:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/cs;->c:[I

    iget-object v2, p0, Landroid/support/v7/widget/cs;->c:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/cs;->c:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    iget p1, p0, Landroid/support/v7/widget/cs;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/cs;->d:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
