.class public abstract LP01;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lorg/chromium/content/browser/MediaSessionImpl;


# direct methods
.method public constructor <init>(LO01;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lorg/chromium/content/browser/MediaSessionImpl;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p1, Lorg/chromium/content/browser/MediaSessionImpl;

    iput-object p1, p0, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    .line 4
    iget-object p1, p1, Lorg/chromium/content/browser/MediaSessionImpl;->b:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/services/media_session/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/services/media_session/MediaPosition;)V
    .locals 0

    return-void
.end method

.method public abstract a(ZZ)V
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lorg/chromium/content/browser/MediaSessionImpl;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    return-void
.end method
