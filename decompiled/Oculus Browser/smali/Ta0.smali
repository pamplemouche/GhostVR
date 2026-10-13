.class public LTa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LGw;


# instance fields
.field public a:Lorg/chromium/chrome/browser/feed/FeedContentBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/chromium/chrome/browser/feed/FeedContentBridge;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/feed/FeedContentBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, LTa0;->a:Lorg/chromium/chrome/browser/feed/FeedContentBridge;

    return-void
.end method


# virtual methods
.method public a(LJx;)V
    .locals 5

    .line 39
    iget-object v0, p0, LTa0;->a:Lorg/chromium/chrome/browser/feed/FeedContentBridge;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    invoke-interface {p1, v0}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, LRa0;

    invoke-direct {v1, p1}, LRa0;-><init>(LJx;)V

    new-instance v2, LSa0;

    invoke-direct {v2, p1}, LSa0;-><init>(LJx;)V

    .line 42
    iget-wide v3, v0, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    .line 43
    invoke-static {v3, v4, v0, v1, v2}, LJ/N;->Mj8PQvQF(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;LJx;)V
    .locals 6

    .line 8
    iget-object v2, p0, LTa0;->a:Lorg/chromium/chrome/browser/feed/FeedContentBridge;

    if-nez v2, :cond_0

    .line 9
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    invoke-interface {p2, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v4, LOa0;

    invoke-direct {v4, p2}, LOa0;-><init>(LJx;)V

    new-instance v5, LPa0;

    invoke-direct {v5, p2}, LPa0;-><init>(LJx;)V

    .line 11
    iget-wide v0, v2, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    move-object v3, p1

    .line 12
    invoke-static/range {v0 .. v5}, LJ/N;->MXmSscWE(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;LJx;)V
    .locals 6

    .line 1
    iget-object v2, p0, LTa0;->a:Lorg/chromium/chrome/browser/feed/FeedContentBridge;

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    invoke-interface {p2, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v4, LMa0;

    invoke-direct {v4, p2}, LMa0;-><init>(LJx;)V

    new-instance v5, LNa0;

    invoke-direct {v5, p2}, LNa0;-><init>(LJx;)V

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    .line 5
    iget-wide v0, v2, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    .line 6
    invoke-static/range {v0 .. v5}, LJ/N;->MrS8flIs(JLjava/lang/Object;[Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public a(Lzw;LJx;)V
    .locals 5

    .line 13
    iget-object v0, p0, LTa0;->a:Lorg/chromium/chrome/browser/feed/FeedContentBridge;

    if-nez v0, :cond_0

    .line 14
    sget-object p1, Lxw;->c:Lxw;

    invoke-interface {p2, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_0
    new-instance v1, LQa0;

    invoke-direct {v1, p2}, LQa0;-><init>(LJx;)V

    .line 16
    iget-wide v2, v0, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    .line 17
    invoke-static {v2, v3, v0}, LJ/N;->Ms1M0Rxo(JLjava/lang/Object;)V

    .line 18
    iget-object p1, p1, Lzw;->a:Ljava/util/List;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LFw;

    .line 20
    iget v2, p2, LFw;->a:I

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 p2, 0x4

    if-eq v2, p2, :cond_1

    .line 21
    iget-wide p1, v0, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    .line 22
    invoke-static {p1, p2, v0}, LJ/N;->MXlknZVM(JLjava/lang/Object;)V

    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_1
    iget-wide v2, v0, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    .line 25
    invoke-static {v2, v3, v0}, LJ/N;->MZ2u2oa4(JLjava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_2
    check-cast p2, LEw;

    .line 27
    iget-wide v2, v0, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    .line 28
    iget-object v4, p2, LEw;->b:Ljava/lang/String;

    .line 29
    iget-object p2, p2, LEw;->c:[B

    .line 30
    invoke-static {v2, v3, v0, v4, p2}, LJ/N;->M6d_C$mS(JLjava/lang/Object;Ljava/lang/String;[B)V

    goto :goto_0

    .line 31
    :cond_3
    check-cast p2, LDw;

    const/4 p1, 0x0

    .line 32
    throw p1

    .line 33
    :cond_4
    check-cast p2, LBw;

    .line 34
    iget-wide v2, v0, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    .line 35
    iget-object p2, p2, LBw;->b:Ljava/lang/String;

    .line 36
    invoke-static {v2, v3, v0, p2}, LJ/N;->MDLslDIB(JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_5
    iget-wide p1, v0, Lorg/chromium/chrome/browser/feed/FeedContentBridge;->a:J

    .line 38
    invoke-static {p1, p2, v0, v1}, LJ/N;->MK1VOe6w(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
