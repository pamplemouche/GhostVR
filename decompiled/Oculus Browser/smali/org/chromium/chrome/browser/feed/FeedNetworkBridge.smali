.class public Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltw;


# instance fields
.field public w:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, LJ/N;->MJgQejym(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;->w:J

    return-void
.end method

.method public static final synthetic a(LJx;Lcom/google/android/libraries/feed/api/host/network/HttpResponse;)V
    .locals 0

    .line 10
    invoke-interface {p0, p1}, LJx;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static createHttpResponse(I[B)Lcom/google/android/libraries/feed/api/host/network/HttpResponse;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/feed/api/host/network/HttpResponse;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method public a(Lsw;LJx;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/16 p1, 0x1f4

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;->createHttpResponse(I[B)Lcom/google/android/libraries/feed/api/host/network/HttpResponse;

    move-result-object p1

    invoke-interface {p2, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;->w:J

    .line 4
    iget-object v2, p1, Lsw;->a:Landroid/net/Uri;

    .line 5
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, p1, Lsw;->c:Ljava/lang/String;

    .line 7
    iget-object v5, p1, Lsw;->b:[B

    .line 8
    new-instance v6, Lnb0;

    invoke-direct {v6, p2}, Lnb0;-><init>(LJx;)V

    move-object v2, p0

    .line 9
    invoke-static/range {v0 .. v6}, LJ/N;->MKArndPP(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;->w:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mb1MEFzF(JLjava/lang/Object;)V

    return-void
.end method
