.class public abstract LUb;
.super LTb;
.source "PG"

# interfaces
.implements Lxb;


# direct methods
.method public constructor <init>(Landroid/content/Context;LWb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LTb;-><init>(Landroid/content/Context;LWb;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lyb;

    invoke-direct {v0, p0}, Lyb;-><init>(Lxb;)V

    return-object v0
.end method

.method public a(LRb;LRa;)V
    .locals 3

    .line 2
    invoke-super {p0, p1, p2}, LTb;->a(LRb;LRa;)V

    .line 3
    iget-object v0, p1, LRb;->a:Ljava/lang/Object;

    .line 4
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iget-object v1, p2, LRa;->a:Landroid/os/Bundle;

    const-string v2, "enabled"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, LUb;->b(LRb;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 7
    iget-object v1, p2, LRa;->a:Landroid/os/Bundle;

    const-string v2, "connecting"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    :cond_1
    iget-object p1, p1, LRb;->a:Ljava/lang/Object;

    .line 9
    :try_start_0
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaRouterJellybeanMr1"

    const-string v1, "Cannot get presentation display for the route."

    .line 10
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 12
    iget-object p2, p2, LRa;->a:Landroid/os/Bundle;

    const-string v0, "presentationDisplayId"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public abstract b(LRb;)Z
.end method
