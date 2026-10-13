.class public abstract Lz61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LC61;


# instance fields
.field public final w:Ly61;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ly61;

    invoke-direct {v0, p1, p2}, Ly61;-><init>(Lj71;LK61;)V

    iput-object v0, p0, Lz61;->w:Ly61;

    return-void
.end method


# virtual methods
.method public a(Ly71;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz61;->w:Ly61;

    invoke-virtual {v0, p1}, Ly61;->a(Ly71;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz61;->w:Ly61;

    .line 2
    iget-object v0, v0, Ly61;->x:LK61;

    invoke-interface {v0}, LJ61;->close()V

    return-void
.end method
