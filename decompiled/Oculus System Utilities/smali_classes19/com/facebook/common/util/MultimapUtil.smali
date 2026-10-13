.class public Lcom/facebook/common/util/MultimapUtil;
.super Ljava/lang/Object;
.source "MultimapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Multimap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    .local p1, "b":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    const/4 v4, 0x0

    .line 33
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v5

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    .local v0, "aKeys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 43
    .end local v0    # "aKeys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    :goto_0
    return v4

    .line 36
    .restart local v0    # "aKeys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 37
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, v3}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 38
    .local v1, "aValues":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p1, v3}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 39
    .local v2, "bValues":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 43
    .end local v1    # "aValues":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "bValues":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method
