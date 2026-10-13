.class public Lhz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQx;


# instance fields
.field public final a:LQx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LOx;

    invoke-direct {v0}, LOx;-><init>()V

    iput-object v0, p0, Lhz;->a:LQx;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, LXI;

    .line 2
    iget v0, p1, LXI;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p1, LXI;->B:Ljava/lang/Object;

    check-cast v0, LwR;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, LwR;->D:LwR;

    .line 5
    :goto_0
    iget-object v2, p0, Lhz;->a:LQx;

    invoke-interface {v2, v0}, LQx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LwR;

    if-eq v2, v0, :cond_2

    .line 6
    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LVI;

    .line 7
    invoke-virtual {p1}, LFF;->g()V

    .line 8
    iget-object v0, p1, LFF;->x:LTF;

    check-cast v0, LXI;

    if-eqz v2, :cond_1

    .line 9
    iput-object v2, v0, LXI;->B:Ljava/lang/Object;

    .line 10
    iput v1, v0, LXI;->A:I

    .line 11
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LXI;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhz;->a:LQx;

    invoke-interface {v0}, LQx;->clear()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lhz;->a:LQx;

    invoke-interface {v0}, LQx;->size()I

    move-result v0

    return v0
.end method
