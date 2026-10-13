.class public Lim0;
.super LH10;
.source "PG"


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lim0;->e:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;->getInstance()Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;->a:Ljm0;

    check-cast v0, Lkm0;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x83d60

    add-long/2addr v0, v2

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;->schedule(J)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;->getInstance()Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;

    move-result-object p1

    .line 2
    iget-object p2, p2, LRS0;->b:Landroid/os/Bundle;

    const-string p3, "Timestamp"

    .line 3
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    const-wide v0, 0x7fffffffffffffffL

    const-string v2, "notification_trigger_scheduler.next_trigger"

    .line 5
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 p1, 0x0

    cmp-long v3, v0, p2

    if-eqz v3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, LyT;->a:Landroid/content/SharedPreferences;

    .line 7
    invoke-static {p2, v2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 8
    :goto_0
    iput-boolean p2, p0, Lim0;->e:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    return p1

    :cond_2
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    .line 10
    iget-boolean p1, p0, Lim0;->e:Z

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;->getInstance()Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, LJ/N;->M2E1scwJ()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lim0;->e:Z

    .line 4
    invoke-interface {p3, p1}, LKR0;->a(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    .line 6
    iget-boolean p1, p0, Lim0;->e:Z

    return p1
.end method
