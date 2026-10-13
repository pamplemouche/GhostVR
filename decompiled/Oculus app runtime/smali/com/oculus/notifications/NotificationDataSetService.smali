.class public Lcom/oculus/notifications/NotificationDataSetService;
.super Ljava/lang/Object;
.source "NotificationDataSetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/notifications/NotificationDataSetService$Loader;
    }
.end annotation


# static fields
.field private static final DATASET_INTENT:Ljava/lang/String; = "com.oculus.vrshell.notifications.aidl.MAIN"

.field private static final DATASET_SERVICE_PACKAGE:Ljava/lang/String; = "com.oculus.vrshell"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

.field private mNotificationDataSetListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oculus/notifications/NotificationDataSetListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/oculus/notifications/NotificationDataSetService;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mNotificationDataSetListeners:Ljava/util/Set;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oculus/notifications/NotificationDataSetService$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/notifications/NotificationDataSetService$1;-><init>(Lcom/oculus/notifications/NotificationDataSetService;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    invoke-direct {p0}, Lcom/oculus/notifications/NotificationDataSetService;->startBackgroundThread()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/oculus/notifications/NotificationDataSetService$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oculus/notifications/NotificationDataSetService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/notifications/NotificationDataSetService;Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oculus/notifications/NotificationDataSetService;->connectToDataSetProvider(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$202(Lcom/oculus/notifications/NotificationDataSetService;Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;)Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    return-object p1
.end method

.method private connectToDataSetProvider(Landroid/content/Context;)V
    .locals 3

    .line 188
    new-instance v0, Lcom/oculus/notifications/NotificationDataSetService$2;

    invoke-direct {v0, p0}, Lcom/oculus/notifications/NotificationDataSetService$2;-><init>(Lcom/oculus/notifications/NotificationDataSetService;)V

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell.notifications.aidl.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oculus.vrshell"

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x1

    .line 210
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/oculus/notifications/NotificationDataSetService$Loader;->access$100(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object p0

    return-object p0
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bg.updates"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oculus/notifications/NotificationDataSetService;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public enableDNDMode(Z)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->enableDNDMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    sget-object v0, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to enable DND mode."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getAllNotifications()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    invoke-interface {v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->getAllNotifications()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to fetch notifications."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getAllPersistentNotifications()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-interface {v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->getAllPersistentNotifications()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to fetch notifications."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getAllPersistentNotificationsExcept(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;
    .locals 2
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

    .line 105
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->getAllPersistentNotificationsExcept(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    sget-object v0, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to fetch notifications."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method getDataSetProvider()Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    return-object v0
.end method

.method public getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;
    .locals 2
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

    .line 117
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 121
    sget-object v0, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to fetch notifications."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public varargs getNotificationsByType([Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;
    .locals 2
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

    .line 131
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->getNotificationsByType([Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 135
    sget-object v0, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to fetch notifications."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public notifyDataSetListeners()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mNotificationDataSetListeners:Ljava/util/Set;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/oculus/notifications/NotificationDataSetService;->mNotificationDataSetListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/notifications/NotificationDataSetListener;

    .line 75
    invoke-interface {v2}, Lcom/oculus/notifications/NotificationDataSetListener;->onDataSetChanged()V

    goto :goto_0

    .line 77
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerDataSetListener(Lcom/oculus/notifications/NotificationDataSetListener;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mNotificationDataSetListeners:Ljava/util/Set;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/oculus/notifications/NotificationDataSetService;->mNotificationDataSetListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeNotification(Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->removeNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    sget-object v0, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to remove notification."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public suppressToasts()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    invoke-interface {v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->suppressToasts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    sget-object v1, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to suppress toasts."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterDataSetListener(Lcom/oculus/notifications/NotificationDataSetListener;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mNotificationDataSetListeners:Ljava/util/Set;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/oculus/notifications/NotificationDataSetService;->mNotificationDataSetListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unsuppressToasts()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/oculus/notifications/NotificationDataSetService;->mDataSetProvider:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;->unsuppressToasts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    sget-object v1, Lcom/oculus/notifications/NotificationDataSetService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to suppress toasts."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
