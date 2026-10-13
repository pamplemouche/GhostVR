.class public Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpb0;
.implements Lew;


# instance fields
.field public a:J

.field public b:Lfw;

.field public c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;Lfw;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->c:Ljava/util/Set;

    .line 3
    invoke-static {p0, p1}, LJ/N;->MaGrAjgz(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->a:J

    .line 5
    iput-object p2, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->b:Lfw;

    .line 6
    check-cast p2, LBy;

    .line 7
    iget-object p1, p2, LBy;->b:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createLong(J)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private getKnownContent()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->b:Lfw;

    new-instance v1, Lob0;

    invoke-direct {v1, p0}, Lob0;-><init>(Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;)V

    check-cast v0, LBy;

    .line 2
    iget-object v2, v0, LBy;->a:Llx;

    sget-object v3, Lwy;->a:LKx;

    new-instance v4, Lxy;

    invoke-direct {v4, v0, v1}, Lxy;-><init>(LBy;LJx;)V

    check-cast v2, Liz;

    .line 3
    iget-object v0, v2, Liz;->n:LFx;

    new-instance v1, LZy;

    invoke-direct {v1, v2, v3, v4}, LZy;-><init>(Liz;LKx;LJx;)V

    const/16 v2, 0xe

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, v1}, LFx;->a(IILjava/lang/Runnable;)V

    return-void
.end method

.method private notifyStatusChange(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luw;

    .line 2
    invoke-interface {v1, p1, p2}, Luw;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZJ)V
    .locals 2

    .line 1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->a:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 2
    iget-wide p1, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->a:J

    .line 3
    invoke-static {p1, p2, p0}, LJ/N;->Mhsm9OvK(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MKWj9Aql(JLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->a:J

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->b:Lfw;

    check-cast v0, LBy;

    .line 5
    iget-object v0, v0, LBy;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
