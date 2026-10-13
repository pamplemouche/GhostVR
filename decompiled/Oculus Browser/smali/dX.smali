.class public final LdX;
.super Lz61;
.source "PG"

# interfaces
.implements LKW;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(LIW;)V
    .locals 8

    .line 17
    new-instance v0, LVW;

    invoke-direct {v0}, LVW;-><init>()V

    .line 18
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 19
    iget-object v2, v1, Ly61;->x:LK61;

    .line 20
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 21
    new-instance v3, LI61;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, LI61;-><init>(IIJ)V

    .line 22
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    new-instance v1, LXW;

    invoke-direct {v1, p1}, LXW;-><init>(LIW;)V

    .line 23
    invoke-interface {v2, v0, v1}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public a(LOX;LJW;)V
    .locals 7

    .line 1
    new-instance v0, LZW;

    invoke-direct {v0}, LZW;-><init>()V

    .line 2
    iput-object p1, v0, LZW;->b:LOX;

    .line 3
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 4
    iget-object v1, p1, Ly61;->x:LK61;

    .line 5
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 6
    new-instance v2, LI61;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, LI61;-><init>(IIJ)V

    .line 7
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance v0, LbX;

    invoke-direct {v0, p2}, LbX;-><init>(LJW;)V

    .line 8
    invoke-interface {v1, p1, v0}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public a(LRX;LHW;)V
    .locals 6

    .line 9
    new-instance v0, LRW;

    invoke-direct {v0}, LRW;-><init>()V

    .line 10
    iput-object p1, v0, LRW;->b:LRX;

    .line 11
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 12
    iget-object v1, p1, Ly61;->x:LK61;

    .line 13
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 14
    new-instance v2, LI61;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v5, v5, v3, v4}, LI61;-><init>(IIJ)V

    .line 15
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance v0, LTW;

    invoke-direct {v0, p2}, LTW;-><init>(LHW;)V

    .line 16
    invoke-interface {v1, p1, v0}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    .line 1
    new-instance v0, LQW;

    invoke-direct {v0}, LQW;-><init>()V

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
