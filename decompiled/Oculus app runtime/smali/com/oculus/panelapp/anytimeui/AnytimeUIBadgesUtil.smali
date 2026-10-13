.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUIBadgesUtil;
.super Ljava/lang/Object;
.source "AnytimeUIBadgesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeShowLivingRoomBadge(Landroid/content/Context;)V
    .locals 18

    .line 45
    sget-object v0, Lcom/oculus/vrshell/VrShellConst;->SEEN_LIVING_ROOM_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 46
    invoke-static {v2, v0, v1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Lcom/oculus/notifications/NotificationSender;->getNotifIcon(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/oculus/notifications/NotificationsDisplayDuration;->DEFAULT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->LIVING_ROOM:Lcom/oculus/vrshell/SystemUXRoute;

    .line 61
    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v2, p0

    .line 49
    invoke-static/range {v2 .. v17}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static maybeShowTVBadge(Landroid/content/Context;)V
    .locals 18

    .line 15
    sget-object v0, Lcom/oculus/vrshell/VrShellConst;->SEEN_TV_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 16
    invoke-static {v2, v0, v1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Lcom/oculus/notifications/NotificationSender;->getNotifIcon(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/oculus/notifications/NotificationsDisplayDuration;->DEFAULT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->TV:Lcom/oculus/vrshell/SystemUXRoute;

    .line 31
    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v2, p0

    .line 19
    invoke-static/range {v2 .. v17}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static setSeenLivingRoomBadge(Landroid/content/Context;)V
    .locals 2

    .line 71
    sget-object v0, Lcom/oculus/vrshell/VrShellConst;->SEEN_LIVING_ROOM_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    return-void
.end method

.method public static setSeenTVBadge(Landroid/content/Context;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/oculus/vrshell/VrShellConst;->SEEN_TV_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    return-void
.end method
