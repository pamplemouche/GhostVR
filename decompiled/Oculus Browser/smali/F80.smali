.class public final synthetic LF80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

.field public final x:Lorg/chromium/chrome/browser/download/DownloadItem;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iput-object p2, p0, LF80;->x:Lorg/chromium/chrome/browser/download/DownloadItem;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LF80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v1, p0, LF80;->x:Lorg/chromium/chrome/browser/download/DownloadItem;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/download/DownloadItem;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, LcU0;->a(ZLjava/lang/String;)LbU0;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(LbU0;Lorg/chromium/chrome/browser/download/DownloadItem;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
