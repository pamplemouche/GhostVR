.class public final LgR;
.super LFF;
.source "PG"

# interfaces
.implements LiR;


# direct methods
.method public synthetic constructor <init>(LeR;)V
    .locals 0

    .line 1
    sget-object p1, LhR;->G:LhR;

    .line 2
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    return-void
.end method


# virtual methods
.method public a(LWP;)LgR;
    .locals 3

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LhR;

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, v0, LhR;->D:LXF;

    move-object v2, v1

    check-cast v2, LhF;

    .line 4
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_0

    .line 5
    invoke-static {v1}, LTF;->a(LXF;)LXF;

    move-result-object v1

    iput-object v1, v0, LhR;->D:LXF;

    .line 6
    :cond_0
    iget-object v0, v0, LhR;->D:LXF;

    .line 7
    iget p1, p1, LWP;->w:I

    .line 8
    check-cast v0, LUF;

    .line 9
    iget v1, v0, LUF;->y:I

    invoke-virtual {v0, v1, p1}, LUF;->a(II)V

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 10
    throw p1
.end method
