.class public final Lh21;
.super Lz61;
.source "PG"

# interfaces
.implements LZ11;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(La21;)V
    .locals 8

    .line 1
    new-instance v0, Ld21;

    invoke-direct {v0}, Ld21;-><init>()V

    .line 2
    iget-object v1, p0, Lz61;->w:Ly61;

    .line 3
    iget-object v2, v1, Ly61;->x:LK61;

    .line 4
    iget-object v1, v1, Ly61;->w:Lj71;

    .line 5
    new-instance v3, LI61;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, LI61;-><init>(IIJ)V

    .line 6
    invoke-virtual {v0, v1, v3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    new-instance v1, Lf21;

    invoke-direct {v1, p1}, Lf21;-><init>(La21;)V

    .line 7
    invoke-interface {v2, v0, v1}, LK61;->a(LH61;LJ61;)Z

    return-void
.end method
