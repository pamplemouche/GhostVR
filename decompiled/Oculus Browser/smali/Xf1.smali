.class public final LXf1;
.super Lz61;
.source "PG"

# interfaces
.implements LTf1;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lrf1;[Leg1;LUf1;)V
    .locals 4

    .line 1
    new-instance v0, LYf1;

    invoke-direct {v0}, LYf1;-><init>()V

    .line 2
    iput-object p1, v0, LYf1;->b:Ljava/lang/String;

    .line 3
    iput-object p2, v0, LYf1;->c:Ljava/lang/String;

    .line 4
    iput-object p3, v0, LYf1;->d:Lrf1;

    .line 5
    iput-object p4, v0, LYf1;->e:[Leg1;

    .line 6
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 7
    iget-object p2, p1, Ly61;->x:LK61;

    .line 8
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 9
    new-instance p3, LI61;

    const/4 p4, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p3, p4, v1, v2, v3}, LI61;-><init>(IIJ)V

    .line 10
    invoke-virtual {v0, p1, p3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance p3, Lag1;

    invoke-direct {p3, p5}, Lag1;-><init>(LUf1;)V

    .line 11
    invoke-interface {p2, p1, p3}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method
