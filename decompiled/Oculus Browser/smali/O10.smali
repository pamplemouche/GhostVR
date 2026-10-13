.class public LO10;
.super LP10;
.source "PG"


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;JLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO10;->c:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    iput-wide p2, p0, LO10;->a:J

    iput-object p4, p0, LO10;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, LP10;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, LO10;->c:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LO10;->a:J

    sub-long/2addr v0, v2

    const-string v2, "PartnerBookmark.LoadingTime"

    .line 4
    invoke-static {v2, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    .line 5
    iget-object v0, p0, LO10;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
