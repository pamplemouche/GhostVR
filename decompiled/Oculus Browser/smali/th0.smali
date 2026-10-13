.class public Lth0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LHh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    const-string v1, "UseDownloadOfflineContentProvider"

    .line 3
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadController;->a:LW70;

    .line 5
    :cond_1
    :goto_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    const v1, 0x7f1302fc

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, LR91;

    invoke-direct {v1}, LR91;-><init>()V

    .line 8
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 9
    sget-object v2, LV91;->o:LU91;

    if-nez v2, :cond_2

    .line 10
    new-instance v2, LV91;

    invoke-direct {v2, v1, v0}, LV91;-><init>(LR91;Ljava/lang/String;)V

    sput-object v2, LV91;->o:LU91;

    :cond_2
    return-void
.end method
