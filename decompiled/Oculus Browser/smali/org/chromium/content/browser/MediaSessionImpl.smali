.class public Lorg/chromium/content/browser/MediaSessionImpl;
.super LO01;
.source "PG"


# instance fields
.field public a:J

.field public b:LWT;

.field public c:LVT;

.field public d:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, LO01;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->a:J

    .line 3
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->b:LWT;

    .line 4
    invoke-virtual {p1}, LWT;->a()LVT;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    return-void
.end method

.method public static create(J)Lorg/chromium/content/browser/MediaSessionImpl;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/browser/MediaSessionImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/MediaSessionImpl;-><init>(J)V

    return-object v0
.end method

.method private hasObservers()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->b:LWT;

    invoke-virtual {v0}, LWT;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private mediaSessionActionsChanged([I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    check-cast p1, LUT;

    invoke-virtual {p1}, LUT;->b()V

    :goto_1
    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP01;

    invoke-virtual {p1, v0}, LP01;->a(Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private mediaSessionArtworkChanged([Lorg/chromium/services/media_session/MediaImage;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP01;

    invoke-virtual {v0, p1}, LP01;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mediaSessionDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP01;

    invoke-virtual {v0}, LP01;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP01;

    invoke-virtual {v0}, LP01;->b()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->b:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->a:J

    return-void
.end method

.method private mediaSessionMetadataChanged(Lorg/chromium/services/media_session/MediaMetadata;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP01;

    invoke-virtual {v0, p1}, LP01;->a(Lorg/chromium/services/media_session/MediaMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mediaSessionPositionChanged(Lorg/chromium/services/media_session/MediaPosition;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP01;

    invoke-virtual {v0, p1}, LP01;->a(Lorg/chromium/services/media_session/MediaPosition;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mediaSessionStateChanged(ZZ)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->d:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->c:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP01;

    invoke-virtual {v0, p1, p2}, LP01;->a(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
