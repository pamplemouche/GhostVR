.class public Lae;
.super Lyf;
.source "PG"


# instance fields
.field public final synthetic F:Lbe;


# direct methods
.method public constructor <init>(Lbe;Landroid/view/View;Lee;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lae;->F:Lbe;

    invoke-direct {p0, p2}, Lyf;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()LJd;
    .locals 1

    .line 1
    iget-object v0, p0, Lae;->F:Lbe;

    iget-object v0, v0, Lbe;->y:Lee;

    iget-object v0, v0, Lee;->Q:Lce;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, LDd;->a()LBd;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lae;->F:Lbe;

    iget-object v0, v0, Lbe;->y:Lee;

    invoke-virtual {v0}, Lee;->f()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lae;->F:Lbe;

    iget-object v0, v0, Lbe;->y:Lee;

    iget-object v1, v0, Lee;->S:LZd;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lee;->b()Z

    const/4 v0, 0x1

    return v0
.end method
