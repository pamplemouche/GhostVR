.class public abstract Landroid/support/v7/widget/en;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/support/v7/widget/ep;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/eo;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Landroid/view/View;

.field private i:I

.field private j:Landroid/support/v7/widget/ft;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/en;->a:Landroid/support/v7/widget/ep;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/en;->b:Ljava/util/ArrayList;

    const-wide/16 v1, 0x78

    iput-wide v1, p0, Landroid/support/v7/widget/en;->c:J

    iput-wide v1, p0, Landroid/support/v7/widget/en;->d:J

    const-wide/16 v1, 0xfa

    iput-wide v1, p0, Landroid/support/v7/widget/en;->e:J

    iput-wide v1, p0, Landroid/support/v7/widget/en;->f:J

    const-wide/16 v1, 0x2bc

    iput-wide v1, p0, Landroid/support/v7/widget/en;->g:J

    iput-object v0, p0, Landroid/support/v7/widget/en;->h:Landroid/view/View;

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/en;->i:I

    iput-object v0, p0, Landroid/support/v7/widget/en;->j:Landroid/support/v7/widget/ft;

    return-void
.end method

.method static e(Landroid/support/v7/widget/ft;)I
    .locals 3

    invoke-static {p0}, Landroid/support/v7/widget/ft;->d(Landroid/support/v7/widget/ft;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->j()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ft;->i()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/fq;Landroid/support/v7/widget/ft;)Landroid/support/v7/widget/eq;
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/en;->l()Landroid/support/v7/widget/eq;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/eq;->a(Landroid/support/v7/widget/ft;)Landroid/support/v7/widget/eq;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v7/widget/fq;Landroid/support/v7/widget/ft;ILjava/util/List;)Landroid/support/v7/widget/eq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/fq;",
            "Landroid/support/v7/widget/ft;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/eq;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/en;->l()Landroid/support/v7/widget/eq;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/eq;->a(Landroid/support/v7/widget/ft;)Landroid/support/v7/widget/eq;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/ep;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/en;->a:Landroid/support/v7/widget/ep;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/en;->h:Landroid/view/View;

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)Z
.end method

.method public a(Landroid/support/v7/widget/ft;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/ft;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/en;->h(Landroid/support/v7/widget/ft;)Z

    move-result p1

    return p1
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)Z
.end method

.method public abstract c(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)Z
.end method

.method public abstract d()V
.end method

.method public abstract d(Landroid/support/v7/widget/ft;)V
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/en;->c:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/en;->d:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/ft;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/en;->g(Landroid/support/v7/widget/ft;)V

    iget-object v0, p0, Landroid/support/v7/widget/en;->a:Landroid/support/v7/widget/ep;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ep;->a(Landroid/support/v7/widget/ft;)V

    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/en;->e:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/ft;)V
    .locals 0

    return-void
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/en;->f:J

    return-wide v0
.end method

.method public h(Landroid/support/v7/widget/ft;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/en;->i:I

    return v0
.end method

.method public j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/en;->h:Landroid/view/View;

    return-object v0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/eo;

    invoke-interface {v2}, Landroid/support/v7/widget/eo;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public l()Landroid/support/v7/widget/eq;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/eq;

    invoke-direct {v0}, Landroid/support/v7/widget/eq;-><init>()V

    return-object v0
.end method
