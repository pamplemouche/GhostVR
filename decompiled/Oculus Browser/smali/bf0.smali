.class public Lbf0;
.super LE0;
.source "PG"


# instance fields
.field public final synthetic b:LUf0;

.field public final synthetic c:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;LUf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbf0;->c:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    iput-object p2, p0, Lbf0;->b:LUf0;

    invoke-direct {p0}, LE0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lbf0;->c:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    .line 2
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->J:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->J:Z

    .line 4
    iget-object v0, p0, Lbf0;->b:LUf0;

    .line 5
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->b(LUf0;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    .line 7
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->h:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, Laf0;

    invoke-direct {v1, p1}, Laf0;-><init>(Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;)V

    const-wide/16 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1
.end method
