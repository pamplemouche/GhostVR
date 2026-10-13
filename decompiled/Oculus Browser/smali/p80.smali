.class public final synthetic Lp80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lu80;

.field public final b:Lorg/chromium/chrome/browser/download/DownloadItem;


# direct methods
.method public constructor <init>(Lu80;Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp80;->a:Lu80;

    iput-object p2, p0, Lp80;->b:Lorg/chromium/chrome/browser/download/DownloadItem;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lp80;->a:Lu80;

    iget-object v1, p0, Lp80;->b:Lorg/chromium/chrome/browser/download/DownloadItem;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->a:LbU0;

    .line 3
    invoke-virtual {v0, p1}, Lu80;->c(LbU0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 5
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadInfo;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Lorg/chromium/components/offline_items_collection/OfflineItem;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v1, v1}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
