.class public final Lt31;
.super Lz61;
.source "PG"

# interfaces
.implements Lp31;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(JLq31;)V
    .locals 6

    .line 1
    new-instance v0, Lz31;

    invoke-direct {v0}, Lz31;-><init>()V

    .line 2
    iput-wide p1, v0, Lz31;->b:J

    .line 3
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 4
    iget-object p2, p1, Ly61;->x:LK61;

    .line 5
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 6
    new-instance v1, LI61;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, LI61;-><init>(IIJ)V

    .line 7
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance v0, LB31;

    invoke-direct {v0, p3}, LB31;-><init>(Lq31;)V

    .line 8
    invoke-interface {p2, p1, v0}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public a(Lo31;)V
    .locals 7

    .line 9
    new-instance v0, Lv31;

    invoke-direct {v0}, Lv31;-><init>()V

    .line 10
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 11
    iget-object v2, v1, Ly61;->x:LK61;

    .line 12
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 13
    new-instance v3, LI61;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v6, v6, v4, v5}, LI61;-><init>(IIJ)V

    .line 14
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    new-instance v1, Lx31;

    invoke-direct {v1, p1}, Lx31;-><init>(Lo31;)V

    .line 15
    invoke-interface {v2, v0, v1}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method
