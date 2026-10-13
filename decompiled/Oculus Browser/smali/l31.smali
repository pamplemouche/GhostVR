.class public final Ll31;
.super Lz61;
.source "PG"

# interfaces
.implements Lr21;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public M()V
    .locals 5

    .line 1
    new-instance v0, Lg31;

    invoke-direct {v0}, Lg31;-><init>()V

    .line 2
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 3
    iget-object v2, v1, Ly61;->x:LK61;

    .line 4
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 5
    new-instance v3, LI61;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LI61;-><init>(I)V

    .line 6
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    .line 7
    invoke-interface {v2, v0}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(ILp21;)V
    .locals 7

    .line 18
    new-instance v0, LS21;

    invoke-direct {v0}, LS21;-><init>()V

    .line 19
    iput p1, v0, LS21;->b:I

    .line 20
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 21
    iget-object v1, p1, Ly61;->x:LK61;

    .line 22
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 23
    new-instance v2, LI61;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, LI61;-><init>(IIJ)V

    .line 24
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance v0, LU21;

    invoke-direct {v0, p2}, LU21;-><init>(Lp21;)V

    .line 25
    invoke-interface {v1, p1, v0}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public a(ILq21;)V
    .locals 7

    .line 35
    new-instance v0, LW21;

    invoke-direct {v0}, LW21;-><init>()V

    .line 36
    iput p1, v0, LW21;->b:I

    .line 37
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 38
    iget-object v1, p1, Ly61;->x:LK61;

    .line 39
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 40
    new-instance v2, LI61;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, LI61;-><init>(IIJ)V

    .line 41
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance v0, LY21;

    invoke-direct {v0, p2}, LY21;-><init>(Lq21;)V

    .line 42
    invoke-interface {v1, p1, v0}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public a(LM21;ILt21;)V
    .locals 6

    .line 26
    new-instance v0, Lh31;

    invoke-direct {v0}, Lh31;-><init>()V

    .line 27
    iput-object p1, v0, Lh31;->b:LM21;

    .line 28
    iput p2, v0, Lh31;->c:I

    .line 29
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 30
    iget-object p2, p1, Ly61;->x:LK61;

    .line 31
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 32
    new-instance v1, LI61;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, LI61;-><init>(IIJ)V

    .line 33
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance v0, Lj31;

    invoke-direct {v0, p3}, Lj31;-><init>(Lt21;)V

    .line 34
    invoke-interface {p2, p1, v0}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public a(Ll21;LK21;Ls21;)V
    .locals 5

    .line 9
    new-instance v0, La31;

    invoke-direct {v0}, La31;-><init>()V

    .line 10
    iput-object p1, v0, La31;->b:Ll21;

    .line 11
    iput-object p2, v0, La31;->c:LK21;

    .line 12
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 13
    iget-object p2, p1, Ly61;->x:LK61;

    .line 14
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 15
    new-instance v1, LI61;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v4, v4, v2, v3}, LI61;-><init>(IIJ)V

    .line 16
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance v0, Lc31;

    invoke-direct {v0, p3}, Lc31;-><init>(Ls21;)V

    .line 17
    invoke-interface {p2, p1, v0}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public a(Lo21;)V
    .locals 8

    .line 43
    new-instance v0, LO21;

    invoke-direct {v0}, LO21;-><init>()V

    .line 44
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 45
    iget-object v2, v1, Ly61;->x:LK61;

    .line 46
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 47
    new-instance v3, LI61;

    const/4 v4, 0x5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, LI61;-><init>(IIJ)V

    .line 48
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    new-instance v1, LQ21;

    invoke-direct {v1, p1}, LQ21;-><init>(Lo21;)V

    .line 49
    invoke-interface {v2, v0, v1}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public a(Lw21;)V
    .locals 4

    .line 1
    new-instance v0, Lf31;

    invoke-direct {v0}, Lf31;-><init>()V

    .line 2
    iput-object p1, v0, Lf31;->b:Lw21;

    .line 3
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 4
    iget-object v1, p1, Ly61;->x:LK61;

    .line 5
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 6
    new-instance v2, LI61;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LI61;-><init>(I)V

    .line 7
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 8
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public s()V
    .locals 5

    .line 1
    new-instance v0, Le31;

    invoke-direct {v0}, Le31;-><init>()V

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
