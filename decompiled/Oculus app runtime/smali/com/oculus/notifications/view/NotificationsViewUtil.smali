.class public Lcom/oculus/notifications/view/NotificationsViewUtil;
.super Ljava/lang/Object;
.source "NotificationsViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;IZZZ)Lcom/oculus/notifications/view/NotificationView;
    .locals 6

    .line 73
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oculus/notifications/view/NotificationView;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/notifications/view/NotificationView;->initialize(Landroid/service/notification/StatusBarNotification;ZZZZ)V

    return-object p0
.end method

.method public static getToastViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;ZZ)Landroid/view/View;
    .locals 11

    if-eqz p2, :cond_0

    .line 21
    sget v0, Lcom/oculus/common/notifications/R$layout;->notification_system_toast_container:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/oculus/common/notifications/R$layout;->notification_toast_container:I

    .line 25
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 27
    sget v1, Lcom/oculus/common/notifications/R$id;->notif_toast_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 34
    :cond_1
    sget v3, Lcom/oculus/common/notifications/R$id;->notif_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 38
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 41
    sget v2, Lcom/oculus/common/notifications/R$layout;->notification_toast_system:I

    goto :goto_2

    :cond_4
    sget v2, Lcom/oculus/common/notifications/R$layout;->notification_toast_generic:I

    :goto_2
    move v7, v2

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v5, p0

    move-object v6, p1

    move v9, p2

    .line 49
    invoke-static/range {v5 .. v10}, Lcom/oculus/notifications/view/NotificationsViewUtil;->getContentViewForNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;IZZZ)Lcom/oculus/notifications/view/NotificationView;

    move-result-object p0

    .line 51
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez p2, :cond_5

    if-nez p3, :cond_5

    .line 54
    sget p0, Lcom/oculus/common/notifications/R$id;->notif_toast_cta:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 55
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-object v0
.end method
