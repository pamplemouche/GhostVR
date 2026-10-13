.class public Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTaskScheduler;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(IZ)V
    .locals 4

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x14

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x384

    :goto_0
    int-to-long v2, p0

    add-long/2addr v0, v2

    const/16 p0, 0x4e

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/32 v2, 0x240c8400

    .line 1
    invoke-static {p0, v0, v1, v2, v3}, LOS0;->a(IJJ)LHS0;

    move-result-object p0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, LHS0;->c:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LHS0;->e:Z

    .line 4
    iput-boolean v0, p0, LHS0;->f:Z

    if-eqz p1, :cond_1

    .line 5
    iput v0, p0, LHS0;->c:I

    .line 6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "limitlessPrefetching"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    iput-object p1, p0, LHS0;->b:Landroid/os/Bundle;

    .line 9
    :cond_1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p1

    .line 10
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, LHS0;->a()LOS0;

    move-result-object p0

    .line 12
    check-cast p1, LjS0;

    invoke-virtual {p1, v0, p0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method

.method public static cancelTask()V
    .locals 3

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    const/16 v2, 0x4e

    .line 3
    check-cast v0, LjS0;

    invoke-virtual {v0, v1, v2}, LjS0;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static scheduleTask(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTaskScheduler;->a(IZ)V

    return-void
.end method

.method public static scheduleTaskLimitless(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/offlinepages/prefetch/PrefetchBackgroundTaskScheduler;->a(IZ)V

    return-void
.end method
