.class public final LQ51;
.super Lz61;
.source "PG"

# interfaces
.implements Lv51;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/gfx/mojom/Rect;)V
    .locals 4

    .line 1
    new-instance v0, LP51;

    invoke-direct {v0}, LP51;-><init>()V

    .line 2
    iput-object p1, v0, LP51;->b:Lorg/chromium/gfx/mojom/Rect;

    .line 3
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 4
    iget-object v1, p1, Ly61;->x:LK61;

    .line 5
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 6
    new-instance v2, LI61;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LI61;-><init>(I)V

    .line 7
    invoke-virtual {v0, p1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 8
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
