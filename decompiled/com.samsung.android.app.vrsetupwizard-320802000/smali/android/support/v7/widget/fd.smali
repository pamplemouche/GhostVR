.class public Landroid/support/v7/widget/fd;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/fe;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/fd;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/fd;->b:I

    return-void
.end method

.method private b(I)Landroid/support/v7/widget/fe;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/fd;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fe;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/fe;

    invoke-direct {v0}, Landroid/support/v7/widget/fe;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/fd;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide p3

    :cond_0
    const-wide/16 v0, 0x4

    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long p1, p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public a(I)Landroid/support/v7/widget/ft;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/fd;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/fe;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/fe;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/support/v7/widget/fe;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ft;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/fd;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/fd;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/fe;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/support/v7/widget/fe;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    const-string v1, "SeslRecyclerView"

    const-string v2, "clear() wasn\'t executed because RecycledViewPool.mScrap was invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/fd;->b(I)Landroid/support/v7/widget/fe;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/fe;->c:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/fd;->a(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/support/v7/widget/fe;->c:J

    return-void
.end method

.method a(Landroid/support/v7/widget/ej;)V
    .locals 0

    iget p1, p0, Landroid/support/v7/widget/fd;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/fd;->b:I

    return-void
.end method

.method a(Landroid/support/v7/widget/ej;Landroid/support/v7/widget/ej;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/fd;->b()V

    :cond_0
    if-nez p3, :cond_1

    iget p1, p0, Landroid/support/v7/widget/fd;->b:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/fd;->a()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/fd;->a(Landroid/support/v7/widget/ej;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/ft;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/ft;->l()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/fd;->b(I)Landroid/support/v7/widget/fe;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/fe;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/fd;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fe;

    iget v0, v0, Landroid/support/v7/widget/fe;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/ft;->z()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(IJJ)Z
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/fd;->b(I)Landroid/support/v7/widget/fe;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/fe;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method b()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/fd;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/fd;->b:I

    return-void
.end method

.method b(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/fd;->b(I)Landroid/support/v7/widget/fe;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/fe;->d:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/fd;->a(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/support/v7/widget/fe;->d:J

    return-void
.end method

.method b(IJJ)Z
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/fd;->b(I)Landroid/support/v7/widget/fe;

    move-result-object p1

    iget-wide v0, p1, Landroid/support/v7/widget/fe;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    add-long/2addr p2, v0

    cmp-long p1, p2, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
