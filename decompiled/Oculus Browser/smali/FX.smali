.class public final LFX;
.super Lz61;
.source "PG"

# interfaces
.implements LhX;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(Ln71;LlX;)V
    .locals 3

    .line 1
    new-instance v0, LzX;

    invoke-direct {v0}, LzX;-><init>()V

    .line 2
    iput-object p1, v0, LzX;->b:Ln71;

    .line 3
    iput-object p2, v0, LzX;->c:LlX;

    .line 4
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 5
    iget-object p2, p1, Ly61;->x:LK61;

    .line 6
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 7
    new-instance v1, LI61;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LI61;-><init>(I)V

    .line 8
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
