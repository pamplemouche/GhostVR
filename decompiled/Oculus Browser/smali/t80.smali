.class public Lt80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;


# instance fields
.field public final synthetic a:Lu80;


# direct methods
.method public synthetic constructor <init>(Lu80;Lr80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt80;->a:Lu80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LbU0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lt80;->a:Lu80;

    .line 2
    iget-object v0, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lt80;->a:Lu80;

    .line 5
    iget-object v1, v0, Lu80;->D:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ln80;

    invoke-direct {v1}, Ln80;-><init>()V

    .line 7
    iput-object p1, v1, Ln80;->y:LbU0;

    .line 8
    invoke-virtual {v1}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v1

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    .line 11
    iget-object v3, v0, Lu80;->D:Ljava/util/Map;

    .line 12
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v2, LG90;

    invoke-virtual {v2, v3, v1}, LG90;->a(ILorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 13
    iget-object v0, v0, Lu80;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 14
    iget-object v2, p0, Lt80;->a:Lu80;

    .line 15
    iget-boolean v2, v2, Lu80;->x:Z

    .line 16
    invoke-static {p1, v2, v0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(LbU0;ZI)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v2, p0, Lt80;->a:Lu80;

    if-eqz v2, :cond_5

    .line 18
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 19
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;I)V

    .line 20
    :goto_1
    iget-object v0, p0, Lt80;->a:Lu80;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const-string p1, "Android.Download.InfoBar.LinkClicked.OpenDownload"

    .line 21
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p1, "Android.Download.InfoBar.LinkClicked.OpenDownloadHome"

    .line 22
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 23
    :goto_3
    iget-object p1, p0, Lt80;->a:Lu80;

    invoke-virtual {p1}, Lu80;->a()V

    return-void

    .line 24
    :cond_4
    throw v1

    .line 25
    :cond_5
    throw v1
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lt80;->a:Lu80;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "Android.Download.InfoBar.CloseButtonClicked"

    .line 27
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 28
    iget p1, p1, Lu80;->E:I

    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 29
    iget-object p1, p0, Lt80;->a:Lu80;

    .line 30
    invoke-virtual {p1}, Lu80;->c()Ls80;

    move-result-object v1

    iget v1, v1, Ls80;->a:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lu80;->b()Lorg/chromium/chrome/browser/tab/Tab;

    .line 32
    :goto_0
    iget-object p1, p0, Lt80;->a:Lu80;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1, v0, v2, v1, v2}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    goto :goto_1

    .line 34
    :cond_1
    throw v0

    :cond_2
    :goto_1
    return-void
.end method
