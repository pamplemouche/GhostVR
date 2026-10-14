.class Landroid/support/v7/widget/lu;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/support/v4/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/a<",
            "Landroid/support/v7/widget/ft;",
            "Landroid/support/v7/widget/lv;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/support/v4/k/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/h<",
            "Landroid/support/v7/widget/ft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/k/a;

    invoke-direct {v0}, Landroid/support/v4/k/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    new-instance v0, Landroid/support/v4/k/h;

    invoke-direct {v0}, Landroid/support/v4/k/h;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/lu;->b:Landroid/support/v4/k/h;

    return-void
.end method

.method private a(Landroid/support/v7/widget/ft;I)Landroid/support/v7/widget/eq;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v1, p1}, Landroid/support/v4/k/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/lv;

    if-eqz v1, :cond_4

    iget v2, v1, Landroid/support/v7/widget/lv;->a:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_4

    iget v0, v1, Landroid/support/v7/widget/lv;->a:I

    not-int v2, p2

    and-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/lv;->a:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object p2, v1, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    iget-object p2, v1, Landroid/support/v7/widget/lv;->c:Landroid/support/v7/widget/eq;

    :goto_0
    iget v0, v1, Landroid/support/v7/widget/lv;->a:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->d(I)Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v7/widget/lv;->a(Landroid/support/v7/widget/lv;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method a(J)Landroid/support/v7/widget/ft;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/lu;->b:Landroid/support/v4/k/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/k/h;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ft;

    return-object p1
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0}, Landroid/support/v4/k/a;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/lu;->b:Landroid/support/v4/k/h;

    invoke-virtual {v0}, Landroid/support/v4/k/h;->c()V

    return-void
.end method

.method a(JLandroid/support/v7/widget/ft;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/lu;->b:Landroid/support/v4/k/h;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/k/h;->b(JLjava/lang/Object;)V

    return-void
.end method

.method a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/lv;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/lv;->a()Landroid/support/v7/widget/lv;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    iget p1, v0, Landroid/support/v7/widget/lv;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Landroid/support/v7/widget/lv;->a:I

    return-void
.end method

.method a(Landroid/support/v7/widget/lw;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0}, Landroid/support/v4/k/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/k/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ft;

    iget-object v2, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/k/a;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/lv;

    iget v3, v2, Landroid/support/v7/widget/lv;->a:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    :goto_1
    invoke-interface {p1, v1}, Landroid/support/v7/widget/lw;->a(Landroid/support/v7/widget/ft;)V

    goto :goto_4

    :cond_0
    iget v3, v2, Landroid/support/v7/widget/lv;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    iget-object v4, v2, Landroid/support/v7/widget/lv;->c:Landroid/support/v7/widget/eq;

    :goto_2
    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/lw;->a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)V

    goto :goto_4

    :cond_2
    iget v3, v2, Landroid/support/v7/widget/lv;->a:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    :goto_3
    iget-object v3, v2, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    iget-object v4, v2, Landroid/support/v7/widget/lv;->c:Landroid/support/v7/widget/eq;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/lw;->b(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)V

    goto :goto_4

    :cond_3
    iget v3, v2, Landroid/support/v7/widget/lv;->a:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget-object v3, v2, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    iget-object v4, v2, Landroid/support/v7/widget/lv;->c:Landroid/support/v7/widget/eq;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/lw;->c(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)V

    goto :goto_4

    :cond_4
    iget v3, v2, Landroid/support/v7/widget/lv;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    iget v3, v2, Landroid/support/v7/widget/lv;->a:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget v1, v2, Landroid/support/v7/widget/lv;->a:I

    :goto_4
    invoke-static {v2}, Landroid/support/v7/widget/lv;->a(Landroid/support/v7/widget/lv;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method a(Landroid/support/v7/widget/ft;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/lv;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/support/v7/widget/lv;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b(Landroid/support/v7/widget/ft;)Landroid/support/v7/widget/eq;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/lu;->a(Landroid/support/v7/widget/ft;I)Landroid/support/v7/widget/eq;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 0

    invoke-static {}, Landroid/support/v7/widget/lv;->b()V

    return-void
.end method

.method b(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/lv;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/lv;->a()Landroid/support/v7/widget/lv;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Landroid/support/v7/widget/lv;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/support/v7/widget/lv;->a:I

    iput-object p2, v0, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    return-void
.end method

.method c(Landroid/support/v7/widget/ft;)Landroid/support/v7/widget/eq;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/lu;->a(Landroid/support/v7/widget/ft;I)Landroid/support/v7/widget/eq;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/lv;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/lv;->a()Landroid/support/v7/widget/lv;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/lv;->c:Landroid/support/v7/widget/eq;

    iget p1, v0, Landroid/support/v7/widget/lv;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroid/support/v7/widget/lv;->a:I

    return-void
.end method

.method d(Landroid/support/v7/widget/ft;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/lv;

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/support/v7/widget/lv;->a:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method e(Landroid/support/v7/widget/ft;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/lv;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/lv;->a()Landroid/support/v7/widget/lv;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Landroid/support/v7/widget/lv;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/support/v7/widget/lv;->a:I

    return-void
.end method

.method f(Landroid/support/v7/widget/ft;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/lv;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/lv;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/support/v7/widget/lv;->a:I

    return-void
.end method

.method g(Landroid/support/v7/widget/ft;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/lu;->b:Landroid/support/v4/k/h;

    invoke-virtual {v0}, Landroid/support/v4/k/h;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/lu;->b:Landroid/support/v4/k/h;

    invoke-virtual {v1, v0}, Landroid/support/v4/k/h;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/lu;->b:Landroid/support/v4/k/h;

    invoke-virtual {v1, v0}, Landroid/support/v4/k/h;->a(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/lu;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/lv;

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/lv;->a(Landroid/support/v7/widget/lv;)V

    :cond_2
    return-void
.end method

.method public h(Landroid/support/v7/widget/ft;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/lu;->f(Landroid/support/v7/widget/ft;)V

    return-void
.end method
