.class public final synthetic LcA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIx;


# instance fields
.field public final a:LjA;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LjA;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LcA;->a:LjA;

    iput-object p2, p0, LcA;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, LcA;->a:LjA;

    iget-object v1, p0, LcA;->b:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v2, v0, LjA;->g:LYw;

    invoke-virtual {v2}, LYw;->b()V

    .line 2
    iget-object v2, v0, LjA;->b:Lry;

    const-string v3, "PersistentFeedStore"

    invoke-virtual {v2, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v2

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    new-array v5, v6, [B

    .line 5
    new-instance v7, LLw;

    invoke-direct {v7, v5}, LLw;-><init>([B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LbJ;

    .line 7
    invoke-virtual {v7}, LfF;->e()[B

    move-result-object v7

    .line 8
    new-instance v8, LLw;

    invoke-direct {v8, v7}, LLw;-><init>([B)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, LjA;->e:LQw;

    .line 10
    new-instance v5, LJw;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v5, v1, v7, v4}, LJw;-><init>(Ljava/lang/String;Ljava/util/List;LIw;)V

    .line 11
    invoke-interface {v0, v5}, LQw;->a(LJw;)Lxw;

    move-result-object v0

    .line 12
    sget-object v4, Lxw;->b:Lxw;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v7, "commitSessionMutation"

    aput-object v7, v4, v5

    const/4 v7, 0x2

    const-string v8, "mutations"

    aput-object v8, v4, v7

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    invoke-virtual {v2, v4}, Lny;->a([Ljava/lang/Object;)V

    new-array v2, v9, [Ljava/lang/Object;

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    aput-object v1, v2, v5

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    const-string p1, "commitSessionMutation - Success %s, Update Session %s, stream structures %s"

    .line 16
    invoke-static {v3, p1, v2}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
