.class public Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;->a:Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;->a:Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;->a:Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;

    return-object v0
.end method


# virtual methods
.method public a(JI)Z
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    const-string v3, "SoonestWakeupTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    new-instance v1, LIS0;

    invoke-direct {v1}, LIS0;-><init>()V

    .line 4
    iput-wide p1, v1, LIS0;->a:J

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v1, LIS0;->c:Z

    const-wide v2, 0x7fffffffffffffffL

    .line 6
    iput-wide v2, v1, LIS0;->b:J

    .line 7
    iput-boolean p1, v1, LIS0;->d:Z

    .line 8
    invoke-virtual {v1}, LIS0;->a()LJS0;

    move-result-object p2

    if-eqz p3, :cond_1

    if-eq p3, p1, :cond_0

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/16 p3, 0x69

    goto :goto_0

    :cond_1
    const/16 p3, 0x66

    .line 9
    :goto_0
    new-instance v1, LHS0;

    invoke-direct {v1, p3}, LHS0;-><init>(I)V

    .line 10
    iput-object p2, v1, LHS0;->g:LMS0;

    .line 11
    iput p1, v1, LHS0;->c:I

    .line 12
    iput-boolean p1, v1, LHS0;->f:Z

    .line 13
    iput-boolean p1, v1, LHS0;->e:Z

    .line 14
    iput-object v0, v1, LHS0;->b:Landroid/os/Bundle;

    .line 15
    invoke-virtual {v1}, LHS0;->a()LOS0;

    move-result-object p1

    .line 16
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p2

    .line 17
    sget-object p3, LzT;->a:Landroid/content/Context;

    .line 18
    check-cast p2, LjS0;

    invoke-virtual {p2, p3, p1}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    move-result p1

    return p1
.end method

.method public launchBrowserIfStopped(IZJ)V
    .locals 0

    if-nez p2, :cond_2

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p2

    .line 2
    sget-object p3, LzT;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x69

    goto :goto_0

    :cond_1
    const/16 p1, 0x66

    .line 3
    :goto_0
    check-cast p2, LjS0;

    invoke-virtual {p2, p3, p1}, LjS0;->a(Landroid/content/Context;I)V

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0, p3, p4, p1}, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;->a(JI)Z

    return-void
.end method
