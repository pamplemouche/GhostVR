.class public final synthetic LIz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LJz;


# direct methods
.method public constructor <init>(LJz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIz;->w:LJz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, LIz;->w:LJz;

    .line 1
    iget-object v1, v0, LJz;->d:LKz;

    invoke-interface {v1}, Lpx;->l()Lsx;

    move-result-object v1

    .line 2
    iget-boolean v2, v1, Lsx;->b:Z

    const-string v3, "FeedStore"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Error retrieving actions when trying to dump ephemeral actions."

    .line 3
    invoke-static {v3, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {v1}, Lsx;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5
    iget-object v2, v0, LJz;->b:LjA;

    .line 6
    iget-object v5, v2, LjA;->g:LYw;

    invoke-virtual {v5}, LYw;->b()V

    .line 7
    new-instance v5, LeA;

    invoke-direct {v5, v2}, LeA;-><init>(LjA;)V

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJI;

    .line 11
    iget-object v8, v7, LJI;->B:Ljava/lang/String;

    .line 12
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget v8, v7, LJI;->A:I

    .line 14
    iget-object v7, v7, LJI;->B:Ljava/lang/String;

    .line 15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_1

    .line 16
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :cond_1
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v4

    const/4 v8, 0x1

    aput-object v7, v9, v8

    const-string v7, "FeedLocalActionMutation"

    const-string v8, "Added action %d with content id %s"

    invoke-static {v7, v8, v9}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v1, v0, LJz;->d:LKz;

    .line 21
    invoke-interface {v1, v6}, Lpx;->a(Ljava/util/List;)Lsx;

    move-result-object v1

    .line 22
    iget-boolean v6, v1, Lsx;->b:Z

    if-nez v6, :cond_3

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Error retrieving semantic properties when trying to dump ephemeral actions."

    .line 23
    invoke-static {v3, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 24
    :cond_3
    iget-object v0, v0, LJz;->b:LjA;

    .line 25
    invoke-virtual {v0}, LjA;->g()Lnx;

    move-result-object v0

    .line 26
    invoke-virtual {v1}, Lsx;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LXw;

    .line 27
    iget-object v7, v6, LXw;->a:Ljava/lang/String;

    iget-object v6, v6, LXw;->b:[B

    .line 28
    invoke-static {v6}, LrF;->a([B)LrF;

    move-result-object v6

    .line 29
    move-object v8, v0

    check-cast v8, LUz;

    .line 30
    iget-object v8, v8, LUz;->a:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {v5, v2}, LeA;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw;

    .line 32
    sget-object v2, Lxw;->b:Lxw;

    if-eq v1, v2, :cond_5

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Error writing actions to persistent store when dumping ephemeral actions."

    .line 33
    invoke-static {v3, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 34
    :cond_5
    check-cast v0, LUz;

    .line 35
    iget-object v1, v0, LUz;->b:LIx;

    iget-object v0, v0, LUz;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, LIx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw;

    .line 36
    sget-object v1, Lxw;->b:Lxw;

    if-eq v0, v1, :cond_6

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Error writing semantic properties to persistent store when dumping ephemeral actions."

    .line 37
    invoke-static {v3, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method
