.class public final synthetic LJ80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/download/DownloadManagerService;

.field public final b:Le80;

.field public final c:Ljava/util/List;

.field public final d:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Le80;Ljava/util/List;Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ80;->a:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iput-object p2, p0, LJ80;->b:Le80;

    iput-object p3, p0, LJ80;->c:Ljava/util/List;

    iput-object p4, p0, LJ80;->d:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, LJ80;->a:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v1, p0, LJ80;->b:Le80;

    iget-object v2, p0, LJ80;->c:Ljava/util/List;

    iget-object v3, p0, LJ80;->d:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-boolean v5, v1, Le80;->b:Z

    if-eqz v5, :cond_1

    iget-object v1, v1, Le80;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 4
    iget-object v7, v5, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 5
    iget-object v7, v7, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_7

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 7
    invoke-static {v7}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LN70;

    .line 9
    iget-object v11, v10, LN70;->b:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    iget-object v10, v10, LN70;->b:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v7, 0x0

    .line 11
    :goto_3
    iget-object v5, v5, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 12
    iget v8, v5, Lorg/chromium/chrome/browser/download/DownloadInfo;->v:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_8

    .line 13
    iget-boolean v5, v5, Lorg/chromium/chrome/browser/download/DownloadInfo;->r:Z

    if-eqz v5, :cond_9

    :cond_8
    const/4 v5, 0x2

    if-ne v8, v5, :cond_a

    :cond_9
    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_2

    if-eqz v7, :cond_2

    .line 14
    iget-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->A:Landroid/os/Handler;

    new-instance v1, LK80;

    invoke-direct {v1, v0}, LK80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x6

    if-eqz v3, :cond_b

    .line 15
    invoke-static {v3, p1, v9}, LJ/N;->MtxNNFos(Ljava/lang/Object;IZ)V

    goto :goto_5

    :cond_b
    throw v4

    :cond_c
    :goto_5
    return-void

    .line 16
    :cond_d
    throw v4
.end method
