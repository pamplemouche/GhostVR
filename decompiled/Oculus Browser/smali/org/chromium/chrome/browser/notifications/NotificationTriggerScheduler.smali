.class public Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljm0;


# direct methods
.method public constructor <init>(Ljm0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;->a:Ljm0;

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;
    .locals 1

    .line 1
    sget-object v0, Llm0;->a:Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;

    return-object v0
.end method


# virtual methods
.method public schedule(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationTriggerScheduler;->a:Ljm0;

    check-cast v0, Lkm0;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-wide v3, 0x7fffffffffffffffL

    const-string v5, "notification_trigger_scheduler.next_trigger"

    .line 4
    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    .line 5
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v5, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    return-void

    :cond_1
    move-wide p1, v2

    :goto_0
    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Timestamp"

    .line 9
    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 p1, 0x68

    .line 10
    invoke-static {p1, v0, v1, v0, v1}, LOS0;->a(IJJ)LHS0;

    move-result-object p1

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p1, LHS0;->f:Z

    .line 12
    iput-boolean p2, p1, LHS0;->e:Z

    .line 13
    iput-object v2, p1, LHS0;->b:Landroid/os/Bundle;

    .line 14
    invoke-virtual {p1}, LHS0;->a()LOS0;

    move-result-object p1

    .line 15
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p2

    .line 16
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 17
    check-cast p2, LjS0;

    invoke-virtual {p2, v0, p1}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 18
    throw p1
.end method
