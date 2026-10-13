.class public Lcom/oculus/notifications/NotificationSender;
.super Ljava/lang/Object;
.source "NotificationSender.java"


# static fields
.field public static sNextStorageNotification:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotifIcon(Ljava/lang/String;)I
    .locals 1

    const-string v0, "storage"

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 147
    sget p0, Lcom/oculus/common/notifications/R$drawable;->ic_notif_storage:I

    return p0

    .line 150
    :cond_0
    sget p0, Lcom/oculus/common/notifications/R$drawable;->ic_home:I

    return p0
.end method

.method public static sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p8

    const/4 v3, -0x1

    move v4, p4

    if-ne v4, v3, :cond_0

    .line 102
    sget v4, Lcom/oculus/notifications/NotificationSender;->sNextStorageNotification:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/oculus/notifications/NotificationSender;->sNextStorageNotification:I

    .line 106
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "vrshell_aui_persist"

    move/from16 v7, p9

    .line 107
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual/range {p10 .. p10}, Lcom/oculus/notifications/NotificationsDisplayDuration;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "aui_notif_duration"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "vrshell_aui_badge_route"

    move-object/from16 v7, p11

    .line 109
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "vrshell_aui_badge_auto_dismiss"

    move/from16 v7, p12

    .line 110
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "vrshell_aui_badge_badge_parent"

    move/from16 v7, p13

    .line 111
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "oculus_category"

    move-object/from16 v7, p14

    .line 112
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "oculus_ignore_missing_title"

    move/from16 v7, p15

    .line 113
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object v7, p1

    .line 118
    invoke-virtual {v6, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    move-object v7, p2

    .line 119
    invoke-virtual {v6, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    move v7, p5

    .line 120
    invoke-virtual {v6, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    move v7, p6

    .line 121
    invoke-virtual {v6, p6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 122
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 123
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v5, p7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "accept"

    .line 131
    invoke-virtual {v5, v3, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_2
    const-string v1, "notification"

    .line 136
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 137
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    move-object v2, p3

    invoke-virtual {v0, p3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public static sendTestNotif(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    move-object/from16 v0, p0

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    const-string v3, "[Missing Title]"

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    const-string v4, "[Missing Description]"

    .line 21
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "id"

    .line 22
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "priority"

    .line 24
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "vrshell_aui_persist"

    .line 25
    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v7, 0x0

    const-string v8, "vrshell_aui_badge_route"

    .line 26
    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x1

    const-string v10, "vrshell_aui_badge_auto_dismiss"

    .line 28
    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v10, "vrshell_aui_badge_badge_parent"

    .line 30
    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v8, ""

    const-string v10, "oculus_category"

    .line 31
    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v10, "oculus_ignore_missing_title"

    .line 33
    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v10, "aui_notif_duration"

    .line 35
    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-static {v8}, Lcom/oculus/notifications/NotificationsDisplayDuration;->fromName(Ljava/lang/String;)Lcom/oculus/notifications/NotificationsDisplayDuration;

    move-result-object v10

    const-string v8, "vrshell_test_notif_tag"

    .line 41
    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-static {v7}, Lcom/oculus/notifications/NotificationSender;->getNotifIcon(Ljava/lang/String;)I

    move-result v8

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move/from16 v16, v15

    const-string v15, "com.oculus.vrshell"

    .line 46
    invoke-virtual {v1, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "systemux://browser"

    move-object/from16 v18, v14

    .line 47
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move/from16 v19, v13

    const-string v13, "intent_data"

    invoke-virtual {v1, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v14, "blackscreen"

    move/from16 v20, v12

    const/4 v12, 0x0

    .line 48
    invoke-virtual {v1, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-static {v0, v12, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 53
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "uri"

    const-string v13, "ovrweb://vr?uri=https%3A%2F%2Fartyom17.github.io%2Fwebvr.info%2Fsamples%2F03b-vr-navigation.html"

    .line 56
    invoke-virtual {v1, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v1, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v4, 0x3dd

    .line 60
    invoke-static {v0, v4, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object v1, v2

    move-object v2, v3

    move-object v3, v7

    move v4, v5

    move v5, v6

    move v6, v8

    move-object/from16 v7, v21

    move-object v8, v12

    move/from16 v12, v20

    move/from16 v13, v19

    move-object/from16 v14, v18

    move/from16 v15, v16

    .line 62
    invoke-static/range {v0 .. v15}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method
