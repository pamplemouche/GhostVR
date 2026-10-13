.class public LVb;
.super LUb;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;LWb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LUb;-><init>(Landroid/content/Context;LWb;)V

    return-void
.end method


# virtual methods
.method public a(LRb;LRa;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, LUb;->a(LRb;LRa;)V

    .line 2
    iget-object p1, p1, LRb;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p2, LRa;->a:Landroid/os/Bundle;

    const-string v0, "status"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(LSb;)V
    .locals 1

    .line 6
    invoke-super {p0, p1}, LTb;->a(LSb;)V

    .line 7
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    iget-object p1, p1, LSb;->a:Lqb;

    .line 8
    iget-object p1, p1, Lqb;->e:Ljava/lang/String;

    .line 9
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LTb;->j:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public b(LRb;)Z
    .locals 0

    .line 3
    iget-object p1, p1, LRb;->a:Ljava/lang/Object;

    .line 4
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 4

    .line 3
    iget-boolean v0, p0, LTb;->p:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LTb;->j:Ljava/lang/Object;

    iget-object v1, p0, LTb;->k:Ljava/lang/Object;

    .line 5
    check-cast v0, Landroid/media/MediaRouter;

    check-cast v1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LTb;->p:Z

    .line 7
    iget-object v0, p0, LTb;->j:Ljava/lang/Object;

    iget v1, p0, LTb;->n:I

    iget-object v2, p0, LTb;->k:Ljava/lang/Object;

    iget-boolean v3, p0, LTb;->o:Z

    or-int/lit8 v3, v3, 0x2

    .line 8
    check-cast v0, Landroid/media/MediaRouter;

    check-cast v2, Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LTb;->j:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    const v1, 0x800003

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method
