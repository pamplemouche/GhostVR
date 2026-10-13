.class public final LC91;
.super Lz61;
.source "PG"

# interfaces
.implements LZ81;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 30
    new-instance v0, Lv91;

    invoke-direct {v0}, Lv91;-><init>()V

    .line 31
    iput p1, v0, Lv91;->b:I

    .line 32
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 33
    iget-object v1, p1, Ly61;->x:LK61;

    .line 34
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 35
    new-instance v2, LI61;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, LI61;-><init>(I)V

    .line 36
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 37
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(LH91;)V
    .locals 4

    .line 38
    new-instance v0, Lz91;

    invoke-direct {v0}, Lz91;-><init>()V

    .line 39
    iput-object p1, v0, Lz91;->b:LH91;

    .line 40
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 41
    iget-object v1, p1, Ly61;->x:LK61;

    .line 42
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 43
    new-instance v2, LI61;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, LI61;-><init>(I)V

    .line 44
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 45
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(LU81;)V
    .locals 4

    .line 22
    new-instance v0, LB91;

    invoke-direct {v0}, LB91;-><init>()V

    .line 23
    iput-object p1, v0, LB91;->b:LU81;

    .line 24
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 25
    iget-object v1, p1, Ly61;->x:LK61;

    .line 26
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 27
    new-instance v2, LI61;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, LI61;-><init>(I)V

    .line 28
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 29
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(Lc91;[Lorg/chromium/payments/mojom/PaymentMethodData;LU81;LY81;Z)V
    .locals 1

    .line 1
    new-instance v0, Lx91;

    invoke-direct {v0}, Lx91;-><init>()V

    .line 2
    iput-object p1, v0, Lx91;->b:Lc91;

    .line 3
    iput-object p2, v0, Lx91;->c:[Lorg/chromium/payments/mojom/PaymentMethodData;

    .line 4
    iput-object p3, v0, Lx91;->d:LU81;

    .line 5
    iput-object p4, v0, Lx91;->e:LY81;

    .line 6
    iput-boolean p5, v0, Lx91;->f:Z

    .line 7
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 8
    iget-object p2, p1, Ly61;->x:LK61;

    .line 9
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 10
    new-instance p3, LI61;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, LI61;-><init>(I)V

    .line 11
    invoke-virtual {v0, p1, p3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 12
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 13
    new-instance v0, LA91;

    invoke-direct {v0}, LA91;-><init>()V

    .line 14
    iput-boolean p1, v0, LA91;->b:Z

    .line 15
    iput-boolean p2, v0, LA91;->c:Z

    .line 16
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 17
    iget-object p2, p1, Ly61;->x:LK61;

    .line 18
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 19
    new-instance v1, LI61;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LI61;-><init>(I)V

    .line 20
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 21
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 1
    new-instance v0, Lw91;

    invoke-direct {v0}, Lw91;-><init>()V

    .line 2
    iput-boolean p1, v0, Lw91;->b:Z

    .line 3
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 4
    iget-object v1, p1, Ly61;->x:LK61;

    .line 5
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 6
    new-instance v2, LI61;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LI61;-><init>(I)V

    .line 7
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 8
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    new-instance v0, Ly91;

    invoke-direct {v0}, Ly91;-><init>()V

    .line 2
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 3
    iget-object v2, v1, Ly61;->x:LK61;

    .line 4
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 5
    new-instance v3, LI61;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LI61;-><init>(I)V

    .line 6
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    .line 7
    invoke-interface {v2, v0}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    new-instance v0, Lu91;

    invoke-direct {v0}, Lu91;-><init>()V

    .line 2
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 3
    iget-object v2, v1, Ly61;->x:LK61;

    .line 4
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 5
    new-instance v3, LI61;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, LI61;-><init>(I)V

    .line 6
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    .line 7
    invoke-interface {v2, v0}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public z()V
    .locals 5

    .line 1
    new-instance v0, Lt91;

    invoke-direct {v0}, Lt91;-><init>()V

    .line 2
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 3
    iget-object v2, v1, Ly61;->x:LK61;

    .line 4
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 5
    new-instance v3, LI61;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, LI61;-><init>(I)V

    .line 6
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    .line 7
    invoke-interface {v2, v0}, LJ61;->a(LH61;)Z

    return-void
.end method
