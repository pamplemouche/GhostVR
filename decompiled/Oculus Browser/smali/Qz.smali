.class public final synthetic LQz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIx;


# instance fields
.field public final a:LSz;


# direct methods
.method public constructor <init>(LSz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQz;->a:LSz;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, LQz;->a:LSz;

    check-cast p1, Ljava/util/Map;

    .line 1
    iget-object v1, v0, LSz;->a:Lry;

    const-string v2, "EphemeralFeedStore"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 2
    sget-object v2, Lxw;->b:Lxw;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LXz;

    .line 6
    iget-object v6, v0, LSz;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_0

    .line 7
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 8
    :cond_0
    iget-object v7, v4, LXz;->b:Ljava/util/Set;

    .line 9
    invoke-interface {v6, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v4, v4, LXz;->a:Ljava/util/Set;

    .line 11
    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v4, v0, LSz;->f:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "task"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "commitUploadableActionMutation"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "actions"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, v0}, Lny;->a([Ljava/lang/Object;)V

    return-object v2
.end method
