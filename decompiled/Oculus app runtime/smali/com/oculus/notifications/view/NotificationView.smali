.class public Lcom/oculus/notifications/view/NotificationView;
.super Landroid/widget/LinearLayout;
.source "NotificationView.java"


# static fields
.field private static final BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field private static final DESCRIPTION:Ljava/lang/String; = "android.text"

.field private static final TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field private static final TITLE:Ljava/lang/String; = "android.title"

.field private static final USE_TITLE_AS_DESCRIPTION:Ljava/lang/String; = "title_as_description_in_toast"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private loadNotificationDescription(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 4

    .line 45
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 47
    sget v0, Lcom/oculus/common/notifications/R$id;->notif_description_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/notifications/view/NotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p2, :cond_0

    .line 50
    iget-object p2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "title_as_description_in_toast"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    iget-object p2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 53
    :cond_0
    iget-object p2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 57
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    iget-object p2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.bigText"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.textLines"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 67
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 68
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 69
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 77
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x8

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 82
    :cond_5
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private loadNotificationIcon(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 93
    :cond_0
    sget p1, Lcom/oculus/common/notifications/R$id;->notif_icon:I

    invoke-virtual {p0, p1}, Lcom/oculus/notifications/view/NotificationView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/notifications/view/NotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private loadNotificationTitle(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 102
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 104
    sget v0, Lcom/oculus/common/notifications/R$id;->notif_title_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/notifications/view/NotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x8

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 112
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/service/notification/StatusBarNotification;ZZZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 32
    invoke-direct {p0, p1, p5}, Lcom/oculus/notifications/view/NotificationView;->loadNotificationDescription(Landroid/service/notification/StatusBarNotification;Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/notifications/view/NotificationView;->loadNotificationIcon(Landroid/service/notification/StatusBarNotification;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/notifications/view/NotificationView;->loadNotificationTitle(Landroid/service/notification/StatusBarNotification;)V

    :cond_2
    return-void
.end method
