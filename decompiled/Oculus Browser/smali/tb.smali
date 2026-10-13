.class public abstract Ltb;
.super Landroid/media/MediaRouter$Callback;
.source "PG"


# instance fields
.field public final a:Lsb;


# direct methods
.method public constructor <init>(Lsb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    .line 2
    iput-object p1, p0, Ltb;->a:Lsb;

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltb;->a:Lsb;

    check-cast p1, LTb;

    .line 2
    invoke-virtual {p1, p2}, LTb;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, LTb;->c()V

    :cond_0
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltb;->a:Lsb;

    check-cast p1, LTb;

    .line 2
    invoke-virtual {p1, p2}, LTb;->c(Ljava/lang/Object;)LSb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, LTb;->b(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 4
    iget-object v0, p1, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LRb;

    .line 5
    invoke-virtual {p1, p2}, LTb;->a(LRb;)V

    .line 6
    invoke-virtual {p1}, LTb;->c()V

    :cond_0
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltb;->a:Lsb;

    check-cast p1, LTb;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltb;->a:Lsb;

    check-cast p1, LTb;

    .line 2
    invoke-virtual {p1, p2}, LTb;->c(Ljava/lang/Object;)LSb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, LTb;->b(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 4
    iget-object v0, p1, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, LTb;->c()V

    :cond_0
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltb;->a:Lsb;

    check-cast p1, LTb;

    .line 2
    iget-object p2, p1, LTb;->j:Ljava/lang/Object;

    .line 3
    check-cast p2, Landroid/media/MediaRouter;

    const v0, 0x800003

    invoke-virtual {p2, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p2

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p3}, LTb;->c(Ljava/lang/Object;)LSb;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p2, LSb;->a:Lqb;

    invoke-virtual {p1}, Lqb;->e()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, p3}, LTb;->b(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 7
    iget-object p3, p1, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LRb;

    .line 8
    iget-object p1, p1, LTb;->i:LWb;

    iget-object p2, p2, LRb;->b:Ljava/lang/String;

    check-cast p1, Lnb;

    .line 9
    iget-object p3, p1, Lnb;->i:Lgb;

    const/16 v0, 0x106

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p3, p1, Lnb;->j:LXb;

    invoke-virtual {p1, p3}, Lnb;->b(LYa;)I

    move-result p3

    if-ltz p3, :cond_2

    .line 11
    iget-object p1, p1, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob;

    .line 12
    invoke-virtual {p1, p2}, Lob;->a(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 13
    iget-object p1, p1, Lob;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqb;

    invoke-virtual {p1}, Lqb;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltb;->a:Lsb;

    check-cast p1, LTb;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltb;->a:Lsb;

    check-cast p1, LTb;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ltb;->a:Lsb;

    check-cast p1, LTb;

    .line 2
    invoke-virtual {p1, p2}, LTb;->c(Ljava/lang/Object;)LSb;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p1, p2}, LTb;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 4
    iget-object v1, p1, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRb;

    .line 5
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result p2

    .line 6
    iget-object v1, v0, LRb;->c:LSa;

    invoke-virtual {v1}, LSa;->m()I

    move-result v1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x0

    .line 7
    iget-object v2, v0, LRb;->c:LSa;

    if-eqz v2, :cond_2

    .line 8
    new-instance v3, Landroid/os/Bundle;

    iget-object v4, v2, LSa;->a:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {v2}, LSa;->a()V

    .line 10
    iget-object v4, v2, LSa;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v2, LSa;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    const-string v2, "volume"

    .line 12
    invoke-virtual {v3, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v1, :cond_1

    const-string p2, "controlFilters"

    .line 13
    invoke-virtual {v3, p2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 14
    :cond_1
    new-instance p2, LSa;

    invoke-direct {p2, v3, v1}, LSa;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    .line 15
    iput-object p2, v0, LRb;->c:LSa;

    .line 16
    invoke-virtual {p1}, LTb;->c()V

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "descriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method
