.class public final LH21;
.super Lz61;
.source "PG"

# interfaces
.implements LD21;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(ILG61;)V
    .locals 3

    .line 1
    new-instance v0, LG21;

    invoke-direct {v0}, LG21;-><init>()V

    .line 2
    iput p1, v0, LG21;->b:I

    .line 3
    iput-object p2, v0, LG21;->c:LG61;

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
