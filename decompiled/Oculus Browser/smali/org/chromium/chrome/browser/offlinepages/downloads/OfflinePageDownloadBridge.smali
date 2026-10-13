.class public Lorg/chromium/chrome/browser/offlinepages/downloads/OfflinePageDownloadBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/chrome/browser/offlinepages/downloads/OfflinePageDownloadBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->MnuITPuJ(Ljava/lang/Object;)J

    return-void
.end method

.method public static maybeSuppressNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v4, 0x2

    if-ne p0, v4, :cond_0

    .line 3
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 6
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    throw p0

    :catch_0
    :cond_0
    const-string p0, ""

    .line 8
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object p0

    .line 12
    iget-object p0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    if-nez p0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v2, p1}, LcU0;->a(ZLjava/lang/String;)LbU0;

    move-result-object p1

    .line 14
    sget-object v0, Lf90;->a:Lh90;

    .line 15
    invoke-virtual {v0, p1}, Lh90;->a(LbU0;)Ld90;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    new-instance v1, Ln80;

    invoke-direct {v1}, Ln80;-><init>()V

    .line 17
    iput-object p1, v1, Ln80;->y:LbU0;

    .line 18
    invoke-virtual {v1}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p1

    .line 19
    iget v0, v0, Ld90;->a:I

    check-cast p0, LG90;

    invoke-virtual {p0, v0, p1}, LG90;->a(ILorg/chromium/chrome/browser/download/DownloadInfo;)V

    :goto_1
    return v2

    :cond_4
    return v1

    .line 20
    :cond_5
    throw v0
.end method

.method public static openItem(Ljava/lang/String;JIZ)V
    .locals 1

    .line 1
    new-instance v0, Lpn0;

    invoke-direct {v0, p3, p1, p2, p4}, Lpn0;-><init>(IJZ)V

    invoke-static {p0, p1, p2, p3, v0}, Lmn0;->a(Ljava/lang/String;JILorg/chromium/base/Callback;)V

    return-void
.end method

.method public static showDownloadingToast()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v2, v3, v1, v1}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    const v2, 0x7f1302e4

    .line 6
    invoke-static {v0, v2, v1}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
