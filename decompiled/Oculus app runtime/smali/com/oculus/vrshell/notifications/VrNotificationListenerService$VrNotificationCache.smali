.class Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;
.super Ljava/lang/Object;
.source "VrNotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/notifications/VrNotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VrNotificationCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;
    }
.end annotation


# instance fields
.field private mNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/notifications/VrNotificationListenerService;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->this$0:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->mNotifications:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->mNotifications:Ljava/util/Map;

    new-instance v1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;-><init>(Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->mNotifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->mNotifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init([Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    .line 301
    monitor-exit p0

    return-void

    .line 302
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->mNotifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 303
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 304
    iget-object v3, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->mNotifications:Ljava/util/Map;

    new-instance v4, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;

    invoke-direct {v4, p0, v2}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;-><init>(Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->mNotifications:Ljava/util/Map;

    new-instance v1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache$NotifcationKey;-><init>(Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
