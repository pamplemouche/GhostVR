.class public Lorg/chromium/chrome/browser/notifications/NotificationSystemStatusUtil;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static getAppNotificationStatus()I
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v1, LK3;

    invoke-direct {v1, v0}, LK3;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1}, LK3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method
