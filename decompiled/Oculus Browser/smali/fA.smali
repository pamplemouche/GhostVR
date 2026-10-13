.class public final synthetic LfA;
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

    iput-object p1, p0, LfA;->a:LjA;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, LfA;->a:LjA;

    check-cast p1, Ljava/util/Map;

    .line 1
    iget-object v1, v0, LjA;->b:Lry;

    const-string v2, "PersistentFeedStore"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LXz;

    .line 6
    iget-object v6, v6, LXz;->b:Ljava/util/Set;

    .line 7
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "ua::"

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LhJ;

    .line 8
    invoke-static {v8, v5}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 9
    invoke-virtual {v7}, LhJ;->j()LOP;

    move-result-object v7

    invoke-virtual {v7}, LTF;->hashCode()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10
    new-instance v8, LBw;

    invoke-direct {v8, v7}, LBw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LXz;

    .line 12
    iget-object v4, v4, LXz;->a:Ljava/util/Set;

    .line 13
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LhJ;

    .line 14
    invoke-static {v8, v5}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 15
    invoke-virtual {v6}, LhJ;->j()LOP;

    move-result-object v9

    invoke-virtual {v9}, LTF;->hashCode()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {v6}, LfF;->e()[B

    move-result-object v6

    .line 17
    new-instance v9, LEw;

    invoke-direct {v9, v7, v6}, LEw;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, v0, LjA;->d:LHw;

    .line 19
    new-instance v3, Lzw;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lzw;-><init>(Ljava/util/List;Lyw;)V

    .line 20
    invoke-interface {v0, v3}, LHw;->a(Lzw;)Lxw;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "task"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "commitUploadableActionMutation"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "actions"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lny;->a([Ljava/lang/Object;)V

    return-object v0
.end method
