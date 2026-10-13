.class public abstract LTb;
.super LXb;
.source "PG"

# interfaces
.implements Lsb;
.implements Lvb;


# static fields
.field public static final s:Ljava/util/ArrayList;

.field public static final t:Ljava/util/ArrayList;


# instance fields
.field public final i:LWb;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/Object;

.field public n:I

.field public o:Z

.field public p:Z

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, LTb;->s:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, LTb;->t:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LWb;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LXb;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LTb;->q:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LTb;->r:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, LTb;->i:LWb;

    const-string p2, "media_router"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    iput-object p2, p0, LTb;->j:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, LTb;->a()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, LTb;->k:Ljava/lang/Object;

    .line 8
    new-instance p2, Lwb;

    invoke-direct {p2, p0}, Lwb;-><init>(Lvb;)V

    .line 9
    iput-object p2, p0, LTb;->l:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 11
    iget-object p2, p0, LTb;->j:Ljava/lang/Object;

    const v0, 0x7f130405

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    check-cast p2, Landroid/media/MediaRouter;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object p1

    .line 14
    iput-object p1, p0, LTb;->m:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, LTb;->e()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LXa;
    .locals 1

    .line 14
    invoke-virtual {p0, p1}, LTb;->b(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 15
    iget-object v0, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LRb;

    .line 16
    new-instance v0, LQb;

    iget-object p1, p1, LRb;->a:Ljava/lang/Object;

    invoke-direct {v0, p1}, LQb;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract a()Ljava/lang/Object;
.end method

.method public a(LRb;)V
    .locals 4

    .line 51
    new-instance v0, LRa;

    iget-object v1, p1, LRb;->b:Ljava/lang/String;

    iget-object v2, p1, LRb;->a:Ljava/lang/Object;

    .line 52
    iget-object v3, p0, LYa;->a:Landroid/content/Context;

    .line 53
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 55
    :goto_0
    invoke-direct {v0, v1, v2}, LRa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1, v0}, LTb;->a(LRb;LRa;)V

    .line 57
    invoke-virtual {v0}, LRa;->a()LSa;

    move-result-object v0

    iput-object v0, p1, LRb;->c:LSa;

    return-void
.end method

.method public a(LRb;LRa;)V
    .locals 3

    .line 58
    iget-object v0, p1, LRb;->a:Ljava/lang/Object;

    .line 59
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, LTb;->s:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, LRa;->a(Ljava/util/Collection;)LRa;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, LTb;->t:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, LRa;->a(Ljava/util/Collection;)LRa;

    .line 62
    :cond_1
    iget-object v0, p1, LRb;->a:Ljava/lang/Object;

    .line 63
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v0

    .line 64
    iget-object v1, p2, LRa;->a:Landroid/os/Bundle;

    const-string v2, "playbackType"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p1, LRb;->a:Ljava/lang/Object;

    .line 66
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v0

    .line 67
    iget-object v1, p2, LRa;->a:Landroid/os/Bundle;

    const-string v2, "playbackStream"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p1, LRb;->a:Ljava/lang/Object;

    .line 69
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    .line 70
    invoke-virtual {p2, v0}, LRa;->a(I)LRa;

    .line 71
    iget-object v0, p1, LRb;->a:Ljava/lang/Object;

    .line 72
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    .line 73
    iget-object v1, p2, LRa;->a:Landroid/os/Bundle;

    const-string v2, "volumeMax"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    iget-object p1, p1, LRb;->a:Ljava/lang/Object;

    .line 75
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result p1

    .line 76
    iget-object p2, p2, LRa;->a:Landroid/os/Bundle;

    const-string v0, "volumeHandling"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public a(LSb;)V
    .locals 2

    .line 77
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    iget-object v1, p1, LSb;->a:Lqb;

    .line 78
    iget-object v1, v1, Lqb;->d:Ljava/lang/String;

    .line 79
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    iget-object v1, p1, LSb;->a:Lqb;

    .line 81
    iget v1, v1, Lqb;->l:I

    .line 82
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 83
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    iget-object v1, p1, LSb;->a:Lqb;

    .line 84
    iget v1, v1, Lqb;->m:I

    .line 85
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 86
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    iget-object v1, p1, LSb;->a:Lqb;

    .line 87
    iget v1, v1, Lqb;->p:I

    .line 88
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 89
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    iget-object v1, p1, LSb;->a:Lqb;

    .line 90
    iget v1, v1, Lqb;->q:I

    .line 91
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 92
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    iget-object p1, p1, LSb;->a:Lqb;

    .line 93
    iget p1, p1, Lqb;->o:I

    .line 94
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    return-void
.end method

.method public a(LTa;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, LTa;->a()V

    .line 2
    iget-object v1, p1, LTa;->b:Lbb;

    .line 3
    invoke-virtual {v1}, Lbb;->a()V

    .line 4
    iget-object v1, v1, Lbb;->b:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "android.media.intent.category.LIVE_AUDIO"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "android.media.intent.category.LIVE_VIDEO"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, LTa;->b()Z

    move-result v0

    move p1, v0

    move v0, v3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 10
    :goto_2
    iget v1, p0, LTb;->n:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, LTb;->o:Z

    if-eq v1, p1, :cond_5

    .line 11
    :cond_4
    iput v0, p0, LTb;->n:I

    .line 12
    iput-boolean p1, p0, LTb;->o:Z

    .line 13
    invoke-virtual {p0}, LTb;->e()V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, LTb;->c(Ljava/lang/Object;)LSb;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p1, LSb;->a:Lqb;

    invoke-virtual {p1, p2}, Lqb;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Lqb;)V
    .locals 2

    .line 33
    invoke-virtual {p1}, Lqb;->a()LYa;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 34
    iget-object v0, p0, LTb;->j:Ljava/lang/Object;

    iget-object v1, p0, LTb;->m:Ljava/lang/Object;

    .line 35
    check-cast v0, Landroid/media/MediaRouter;

    check-cast v1, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    .line 36
    new-instance v1, LSb;

    invoke-direct {v1, p1, v0}, LSb;-><init>(Lqb;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, LTb;->l:Ljava/lang/Object;

    invoke-static {v0, p1}, Lub;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v1}, LTb;->a(LSb;)V

    .line 40
    iget-object p1, p0, LTb;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, LTb;->j:Ljava/lang/Object;

    .line 42
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, LTb;->j:Ljava/lang/Object;

    const v1, 0x800003

    .line 44
    check-cast v0, Landroid/media/MediaRouter;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, LTb;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 46
    iget-object v1, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRb;

    .line 47
    iget-object v0, v0, LRb;->b:Ljava/lang/String;

    .line 48
    iget-object v1, p1, Lqb;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lqb;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 8

    .line 17
    invoke-virtual {p0, p1}, LTb;->c(Ljava/lang/Object;)LSb;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 18
    invoke-virtual {p0, p1}, LTb;->b(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    .line 19
    invoke-virtual {p0}, LTb;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "DEFAULT_ROUTE"

    goto :goto_2

    .line 20
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 21
    iget-object v4, p0, LYa;->a:Landroid/content/Context;

    .line 22
    move-object v5, p1

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v5, v4}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 23
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, ""

    .line 24
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "ROUTE_%08x"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_2
    invoke-virtual {p0, v0}, LTb;->b(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x2

    const/4 v4, 0x2

    .line 26
    :goto_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "%s_%d"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {p0, v5}, LTb;->b(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_4

    move-object v0, v5

    .line 28
    :goto_4
    new-instance v1, LRb;

    invoke-direct {v1, p1, v0}, LRb;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v1}, LTb;->a(LRb;)V

    .line 30
    iget-object p1, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    return v1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 3

    .line 7
    iget-object v0, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    iget-object v2, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LRb;

    iget-object v2, v2, LRb;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .line 9
    iget-object v0, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    iget-object v2, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LRb;

    iget-object v2, v2, LRb;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LTb;->c(Ljava/lang/Object;)LSb;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, LSb;->a:Lqb;

    invoke-virtual {p1, p2}, Lqb;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Lqb;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Lqb;->a()LYa;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, LTb;->e(Lqb;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 5
    iget-object v0, p0, LTb;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSb;

    .line 6
    invoke-virtual {p0, p1}, LTb;->a(LSb;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)LSb;
    .locals 1

    .line 17
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 18
    instance-of v0, p1, LSb;

    if-eqz v0, :cond_0

    check-cast p1, LSb;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c()V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    iget-object v5, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LRb;

    iget-object v5, v5, LRb;->c:LSa;

    if-eqz v5, :cond_2

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 6
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route descriptor already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v2, v1, :cond_4

    .line 11
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LSa;

    .line 12
    iget-object v5, v5, LSa;->a:Landroid/os/Bundle;

    .line 13
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "routes"

    .line 14
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    :cond_5
    new-instance v1, LZa;

    invoke-direct {v1, v0, v4}, LZa;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    .line 16
    invoke-virtual {p0, v1}, LYa;->a(LZa;)V

    return-void
.end method

.method public c(Lqb;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Lqb;->a()LYa;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, LTb;->e(Lqb;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 21
    iget-object v0, p0, LTb;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSb;

    .line 22
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    .line 23
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p1, LSb;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lub;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, LTb;->j:Ljava/lang/Object;

    iget-object p1, p1, LSb;->b:Ljava/lang/Object;

    .line 26
    check-cast v0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    :cond_0
    return-void
.end method

.method public abstract d()V
.end method

.method public abstract d(Ljava/lang/Object;)V
.end method

.method public d(Lqb;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lqb;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lqb;->a()LYa;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, LTb;->e(Lqb;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 4
    iget-object v0, p0, LTb;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LSb;

    .line 5
    iget-object p1, p1, LSb;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, LTb;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p1, Lqb;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, LTb;->b(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 8
    iget-object v0, p0, LTb;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LRb;

    .line 9
    iget-object p1, p1, LRb;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, LTb;->d(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Lqb;)I
    .locals 3

    .line 10
    iget-object v0, p0, LTb;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    iget-object v2, p0, LTb;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LSb;

    iget-object v2, v2, LSb;->a:Lqb;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final e()V
    .locals 6

    .line 1
    invoke-virtual {p0}, LTb;->d()V

    .line 2
    iget-object v0, p0, LTb;->j:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/media/MediaRouter;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v1}, LTb;->a(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v3, v1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p0}, LTb;->c()V

    :cond_2
    return-void
.end method
