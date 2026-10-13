.class public abstract LA61;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lj71;LK61;)LC61;
.end method

.method public final a(Lx71;I)LC61;
    .locals 3

    .line 7
    new-instance v0, LP61;

    invoke-direct {v0, p1}, LP61;-><init>(Lx71;)V

    .line 8
    invoke-interface {p1}, Lq71;->c()Lj71;

    move-result-object p1

    .line 9
    new-instance v1, Lc61;

    invoke-direct {v1, p1, v0}, Lc61;-><init>(Lj71;LL61;)V

    invoke-virtual {p0, p1, v1}, LA61;->a(Lj71;LK61;)LC61;

    move-result-object p1

    .line 10
    new-instance v1, Ln61;

    invoke-direct {v1}, Ln61;-><init>()V

    .line 11
    iget-object v2, v1, Ln61;->w:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, v0, LP61;->w:Lj61;

    .line 13
    iput-object v1, v2, Lj61;->A:Lg61;

    .line 14
    invoke-virtual {v0}, LP61;->a()V

    .line 15
    move-object v0, p1

    check-cast v0, Lz61;

    .line 16
    iget-object v0, v0, Lz61;->w:Ly61;

    .line 17
    iput p2, v0, Ly61;->z:I

    return-object p1
.end method

.method public abstract a(Lj71;LE61;)LD61;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(LE61;LG61;)V
    .locals 0

    .line 6
    invoke-virtual {p2}, LG61;->y()Lx71;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LA61;->a(LE61;Lx71;)V

    return-void
.end method

.method public a(LE61;Lx71;)V
    .locals 1

    .line 1
    new-instance v0, LP61;

    invoke-direct {v0, p2}, LP61;-><init>(Lx71;)V

    .line 2
    invoke-interface {p2}, Lq71;->c()Lj71;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p1}, LP61;->a(Lg61;)V

    .line 4
    invoke-virtual {p0, p2, p1}, LA61;->a(Lj71;LE61;)LD61;

    move-result-object p1

    invoke-virtual {v0, p1}, LP61;->a(LK61;)V

    .line 5
    invoke-virtual {v0}, LP61;->a()V

    return-void
.end method

.method public abstract b()I
.end method
