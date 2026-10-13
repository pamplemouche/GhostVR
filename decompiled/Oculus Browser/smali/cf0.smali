.class public Lcf0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Ldf0;


# direct methods
.method public constructor <init>(Ldf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcf0;->a:Ldf0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object v0

    iget-object v2, p0, Lcf0;->a:Ldf0;

    iget-object v2, v2, Ldf0;->z:Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;

    .line 3
    iget-object v2, v2, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->J:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    throw v1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcf0;->a:Ldf0;

    iget-object v0, v0, Ldf0;->x:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcf0;->a:Ldf0;

    iget-object v0, v0, Ldf0;->z:Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;

    .line 6
    iget-object v1, v0, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->J:Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcf0;->a:Ldf0;

    iget-object v1, p1, Ldf0;->y:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p1, p1, Ldf0;->z:Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;

    .line 3
    iget-boolean v3, p1, Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;->M:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 4
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, LzT;->a:Landroid/content/Context;

    const/4 v0, 0x5

    .line 6
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
