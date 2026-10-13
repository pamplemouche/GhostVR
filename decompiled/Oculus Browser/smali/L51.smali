.class public final LL51;
.super Lz61;
.source "PG"

# interfaces
.implements LH51;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(LG61;Ly51;LG51;)V
    .locals 2

    .line 1
    new-instance v0, LK51;

    invoke-direct {v0}, LK51;-><init>()V

    .line 2
    iput-object p1, v0, LK51;->b:LG61;

    .line 3
    iput-object p2, v0, LK51;->c:Ly51;

    .line 4
    iput-object p3, v0, LK51;->d:LG51;

    .line 5
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 6
    iget-object p2, p1, Ly61;->x:LK61;

    .line 7
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 8
    new-instance p3, LI61;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, LI61;-><init>(I)V

    .line 9
    invoke-virtual {v0, p1, p3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 10
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
