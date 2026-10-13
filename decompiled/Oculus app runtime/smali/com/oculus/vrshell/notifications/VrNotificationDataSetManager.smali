.class public Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;
.super Ljava/lang/Object;
.source "VrNotificationDataSetManager.java"


# static fields
.field private static final NOTIF_CHANGE_INTENT:Ljava/lang/String; = "com.oculus.intent.action.NOTIF_CHANGE"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHighPriorityNotifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemGeneratedNotifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oculus/vrshell/notifications/VrNotificationListenerService;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mPackageWhitelist:Ljava/util/Set;

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mPackageBlacklist:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mHighPriorityNotifications:Ljava/util/Set;

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mSystemGeneratedNotifications:Ljava/util/Set;

    .line 27
    iput-object p2, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    .line 28
    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->ensureResources()V

    return-void
.end method

.method private static checkFilter(Ljava/util/Set;Landroid/service/notification/StatusBarNotification;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            ")Z"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    .line 155
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->priority:I

    .line 158
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    aput-object v1, v6, v5

    const-string v7, "%s|%s"

    .line 159
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v1, v7, v5

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "%s|%s|%d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v1, v7, v5

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v6

    const-string p1, "%s|%s|%d|%d"

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private ensureResources()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mPackageWhitelist:Ljava/util/Set;

    sget v2, Lcom/oculus/module/notifications/R$array;->whitelisted_vr_notifications:I

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v1, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mPackageBlacklist:Ljava/util/Set;

    sget v2, Lcom/oculus/module/notifications/R$array;->blacklisted_vr_notifications:I

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v1, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mHighPriorityNotifications:Ljava/util/Set;

    sget v2, Lcom/oculus/module/notifications/R$array;->high_priority_notifications:I

    .line 40
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v1, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mSystemGeneratedNotifications:Ljava/util/Set;

    sget v2, Lcom/oculus/module/notifications/R$array;->system_generated_notifications:I

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static getBooleanExtraForKey(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 148
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private matchNotificationsType(Landroid/service/notification/StatusBarNotification;Lcom/oculus/vrshell/notifications/NotificationsType;)Z
    .locals 1

    .line 131
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager$1;->$SwitchMap$com$oculus$vrshell$notifications$NotificationsType:[I

    invoke-virtual {p2}, Lcom/oculus/vrshell/notifications/NotificationsType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isDownloadInProgressNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isDownloadNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1

    .line 137
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1

    .line 135
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isSocialNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1

    :cond_4
    return v0
.end method


# virtual methods
.method public getAllNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getSortedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getAllPersistentNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 50
    sget-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->ALL:Lcom/oculus/vrshell/notifications/NotificationsType;

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getAllPersistentNotificationsExcept(Lcom/oculus/vrshell/notifications/NotificationsType;)[Landroid/service/notification/StatusBarNotification;
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    .line 72
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getSortedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 76
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 77
    invoke-virtual {p0, v4}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isPersistentNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->matchNotificationsType(Landroid/service/notification/StatusBarNotification;Lcom/oculus/vrshell/notifications/NotificationsType;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method public getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)[Landroid/service/notification/StatusBarNotification;
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    .line 55
    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getSortedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 60
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 61
    invoke-virtual {p0, v4}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isPersistentNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->matchNotificationsType(Landroid/service/notification/StatusBarNotification;Lcom/oculus/vrshell/notifications/NotificationsType;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method public isBlacklistedNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mPackageBlacklist:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->checkFilter(Ljava/util/Set;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isDownloadInProgressNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 106
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 107
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "download_in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "install_in_progress"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isDownloadNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 102
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "is_download"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isHighPriorityNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mHighPriorityNotifications:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->checkFilter(Ljava/util/Set;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isPersistentNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isBlacklistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const-string v1, "vrshell_aui_persist"

    .line 121
    invoke-static {v1, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->getBooleanExtraForKey(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSocialNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 96
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "oculus_category"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "social"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mSystemGeneratedNotifications:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->checkFilter(Ljava/util/Set;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isWhitelistedNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mPackageWhitelist:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->checkFilter(Ljava/util/Set;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public removeNotification(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->cancelNotification(Ljava/lang/String;)V

    return-void
.end method

.method public updateNotificationListVersion()V
    .locals 2

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.intent.action.NOTIF_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oculus.systemux"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
