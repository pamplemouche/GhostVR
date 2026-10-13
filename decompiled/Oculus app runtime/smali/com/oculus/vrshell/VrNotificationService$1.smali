.class Lcom/oculus/vrshell/VrNotificationService$1;
.super Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;
.source "VrNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/VrNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/VrNotificationService;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/VrNotificationService;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-direct {p0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enableDNDMode(Z)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->enableDNDMode(Z)V

    return-void
.end method

.method public getAllNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    .line 56
    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->getAllNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPersistentNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    .line 63
    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->getAllPersistentNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPersistentNotificationsExcept(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/notifications/NotificationsType;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    .line 71
    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->getAllPersistentNotificationsExcept(Lcom/oculus/vrshell/notifications/NotificationsType;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 70
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/notifications/NotificationsType;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    .line 78
    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 77
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationsByType([Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oculus/vrshell/notifications/NotificationsType;",
            ")",
            "Ljava/util/List<",
            "Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    iget-object v1, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    .line 86
    invoke-static {v1}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v1

    .line 87
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 89
    sget-object v5, Lcom/oculus/vrshell/notifications/NotificationsType;->ALL:Lcom/oculus/vrshell/notifications/NotificationsType;

    if-ne v4, v5, :cond_0

    .line 90
    sget-object v5, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOAD_IN_PROGRESS:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 91
    invoke-virtual {v1, v5}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->getAllPersistentNotificationsExcept(Lcom/oculus/vrshell/notifications/NotificationsType;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {v1, v4}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 96
    :goto_1
    new-instance v6, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;

    .line 97
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;-><init>(Lcom/oculus/vrshell/notifications/NotificationsType;Ljava/util/List;)V

    .line 98
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isBlacklistedNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isBlacklistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isDownloadInProgressNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isDownloadInProgressNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isDownloadNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isDownloadNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isHighPriorityNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isHighPriorityNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isPersistentNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isPersistentNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isSocialNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isSocialNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isWhitelistedNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isWhitelistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public removeNotification(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->removeNotification(Ljava/lang/String;)V

    return-void
.end method

.method public suppressToasts()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->suppressToasts()V

    return-void
.end method

.method public unsuppressToasts()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService$1;->this$0:Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/vrshell/VrNotificationService;->access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->unsuppressToasts()V

    return-void
.end method
