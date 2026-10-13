.class public LN61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJ61;


# instance fields
.field public final synthetic w:LP61;


# direct methods
.method public synthetic constructor <init>(LP61;LM61;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN61;->w:LP61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 6

    .line 1
    iget-object v0, p0, LN61;->w:LP61;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object v1

    .line 3
    iget-object v1, v1, LR61;->d:LI61;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, LI61;->a(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    iget-object v1, v0, LP61;->x:LK61;

    if-eqz v1, :cond_0

    .line 6
    new-instance v2, LO61;

    invoke-direct {v2, v0}, LO61;-><init>(LP61;)V

    invoke-interface {v1, p1, v2}, LK61;->a(LH61;LJ61;)Z

    move-result v3

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, v0, LP61;->w:Lj61;

    invoke-virtual {p1}, Lj61;->close()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, LI61;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    iget-wide v1, v1, LI61;->d:J

    .line 10
    iget-object v4, v0, LP61;->z:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ61;

    if-nez v4, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, v0, LP61;->z:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v4, p1}, LJ61;->a(LH61;)Z

    move-result v3

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, v0, LP61;->x:LK61;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0, p1}, LJ61;->a(LH61;)Z

    move-result v3

    :cond_4
    :goto_0
    return v3

    :cond_5
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LN61;->w:LP61;

    .line 2
    iget-object v0, v0, LP61;->x:LK61;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, LJ61;->close()V

    :cond_0
    return-void
.end method
