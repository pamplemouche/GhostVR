.class public final LCa1;
.super Lz61;
.source "PG"

# interfaces
.implements Lua1;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(LG61;LOa1;)V
    .locals 3

    .line 1
    new-instance v0, Lxa1;

    invoke-direct {v0}, Lxa1;-><init>()V

    .line 2
    iput-object p1, v0, Lxa1;->b:LG61;

    .line 3
    iput-object p2, v0, Lxa1;->c:LOa1;

    .line 4
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 5
    iget-object p2, p1, Ly61;->x:LK61;

    .line 6
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 7
    new-instance v1, LI61;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LI61;-><init>(I)V

    .line 8
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(Lta1;)V
    .locals 7

    .line 10
    new-instance v0, Lya1;

    invoke-direct {v0}, Lya1;-><init>()V

    .line 11
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 12
    iget-object v2, v1, Ly61;->x:LK61;

    .line 13
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 14
    new-instance v3, LI61;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v6, v6, v4, v5}, LI61;-><init>(IIJ)V

    .line 15
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    new-instance v1, LAa1;

    invoke-direct {v1, p1}, LAa1;-><init>(Lta1;)V

    .line 16
    invoke-interface {v2, v0, v1}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method
