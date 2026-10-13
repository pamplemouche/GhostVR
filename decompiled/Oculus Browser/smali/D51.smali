.class public final LD51;
.super Lz61;
.source "PG"

# interfaces
.implements Lx51;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 9
    new-instance v0, LA51;

    invoke-direct {v0}, LA51;-><init>()V

    .line 10
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 11
    iget-object v2, v1, Ly61;->x:LK61;

    .line 12
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 13
    new-instance v3, LI61;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LI61;-><init>(I)V

    .line 14
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    .line 15
    invoke-interface {v2, v0}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 1
    new-instance v0, LC51;

    invoke-direct {v0}, LC51;-><init>()V

    .line 2
    iput-wide p1, v0, LC51;->b:J

    .line 3
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 4
    iget-object p2, p1, Ly61;->x:LK61;

    .line 5
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 6
    new-instance v1, LI61;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LI61;-><init>(I)V

    .line 7
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 8
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 16
    new-instance v0, LB51;

    invoke-direct {v0}, LB51;-><init>()V

    .line 17
    iput-boolean p1, v0, LB51;->b:Z

    .line 18
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 19
    iget-object v1, p1, Ly61;->x:LK61;

    .line 20
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 21
    new-instance v2, LI61;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, LI61;-><init>(I)V

    .line 22
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 23
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
