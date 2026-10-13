.class public Lorg/chromium/chrome/browser/download/service/DownloadTaskScheduler;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x38

    return p0

    :cond_1
    const/16 p0, 0x36

    return p0

    :cond_2
    const/16 p0, 0x35

    return p0
.end method

.method public static cancelTask(I)V
    .locals 2

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/service/DownloadTaskScheduler;->a(I)I

    move-result p0

    check-cast v0, LjS0;

    invoke-virtual {v0, v1, p0}, LjS0;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static scheduleTask(IZZIJJ)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_task_type"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra_optimal_battery_percentage"

    .line 3
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "extra_battery_requires_charging"

    .line 4
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p3

    .line 6
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/service/DownloadTaskScheduler;->a(I)I

    move-result v1

    const-wide/16 v2, 0x3e8

    mul-long p4, p4, v2

    mul-long p6, p6, v2

    invoke-static {v1, p4, p5, p6, p7}, LOS0;->a(IJJ)LHS0;

    move-result-object p4

    const/4 p5, 0x2

    const/4 p6, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p6, :cond_0

    if-eq p0, p5, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x1

    :goto_0
    move p0, p5

    .line 7
    :goto_1
    iput p0, p4, LHS0;->c:I

    .line 8
    iput-boolean p2, p4, LHS0;->d:Z

    .line 9
    iput-boolean p6, p4, LHS0;->f:Z

    .line 10
    iput-boolean p6, p4, LHS0;->e:Z

    .line 11
    iput-object v0, p4, LHS0;->b:Landroid/os/Bundle;

    .line 12
    invoke-virtual {p4}, LHS0;->a()LOS0;

    move-result-object p0

    .line 13
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 14
    check-cast p3, LjS0;

    invoke-virtual {p3, p1, p0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method
