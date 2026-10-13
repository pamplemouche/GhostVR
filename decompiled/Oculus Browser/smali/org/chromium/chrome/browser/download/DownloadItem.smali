.class public Lorg/chromium/chrome/browser/download/DownloadItem;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LbU0;

.field public b:Z

.field public c:Lorg/chromium/chrome/browser/download/DownloadInfo;

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LbU0;

    invoke-direct {v0}, LbU0;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->a:LbU0;

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    .line 4
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->b:Z

    .line 5
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p2, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 7
    iget-object p1, p1, LbU0;->a:Ljava/lang/String;

    iput-object p1, v0, LbU0;->a:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->a:LbU0;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, LbU0;->b:Ljava/lang/String;

    return-void
.end method

.method public static createDownloadItem(Lorg/chromium/chrome/browser/download/DownloadInfo;JJZ)Lorg/chromium/chrome/browser/download/DownloadItem;
    .locals 0

    .line 1
    new-instance p3, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 2
    iput-wide p1, p3, Lorg/chromium/chrome/browser/download/DownloadItem;->e:J

    return-object p3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadItem;->a:LbU0;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, LbU0;->b:Ljava/lang/String;

    return-void
.end method
