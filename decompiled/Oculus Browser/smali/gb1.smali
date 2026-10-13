.class public final Lgb1;
.super Lz61;
.source "PG"

# interfaces
.implements LRa1;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(Lxb1;LQa1;)V
    .locals 7

    .line 1
    new-instance v0, Lcb1;

    invoke-direct {v0}, Lcb1;-><init>()V

    .line 2
    iput-object p1, v0, Lcb1;->b:Lxb1;

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

    new-instance v0, Leb1;

    invoke-direct {v0, p2}, Leb1;-><init>(LQa1;)V

    .line 8
    invoke-interface {v1, p1, v0}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method
