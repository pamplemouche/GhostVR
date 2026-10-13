.class public Lorg/chromium/chrome/browser/webapps/WebApkInstallService;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "browser"

    .line 2
    invoke-static {v1, v2}, LXl0;->a(ZLjava/lang/String;)LPl0;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object p1

    .line 4
    invoke-interface {p1, p4}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    move-result-object p1

    const p3, 0x7f08010d

    .line 6
    invoke-interface {p1, p3}, LPl0;->c(I)LPl0;

    move-result-object p1

    .line 7
    invoke-interface {p1, p5}, LPl0;->a(Landroid/app/PendingIntent;)LPl0;

    move-result-object p1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-interface {p1, p3, p4}, LPl0;->a(J)LPl0;

    move-result-object p1

    .line 9
    invoke-static {p2}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    move-result-object p1

    const/4 p2, 0x1

    .line 11
    invoke-interface {p1, p2}, LPl0;->f(Z)LPl0;

    const-string p1, "notification"

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const-string p2, "webapk_install_notification_tag_prefix."

    .line 13
    invoke-static {p2, p0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    .line 14
    invoke-interface {v1}, LPl0;->a()Landroid/app/Notification;

    move-result-object p3

    .line 15
    invoke-virtual {p1, p0, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public static cancelNotification(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "notification"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webapk_install_notification_tag_prefix."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static showInstallInProgressNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 10

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13042c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/ShortcutHelper;->a()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 4
    invoke-static {p3}, Lorg/chromium/chrome/browser/ShortcutHelper;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    move-object v7, p3

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v0

    .line 5
    invoke-static/range {v4 .. v9}, Lorg/chromium/chrome/browser/webapps/WebApkInstallService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 6
    invoke-static {v0}, Lorg/chromium/chrome/browser/ShortcutHelper;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static showInstalledNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 9

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p3, v1}, Lxf1;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const/high16 v2, 0x8000000

    .line 3
    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz p5, :cond_0

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/ShortcutHelper;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p4}, Lorg/chromium/chrome/browser/ShortcutHelper;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_0
    move-object v6, p4

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p4, 0x7f13042d

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-static/range {v3 .. v8}, Lorg/chromium/chrome/browser/webapps/WebApkInstallService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
