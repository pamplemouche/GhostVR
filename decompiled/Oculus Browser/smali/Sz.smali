.class public final LSz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKz;


# static fields
.field public static final h:Ljava/lang/Runnable;


# instance fields
.field public final a:Lry;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LRz;->w:Ljava/lang/Runnable;

    sput-object v0, LSz;->h:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lky;Lry;LWz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LSz;->b:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LSz;->c:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LSz;->d:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LSz;->e:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LSz;->f:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LSz;->g:Ljava/util/Map;

    .line 8
    iput-object p2, p0, LSz;->a:Lry;

    return-void
.end method

.method public static final synthetic m()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    sget-object p1, LSz;->h:Ljava/lang/Runnable;

    return-object p1
.end method

.method public a(Ljava/util/Set;LLx;Z)Ljava/lang/Runnable;
    .locals 0

    .line 22
    sget-object p1, LSz;->h:Ljava/lang/Runnable;

    return-object p1
.end method

.method public a(Ljava/util/List;)Lsx;
    .locals 7

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, LSz;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LrF;

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, LXw;

    .line 7
    invoke-virtual {v2}, LrF;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 8
    sget-object v2, LcG;->b:[B

    goto :goto_1

    .line 9
    :cond_1
    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 10
    invoke-virtual {v2, v5, v6, v6, v4}, LrF;->a([BIII)V

    move-object v2, v5

    .line 11
    :goto_1
    invoke-direct {v3, v1, v2}, LXw;-><init>(Ljava/lang/String;[B)V

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v0}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 19
    iget-object v0, p0, LSz;->a:Lry;

    const-string v1, "EphemeralFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 20
    iget-object v1, p0, LSz;->g:Ljava/util/Map;

    const-string v2, "$HEAD"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "clearHead"

    aput-object v3, v1, v2

    .line 21
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lqx;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PersistentFeedStore does not support observer directly"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "$HEAD"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, LSz;->a:Lry;

    const-string v1, "EphemeralFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 16
    iget-object v1, p0, LSz;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "removeSession"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 17
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to delete the $HEAD session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lsx;
    .locals 1

    .line 6
    iget-object v0, p0, LSz;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Lsx;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, LSz;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWw;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lox;
    .locals 2

    .line 7
    new-instance v0, LVz;

    new-instance v1, LOz;

    invoke-direct {v1, p0, p1}, LOz;-><init>(LSz;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LVz;-><init>(LIx;)V

    return-object v0
.end method

.method public c()Lsx;
    .locals 4

    .line 1
    iget-object v0, p0, LSz;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "$HEAD"

    .line 4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    return-object v0
.end method

.method public f()Lmx;
    .locals 2

    .line 1
    new-instance v0, LTz;

    new-instance v1, LNz;

    invoke-direct {v1, p0}, LNz;-><init>(LSz;)V

    invoke-direct {v0, v1}, LTz;-><init>(LIx;)V

    return-object v0
.end method

.method public g()Lnx;
    .locals 2

    .line 1
    new-instance v0, LUz;

    new-instance v1, LPz;

    invoke-direct {v1, p0}, LPz;-><init>(LSz;)V

    invoke-direct {v0, v1}, LUz;-><init>(LIx;)V

    return-object v0
.end method

.method public h()Lrx;
    .locals 2

    .line 1
    new-instance v0, LYz;

    new-instance v1, LQz;

    invoke-direct {v1, p0}, LQz;-><init>(LSz;)V

    invoke-direct {v0, v1}, LYz;-><init>(LIx;)V

    return-object v0
.end method

.method public i()Lsx;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LSz;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Lsx;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, LSz;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    return-object v0
.end method

.method public l()Lsx;
    .locals 2

    .line 1
    iget-object v0, p0, LSz;->e:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    return-object v0
.end method
