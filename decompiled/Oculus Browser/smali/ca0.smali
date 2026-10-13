.class public abstract Lca0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lba0;


# direct methods
.method public static a()Lba0;
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lca0;->a:Lba0;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Laa0;->a()LeU0;

    move-result-object v0

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    .line 6
    sget-object v2, Lorg/chromium/chrome/browser/offlinepages/downloads/OfflinePageDownloadBridge;->a:Lorg/chromium/chrome/browser/offlinepages/downloads/OfflinePageDownloadBridge;

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Lorg/chromium/chrome/browser/offlinepages/downloads/OfflinePageDownloadBridge;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/offlinepages/downloads/OfflinePageDownloadBridge;-><init>()V

    sput-object v2, Lorg/chromium/chrome/browser/offlinepages/downloads/OfflinePageDownloadBridge;->a:Lorg/chromium/chrome/browser/offlinepages/downloads/OfflinePageDownloadBridge;

    .line 8
    :cond_0
    new-instance v2, Lba0;

    invoke-direct {v2, v0, v1}, Lba0;-><init>(LeU0;LY80;)V

    sput-object v2, Lca0;->a:Lba0;

    .line 9
    :cond_1
    sget-object v0, Lca0;->a:Lba0;

    return-object v0
.end method
