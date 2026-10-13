.class public Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static createChannel(Ljava/lang/String;JZ)Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;
    .locals 10

    .line 1
    sget-object v0, Lzm0;->a:LAm0;

    .line 2
    invoke-virtual {v0, p0}, LAm0;->c(Ljava/lang/String;)Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "sites"

    .line 3
    invoke-static {v1}, Lvm0;->a(Ljava/lang/String;)Lsm0;

    move-result-object v2

    .line 4
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Lsm0;->a(Landroid/content/res/Resources;)Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 7
    iget-object v3, v0, LAm0;->a:Lam0;

    check-cast v3, Lbm0;

    .line 8
    iget-object v3, v3, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 9
    new-instance v2, Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;

    const-string v3, "web:"

    .line 10
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11
    invoke-static {p0}, LzC0;->a(Ljava/lang/String;)LzC0;

    move-result-object v4

    invoke-virtual {v4}, LzC0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    xor-int/lit8 v9, p3, 0x1

    move-object v4, v2

    move-object v6, p0

    move-wide v7, p1

    .line 12
    invoke-direct/range {v4 .. v9}, Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 13
    iget-object p0, v0, LAm0;->a:Lam0;

    .line 14
    new-instance p1, Landroid/app/NotificationChannel;

    iget-object p2, v2, Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;->a:Ljava/lang/String;

    iget-object p3, v2, Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;->b:Ljava/lang/String;

    .line 15
    invoke-static {p3}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 16
    iget v0, v2, Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;->d:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 17
    :goto_0
    invoke-direct {p1, p2, p3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 18
    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 19
    check-cast p0, Lbm0;

    .line 20
    iget-object p0, p0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method public static deleteChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lzm0;->a:LAm0;

    .line 2
    iget-object v0, v0, LAm0;->a:Lam0;

    check-cast v0, Lbm0;

    .line 3
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static getChannelStatus(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lzm0;->a:LAm0;

    .line 2
    invoke-virtual {v0, p0}, LAm0;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSiteChannels()[Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;
    .locals 1

    .line 1
    sget-object v0, Lzm0;->a:LAm0;

    .line 2
    invoke-virtual {v0}, LAm0;->a()[Lorg/chromium/chrome/browser/notifications/NotificationSettingsBridge$SiteChannel;

    move-result-object v0

    return-object v0
.end method
