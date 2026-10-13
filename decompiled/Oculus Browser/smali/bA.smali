.class public final synthetic LbA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIx;


# instance fields
.field public final a:LjA;


# direct methods
.method public constructor <init>(LjA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbA;->a:LjA;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, LbA;->a:LjA;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v1, v0, LjA;->b:Lry;

    const-string v2, "PersistentFeedStore"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LWw;

    .line 4
    iget-object v5, v4, LWw;->a:Ljava/lang/String;

    .line 5
    iget-object v6, v4, LWw;->b:LNI;

    .line 6
    invoke-virtual {v6}, LNI;->m()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    iget-object v4, v4, LWw;->b:LNI;

    invoke-virtual {v4}, LNI;->k()LXI;

    move-result-object v4

    const-string v5, "ss::"

    .line 8
    invoke-static {v5}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 9
    iget-object v6, v4, LXI;->C:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v4}, LfF;->e()[B

    move-result-object v4

    .line 12
    new-instance v6, LEw;

    invoke-direct {v6, v5, v4}, LEw;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v6}, LfF;->e()[B

    move-result-object v4

    .line 14
    new-instance v6, LEw;

    invoke-direct {v6, v5, v4}, LEw;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v0, LjA;->d:LHw;

    .line 16
    new-instance v3, Lzw;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lzw;-><init>(Ljava/util/List;Lyw;)V

    .line 17
    invoke-interface {v0, v3}, LHw;->a(Lzw;)Lxw;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "task"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "commitContentMutation"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "mutations"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lny;->a([Ljava/lang/Object;)V

    return-object v0
.end method
