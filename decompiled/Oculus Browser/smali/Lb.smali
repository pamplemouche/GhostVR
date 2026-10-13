.class public LLb;
.super LOb;
.source "PG"


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, LOb;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string p2, "media_router"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iput-object p1, p0, LLb;->c:Ljava/lang/Object;

    .line 4
    check-cast p1, Landroid/media/MediaRouter;

    const-string p2, ""

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object p1

    .line 5
    iput-object p1, p0, LLb;->d:Ljava/lang/Object;

    .line 6
    iget-object p2, p0, LLb;->c:Ljava/lang/Object;

    .line 7
    check-cast p2, Landroid/media/MediaRouter;

    invoke-virtual {p2, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object p1

    .line 8
    iput-object p1, p0, LLb;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LMb;)V
    .locals 2

    .line 1
    iget-object v0, p0, LLb;->e:Ljava/lang/Object;

    iget v1, p1, LMb;->a:I

    .line 2
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 3
    iget-object v0, p0, LLb;->e:Ljava/lang/Object;

    iget v1, p1, LMb;->b:I

    .line 4
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 5
    iget-object v0, p0, LLb;->e:Ljava/lang/Object;

    iget v1, p1, LMb;->c:I

    .line 6
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 7
    iget-object v0, p0, LLb;->e:Ljava/lang/Object;

    iget v1, p1, LMb;->d:I

    .line 8
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 9
    iget-object v0, p0, LLb;->e:Ljava/lang/Object;

    iget p1, p1, LMb;->e:I

    .line 10
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 11
    iget-boolean p1, p0, LLb;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, LLb;->f:Z

    .line 13
    iget-object p1, p0, LLb;->e:Ljava/lang/Object;

    new-instance v0, LKb;

    invoke-direct {v0, p0}, LKb;-><init>(LLb;)V

    .line 14
    new-instance v1, Lwb;

    invoke-direct {v1, v0}, Lwb;-><init>(Lvb;)V

    .line 15
    invoke-static {p1, v1}, Lub;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, LLb;->e:Ljava/lang/Object;

    iget-object v0, p0, LOb;->a:Ljava/lang/Object;

    .line 17
    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    check-cast v0, Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setRemoteControlClient(Landroid/media/RemoteControlClient;)V

    :cond_0
    return-void
.end method
