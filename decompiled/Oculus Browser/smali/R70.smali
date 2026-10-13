.class public LR70;
.super LXg0;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/content/Intent;

.field public final synthetic x:LbU0;

.field public final synthetic y:Z

.field public final synthetic z:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;Landroid/content/Intent;LbU0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LR70;->z:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    iput-object p2, p0, LR70;->w:Landroid/content/Intent;

    iput-object p3, p0, LR70;->x:LbU0;

    iput-boolean p4, p0, LR70;->y:Z

    invoke-direct {p0}, LXg0;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 14

    .line 1
    iget-object v0, p0, LR70;->z:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->y:Landroid/os/Handler;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->z:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    .line 4
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v0, p0, LR70;->w:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, LR70;->x:LbU0;

    .line 6
    invoke-static {v0}, LcU0;->a(LbU0;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-boolean v0, p0, LR70;->y:Z

    const/4 v5, 0x5

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    invoke-static {v0}, LX80;->b(I)V

    .line 8
    iget-boolean v0, p0, LR70;->y:Z

    if-nez v0, :cond_3

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    iget-object v6, p0, LR70;->x:LbU0;

    iget-object v6, v6, LbU0;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {v3}, LX80;->a(I)V

    .line 11
    sget-object v7, Lorg/chromium/chrome/browser/download/DownloadManagerService;->R:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v7, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->B:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 13
    iput-object v6, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->B:Ljava/lang/String;

    const-string v6, "MobileDownload.Background.FirstDownload"

    .line 14
    invoke-static {v6, v3, v5}, LfV;->a(Ljava/lang/String;II)V

    .line 15
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide v5

    iget-object v7, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->B:Ljava/lang/String;

    .line 16
    invoke-static {v5, v6, v0, v7, v4}, LJ/N;->MBkC1K8I(JLjava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    const-string v5, "UseDownloadOfflineContentProvider"

    .line 17
    invoke-static {v5}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    new-instance v5, LP80;

    invoke-direct {v5, v0}, LP80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;)V

    goto :goto_1

    .line 19
    :cond_2
    throw v2

    .line 20
    :cond_3
    :goto_1
    invoke-static {v4}, LD01;->a(I)LF01;

    move-result-object v0

    .line 21
    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    iget-object v5, p0, LR70;->w:Landroid/content/Intent;

    const-string v6, "org.chromium.chrome.browser.download.IS_OFF_THE_RECORD"

    .line 22
    invoke-static {v5, v6, v3}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v5

    .line 23
    invoke-static {v0, v5}, LJ/N;->MpMcd8D3(ZZ)V

    .line 24
    iget-object v8, p0, LR70;->z:Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    iget-object v10, p0, LR70;->w:Landroid/content/Intent;

    if-eqz v8, :cond_19

    .line 25
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, LX80;->a(Ljava/lang/String;)V

    .line 27
    invoke-static {v10}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(Landroid/content/Intent;)LbU0;

    move-result-object v13

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, -0x6cf7d69b

    const/4 v7, -0x1

    if-eq v2, v5, :cond_5

    const v5, -0x4c7791d9

    if-eq v2, v5, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "org.chromium.chrome.browser.download.DOWNLOAD_OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const-string v2, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, -0x1

    :goto_3
    if-eqz v2, :cond_14

    if-eq v2, v4, :cond_13

    .line 29
    iget-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->w:Lh90;

    .line 30
    invoke-static {v10}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(Landroid/content/Intent;)LbU0;

    move-result-object v5

    .line 31
    invoke-virtual {v2, v5}, Lh90;->a(LbU0;)Ld90;

    move-result-object v2

    if-nez v2, :cond_7

    .line 32
    invoke-static {v10, v6, v3}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_4

    .line 33
    :cond_7
    iget-boolean v5, v2, Ld90;->b:Z

    .line 34
    :goto_4
    invoke-static {v13}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(LbU0;)Lc90;

    move-result-object v6

    .line 35
    invoke-static {v6}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v13}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x42732667

    const/4 v11, 0x2

    if-eq v8, v9, :cond_a

    const v9, -0x222410e9

    if-eq v8, v9, :cond_9

    const v9, -0x8507736

    if-eq v8, v9, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_6

    :cond_9
    const-string v1, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    const-string v1, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v0, -0x1

    :goto_6
    if-eqz v0, :cond_f

    if-eq v0, v4, :cond_e

    if-eq v0, v11, :cond_c

    goto/16 :goto_9

    :cond_c
    if-eqz v2, :cond_d

    .line 38
    new-instance v0, Ln80;

    invoke-direct {v0}, Ln80;-><init>()V

    iget-object v1, v2, Ld90;->f:LbU0;

    iget-object v5, v1, LbU0;->b:Ljava/lang/String;

    .line 39
    iput-object v5, v0, Ln80;->m:Ljava/lang/String;

    .line 40
    invoke-static {v1}, LcU0;->b(LbU0;)Z

    move-result v1

    .line 41
    iput-boolean v1, v0, Ln80;->u:Z

    .line 42
    iget-object v1, v2, Ld90;->d:Ljava/lang/String;

    .line 43
    iput-object v1, v0, Ln80;->e:Ljava/lang/String;

    .line 44
    iget-boolean v1, v2, Ld90;->b:Z

    .line 45
    iput-boolean v1, v0, Ln80;->t:Z

    const-wide/16 v7, -0x1

    .line 46
    iput-wide v7, v0, Ln80;->j:J

    .line 47
    iget-object v1, v2, Ld90;->f:LbU0;

    .line 48
    iput-object v1, v0, Ln80;->y:LbU0;

    .line 49
    iget-boolean v1, v2, Ld90;->g:Z

    .line 50
    iput-boolean v1, v0, Ln80;->A:Z

    .line 51
    invoke-virtual {v0}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v0

    .line 52
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadItem;

    invoke-direct {v1, v3, v0}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    goto :goto_7

    .line 53
    :cond_d
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadItem;

    new-instance v0, Ln80;

    invoke-direct {v0}, Ln80;-><init>()V

    iget-object v2, v13, LbU0;->b:Ljava/lang/String;

    .line 54
    iput-object v2, v0, Ln80;->m:Ljava/lang/String;

    .line 55
    iput-boolean v5, v0, Ln80;->t:Z

    .line 56
    invoke-virtual {v0}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    :goto_7
    const-string v0, "org.chromium.chrome.browser.download.IS_AUTO_RESUMPTION"

    .line 57
    invoke-static {v10, v0, v3}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 58
    invoke-interface {v6, v13, v1, v0}, Lc90;->a(LbU0;Lorg/chromium/chrome/browser/download/DownloadItem;Z)V

    goto :goto_9

    .line 59
    :cond_e
    invoke-interface {v6, v13, v5}, Lc90;->a(LbU0;Z)V

    goto :goto_9

    .line 60
    :cond_f
    invoke-static {v13}, LcU0;->a(LbU0;)Z

    move-result v0

    const-string v1, "org.chromium.chrome.browser.download.OfflineItemsStateAtCancel"

    .line 61
    invoke-virtual {v10, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_10

    goto :goto_8

    .line 62
    :cond_10
    sget-object v2, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 63
    iget-boolean v2, v2, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v2, :cond_11

    goto :goto_8

    :cond_11
    const/4 v2, 0x4

    if-eqz v0, :cond_12

    const-string v0, "Android.OfflineItems.StateAtCancel.Downloads"

    .line 64
    invoke-static {v0, v1, v2}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_8

    :cond_12
    const-string v0, "Android.OfflineItems.StateAtCancel.OfflinePages"

    .line 65
    invoke-static {v0, v1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 66
    :goto_8
    invoke-interface {v6, v13, v5}, Lc90;->b(LbU0;Z)V

    .line 67
    :goto_9
    invoke-interface {v6}, Lc90;->a()V

    goto :goto_b

    :cond_13
    if-eqz v13, :cond_18

    .line 68
    invoke-static {}, Lca0;->a()Lba0;

    move-result-object v0

    .line 69
    iget-object v0, v0, Lba0;->w:LeU0;

    invoke-interface {v0, v4, v13}, LeU0;->a(ILbU0;)V

    goto :goto_b

    .line 70
    :cond_14
    sget-object v9, LzT;->a:Landroid/content/Context;

    const-string v0, "DownloadFilePath"

    .line 71
    invoke-static {v10, v0}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, -0x1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v0

    move-object v12, v13

    .line 73
    invoke-virtual/range {v7 .. v12}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;JLbU0;)V

    goto :goto_b

    :cond_15
    const-string v0, "extra_click_download_ids"

    .line 74
    invoke-virtual {v10, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_17

    .line 75
    array-length v1, v0

    if-nez v1, :cond_16

    goto :goto_a

    .line 76
    :cond_16
    aget-wide v1, v0, v3

    .line 77
    new-instance v0, LP70;

    move-object v7, v0

    move-wide v11, v1

    invoke-direct/range {v7 .. v13}, LP70;-><init>(Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;Landroid/content/Context;Landroid/content/Intent;JLbU0;)V

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(JLorg/chromium/base/Callback;)V

    goto :goto_b

    :cond_17
    :goto_a
    const/4 v0, 0x3

    .line 78
    invoke-static {v9, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;I)V

    :cond_18
    :goto_b
    return-void

    .line 79
    :cond_19
    throw v2
.end method

.method public p()Z
    .locals 3

    .line 1
    iget-object v0, p0, LR70;->x:LbU0;

    invoke-static {v0}, LcU0;->a(LbU0;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LR70;->w:Landroid/content/Intent;

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "org.chromium.chrome.browser.download.DOWNLOAD_OPEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
