.class public abstract LT80;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, LUg0;->f:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DownloadMetrics"

    const-string v0, "Native is not loaded, dropping download open metrics."

    .line 4
    invoke-static {p1, v0, p0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lfa0;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    const/16 v1, 0xc

    if-ne p1, v0, :cond_1

    const-string p1, "Android.DownloadManager.OpenSource.Video"

    .line 6
    invoke-static {p1, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "Android.DownloadManager.OpenSource.Audio"

    .line 7
    invoke-static {p1, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const-string p1, "Android.DownloadManager.OpenSource.Other"

    .line 8
    invoke-static {p1, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method
