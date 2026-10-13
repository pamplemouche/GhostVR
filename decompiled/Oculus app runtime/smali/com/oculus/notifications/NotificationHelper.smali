.class public Lcom/oculus/notifications/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/oculus/notifications/NotificationHelper;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/notifications/NotificationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBadgeRouteForNotification(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "vrshell_aui_badge_route"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBlacklistedNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 68
    invoke-static {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->isBlacklistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 73
    sget-object p1, Lcom/oculus/notifications/NotificationHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to connect to notifications service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHighPriorityNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->isHighPriorityNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/oculus/notifications/NotificationHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to connect to notifications service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPersistentNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 86
    invoke-static {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->isPersistentNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 91
    sget-object p1, Lcom/oculus/notifications/NotificationHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to connect to notifications service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSocialNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 29
    invoke-static {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->isSocialNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 34
    sget-object p1, Lcom/oculus/notifications/NotificationHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to connect to notifications service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 16
    invoke-static {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 21
    sget-object p1, Lcom/oculus/notifications/NotificationHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to connect to notifications service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWhitelistedNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/notifications/NotificationDataSetService;->getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->isWhitelistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 47
    sget-object p1, Lcom/oculus/notifications/NotificationHelper;->TAG:Ljava/lang/String;

    const-string v0, "Unable to connect to notifications service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
