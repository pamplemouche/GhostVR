.class public final synthetic LdA;
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

    iput-object p1, p0, LdA;->a:LjA;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, LdA;->a:LjA;

    check-cast p1, Ljava/util/Map;

    .line 1
    iget-object v1, v0, LjA;->g:LYw;

    invoke-virtual {v1}, LYw;->b()V

    .line 2
    iget-object v1, v0, LjA;->b:Lry;

    const-string v2, "PersistentFeedStore"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const-string v6, "sp::"

    .line 5
    invoke-static {v6}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LrF;

    .line 7
    invoke-virtual {v4}, LrF;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 8
    sget-object v4, LcG;->b:[B

    goto :goto_1

    .line 9
    :cond_0
    new-array v8, v7, [B

    .line 10
    invoke-virtual {v4, v8, v5, v5, v7}, LrF;->a([BIII)V

    move-object v4, v8

    .line 11
    :goto_1
    new-instance v5, LEw;

    invoke-direct {v5, v6, v4}, LEw;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, v0, LjA;->d:LHw;

    .line 13
    new-instance v3, Lzw;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lzw;-><init>(Ljava/util/List;Lyw;)V

    .line 14
    invoke-interface {v0, v3}, LHw;->a(Lzw;)Lxw;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "task"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "commitSemanticPropertiesMutation"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "mutations"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 16
    invoke-virtual {v1, v2}, Lny;->a([Ljava/lang/Object;)V

    return-object v0
.end method
