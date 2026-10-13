.class public final LpX;
.super Lz61;
.source "PG"

# interfaces
.implements LkX;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    .line 10
    new-instance v0, LoX;

    invoke-direct {v0}, LoX;-><init>()V

    .line 11
    iput p1, v0, LoX;->b:I

    .line 12
    iput-wide p2, v0, LoX;->c:J

    .line 13
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 14
    iget-object p2, p1, Ly61;->x:LK61;

    .line 15
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 16
    new-instance p3, LI61;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, LI61;-><init>(I)V

    .line 17
    invoke-virtual {v0, p1, p3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 18
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 1
    new-instance v0, LnX;

    invoke-direct {v0}, LnX;-><init>()V

    .line 2
    iput-wide p1, v0, LnX;->b:J

    .line 3
    iput-wide p3, v0, LnX;->c:J

    .line 4
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 5
    iget-object p2, p1, Ly61;->x:LK61;

    .line 6
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 7
    new-instance p3, LI61;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, LI61;-><init>(I)V

    .line 8
    invoke-virtual {v0, p1, p3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
