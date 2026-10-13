.class public LZ90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LeU0;
.implements LdU0;


# instance fields
.field public w:LeU0;

.field public x:LWT;


# direct methods
.method public constructor <init>(LeU0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LZ90;->w:LeU0;

    .line 3
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LZ90;->x:LWT;

    .line 4
    iget-object p1, p0, LZ90;->w:LeU0;

    invoke-interface {p1, p0}, LeU0;->a(LdU0;)V

    return-void
.end method


# virtual methods
.method public a(ILbU0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ90;->w:LeU0;

    invoke-interface {v0, p1, p2}, LeU0;->a(ILbU0;)V

    return-void
.end method

.method public a(LbU0;)V
    .locals 1

    .line 2
    iget-object v0, p0, LZ90;->w:LeU0;

    invoke-interface {v0, p1}, LeU0;->a(LbU0;)V

    return-void
.end method

.method public a(LbU0;Lorg/chromium/components/offline_items_collection/VisualsCallback;)V
    .locals 1

    .line 4
    iget-object v0, p0, LZ90;->w:LeU0;

    invoke-interface {v0, p1, p2}, LeU0;->a(LbU0;Lorg/chromium/components/offline_items_collection/VisualsCallback;)V

    return-void
.end method

.method public a(LbU0;Z)V
    .locals 1

    .line 3
    iget-object v0, p0, LZ90;->w:LeU0;

    invoke-interface {v0, p1, p2}, LeU0;->a(LbU0;Z)V

    return-void
.end method

.method public a(LdU0;)V
    .locals 1

    .line 5
    iget-object v0, p0, LZ90;->x:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/offline_items_collection/OfflineItem;

    .line 11
    iget-object v2, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-static {v2}, LcU0;->a(LbU0;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, LZ90;->x:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LdU0;

    .line 14
    invoke-interface {v1, v0}, LdU0;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V
    .locals 2

    .line 6
    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-static {v0}, LcU0;->a(LbU0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, LZ90;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LdU0;

    .line 8
    invoke-interface {v1, p1, p2}, LdU0;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(LbU0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ90;->w:LeU0;

    invoke-interface {v0, p1}, LeU0;->b(LbU0;)V

    return-void
.end method

.method public c(LbU0;)V
    .locals 2

    .line 1
    invoke-static {p1}, LcU0;->a(LbU0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LZ90;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LdU0;

    .line 3
    invoke-interface {v1, p1}, LdU0;->c(LbU0;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(LbU0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LZ90;->w:LeU0;

    invoke-interface {v0, p1}, LeU0;->d(LbU0;)V

    return-void
.end method
