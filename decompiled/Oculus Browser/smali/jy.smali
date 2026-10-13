.class public Ljy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LBF;


# direct methods
.method public constructor <init>(Lvw;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LBF;->b()LBF;

    move-result-object v0

    iput-object v0, p0, Ljy;->a:LBF;

    .line 3
    sget-object v1, LnP;->D:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 4
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LtI;->D:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 5
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LuP;->I:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 6
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LvJ;->E:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 7
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LhR;->I:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 8
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LlR;->G:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 9
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LTQ;->F:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 10
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LXQ;->D:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 11
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LgP;->G:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 12
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LAP;->F:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 13
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LaK;->E:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 14
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LGP;->B:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 15
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LKP;->E:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 16
    iget-object v0, p0, Ljy;->a:LBF;

    sget-object v1, LPR;->D:LOF;

    invoke-virtual {v0, v1}, LBF;->a(LOF;)V

    .line 17
    check-cast p1, Ljw;

    if-eqz p1, :cond_1

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOF;

    .line 20
    iget-object v1, p0, Ljy;->a:LBF;

    invoke-virtual {v1, v0}, LBF;->a(LOF;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 21
    throw p1
.end method


# virtual methods
.method public a()LBF;
    .locals 2

    .line 1
    iget-object v0, p0, Ljy;->a:LBF;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, LBF;

    invoke-direct {v1, v0}, LBF;-><init>(LBF;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
