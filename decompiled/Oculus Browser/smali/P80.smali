.class public LP80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LdU0;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, LP80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Laa0;->a()LeU0;

    move-result-object p1

    invoke-interface {p1, p0}, LeU0;->a(LdU0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V
    .locals 2

    .line 1
    iget-object p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-static {p2}, LcU0;->a(LbU0;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, LP80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadManagerService;ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p2, p0, LP80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadManagerService;ILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p2, p0, LP80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadManagerService;ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p2, p0, LP80;->w:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    const/4 v0, 0x1

    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    iget-object p1, p1, LbU0;->b:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadManagerService;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(LbU0;)V
    .locals 0

    return-void
.end method
