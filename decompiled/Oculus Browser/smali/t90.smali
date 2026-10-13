.class public final synthetic Lt90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LB90;

.field public final b:Lorg/chromium/chrome/browser/download/DownloadItem;


# direct methods
.method public constructor <init>(LB90;Lorg/chromium/chrome/browser/download/DownloadItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt90;->a:LB90;

    iput-object p2, p0, Lt90;->b:Lorg/chromium/chrome/browser/download/DownloadItem;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lt90;->a:LB90;

    iget-object v1, p0, Lt90;->b:Lorg/chromium/chrome/browser/download/DownloadItem;

    check-cast p1, Lz80;

    if-eqz v0, :cond_6

    .line 1
    iget-wide v2, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    .line 2
    iget-wide v4, p1, Lz80;->a:J

    invoke-virtual {v1, v4, v5}, Lorg/chromium/chrome/browser/download/DownloadItem;->a(J)V

    .line 3
    iget-object v4, v0, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-boolean v6, p1, Lz80;->b:Z

    if-nez v6, :cond_1

    if-eqz v4, :cond_5

    .line 5
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    .line 6
    invoke-virtual/range {v0 .. v5}, LB90;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;JILjava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object v6, p1, Lz80;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 8
    iget-object v6, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 9
    invoke-static {v6}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object v6

    iget-object v7, p1, Lz80;->e:Ljava/lang/String;

    .line 10
    iput-object v7, v6, Ln80;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {v6}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v6

    .line 12
    iput-object v6, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 13
    :cond_2
    iget-object v6, v0, LB90;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 14
    iget-object v6, v0, LB90;->a:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    :cond_3
    iget-object v6, v0, LB90;->c:Landroid/util/LongSparseArray;

    iget-wide v7, p1, Lz80;->a:J

    invoke-virtual {v6, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v4, :cond_4

    .line 16
    iget-wide v6, p1, Lz80;->a:J

    .line 17
    iget-object v4, v0, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx90;

    .line 18
    iget-object v8, v0, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 19
    iget-object v2, v0, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 20
    iget-wide v2, p1, Lz80;->a:J

    .line 21
    iget-object v4, v0, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx90;

    .line 22
    iget-object v2, v2, Lx90;->a:Ljava/util/Map;

    const-string v3, "installNotifyURI"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 24
    iget-wide v3, p1, Lz80;->a:J

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    iget-object v3, v0, LB90;->b:Landroid/content/SharedPreferences;

    const-string v4, "PendingOMADownloads"

    .line 27
    invoke-static {v3, v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 28
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v2, v0, LB90;->b:Landroid/content/SharedPreferences;

    .line 30
    invoke-static {v2, v4, v3, v5}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 31
    :cond_4
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;Lz80;)V

    .line 32
    iget-object v0, v0, LB90;->e:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LA90;

    iget-wide v2, p1, Lz80;->a:J

    invoke-interface {v1, v2, v3}, LA90;->a(J)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 p1, 0x0

    .line 33
    throw p1
.end method
