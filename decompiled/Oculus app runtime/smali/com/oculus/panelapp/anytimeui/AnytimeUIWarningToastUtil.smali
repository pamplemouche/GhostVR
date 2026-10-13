.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUIWarningToastUtil;
.super Ljava/lang/Object;
.source "AnytimeUIWarningToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showWarningToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16

    .line 15
    sget v6, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_notif_alert:I

    sget-object v10, Lcom/oculus/notifications/NotificationsDisplayDuration;->SHORT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    const-string v1, "Error"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v15}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method
