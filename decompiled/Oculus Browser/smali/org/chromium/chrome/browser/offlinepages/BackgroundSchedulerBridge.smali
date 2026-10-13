.class public Lorg/chromium/chrome/browser/offlinepages/BackgroundSchedulerBridge;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static backupSchedule(Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;J)V
    .locals 7

    .line 1
    sget-object v0, Lan0;->a:Lbn0;

    const-wide/16 v1, 0x3e8

    mul-long v2, p1, v1

    const-wide/32 v4, 0x240c8400

    const/4 v6, 0x0

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lbn0;->a(Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;JJZ)V

    return-void
.end method

.method public static createTriggerConditions(ZIZ)Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;-><init>(ZIZ)V

    return-object v0
.end method

.method public static getBatteryConditions()I
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, LhZ;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v1}, LhZ;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getNetworkConditions()I
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, LhZ;->c(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getPowerConditions()Z
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, LhZ;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v1}, LhZ;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static schedule(Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;)V
    .locals 7

    .line 1
    sget-object v0, Lan0;->a:Lbn0;

    const-wide/32 v4, 0x240c8400

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lbn0;->a(Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;JJZ)V

    return-void
.end method

.method public static unschedule()V
    .locals 3

    .line 1
    sget-object v0, Lan0;->a:Lbn0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    const/16 v2, 0x4d

    .line 4
    check-cast v0, LjS0;

    invoke-virtual {v0, v1, v2}, LjS0;->a(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
