.class public Lxz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:LEz;


# direct methods
.method public constructor <init>(LEz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxz;->a:LEz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lxz;->a:LEz;

    .line 2
    iget-object v0, v0, LEz;->f:LYw;

    .line 3
    invoke-virtual {v0}, LYw;->b()V

    .line 4
    iget-object v0, p0, Lxz;->a:LEz;

    .line 5
    iget-object v0, v0, LEz;->g:Lry;

    const-string v1, "SessionManagerMutation"

    .line 6
    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lxz;->a:LEz;

    .line 8
    iget-object v2, v2, LEz;->b:Lrz;

    .line 9
    invoke-virtual {v2}, Lrz;->c()Ljava/util/List;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lxz;->a:LEz;

    .line 11
    iget-object v3, v3, LEz;->a:Lpx;

    .line 12
    invoke-interface {v3}, Lpx;->a()V

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loz;

    .line 14
    invoke-interface {v3}, Loz;->c()Lcx;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 15
    invoke-interface {v3}, Loz;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 16
    invoke-interface {v6}, Lcx;->d()I

    move-result v7

    if-eq v7, v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    invoke-interface {v6}, Lcx;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 18
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_0

    .line 19
    iget-object v7, p0, Lxz;->a:LEz;

    .line 20
    iget-object v7, v7, LEz;->f:LYw;

    .line 21
    invoke-virtual {v7}, LYw;->b()V

    new-array v5, v5, [Ljava/lang/Object;

    .line 22
    invoke-interface {v3}, Loz;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    const-string v3, "Invalidate session %s"

    invoke-static {v1, v3, v5}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-interface {v6}, Lcx;->e()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "task"

    aput-object v1, p1, v4

    const-string v1, "resetHead"

    aput-object v1, p1, v5

    .line 24
    invoke-virtual {v0, p1}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method
