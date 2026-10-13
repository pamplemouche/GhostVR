.class public final Lcom/oculus/vrshell/notifications/VrNotificationListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "VrNotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRegistered:Z

.field private mToastsSuppressed:I

.field private final mVrNotificationAnalytics:Lcom/oculus/vrshell/notifications/VrNotificationAnalytics;

.field private final mVrNotificationCache:Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;

.field private final mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

.field private final notificationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 281
    new-instance v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$1;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$1;-><init>(Lcom/oculus/vrshell/notifications/VrNotificationListenerService;)V

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->notificationComparator:Ljava/util/Comparator;

    .line 356
    new-instance v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;-><init>(Lcom/oculus/vrshell/notifications/VrNotificationListenerService;)V

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationCache:Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mRegistered:Z

    .line 359
    iput v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mToastsSuppressed:I

    .line 35
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "VrNotificationListenerService created!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mContext:Landroid/content/Context;

    const-string v0, "vrshell_notifications"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    invoke-direct {v0, p1, p0}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;-><init>(Landroid/content/Context;Lcom/oculus/vrshell/notifications/VrNotificationListenerService;)V

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    .line 39
    new-instance v0, Lcom/oculus/vrshell/notifications/VrNotificationAnalytics;

    invoke-direct {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationAnalytics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationAnalytics:Lcom/oculus/vrshell/notifications/VrNotificationAnalytics;

    return-void
.end method

.method private areToastsSuppressed()Z
    .locals 1

    .line 231
    iget v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mToastsSuppressed:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;
    .locals 1

    .line 43
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->sInstance:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->sInstance:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    .line 48
    :cond_0
    sget-object p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->sInstance:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    return-object p0
.end method

.method private isDNDModeEnabled()Z
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oculus/vrshell/VrShellConst;->DO_NOT_DISTURB_MODE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->getBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)Z

    move-result v0

    return v0
.end method

.method private isNotificationAToast(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    .line 179
    invoke-static {}, Lcom/oculus/vrshell/notifications/xrsp/XrspStatusHelper;->shouldToast()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    .line 180
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isSocialNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object p1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v0, "VrNotifier: Social toasts suppressed by XRSP status"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 194
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->whiteListedAndNotDownload(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 197
    :goto_1
    iget-object v3, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    .line 198
    invoke-virtual {v3, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isBlacklistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    .line 203
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.title"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    .line 205
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "oculus_ignore_missing_title"

    .line 207
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 213
    :goto_3
    invoke-static {p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerHelper;->isCaptiveWifiNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 219
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v6, "recommendation"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    if-nez v5, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private locallyLogNotification(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 156
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": package|tag|id = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldBypassDNDMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isHighPriorityNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method private updateNotificationListVersion()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->updateNotificationListVersion()V

    return-void
.end method

.method private whiteListedAndNotDownload(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 171
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "is_download"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    .line 172
    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isWhitelistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public enableDNDMode(Z)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oculus/vrshell/VrShellConst;->DO_NOT_DISTURB_MODE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    invoke-static {v0, v1, p1}, Lcom/oculus/vrshell/sharedprefs/SharedPreferencesHelper;->putBoolean(Landroid/content/Context;Lcom/oculus/vrshell/sharedprefs/PrefKey;Z)V

    return-void
.end method

.method getSortedNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationCache:Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;

    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->getAllNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    array-length v1, v0

    if-lez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->notificationComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method

.method public getVrNotificationDataSetManager()Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    return-object v0
.end method

.method public onListenerConnected()V
    .locals 3

    .line 272
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 273
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "onListenerConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationCache:Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;

    invoke-virtual {p0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->init([Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 277
    sget-object v1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get a list of active notifications"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    if-nez p1, :cond_0

    .line 113
    sget-object p1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v0, "onNotificationPosted(): received a null StatusBarNotification"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onNotificationPosted()"

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->locallyLogNotification(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    .line 118
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationCache:Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->add(Landroid/service/notification/StatusBarNotification;)V

    .line 119
    invoke-direct {p0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->updateNotificationListVersion()V

    .line 121
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->isNotificationAToast(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 122
    invoke-direct {p0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->isDNDModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->shouldBypassDNDMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-direct {p0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->areToastsSuppressed()Z

    move-result v2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 125
    iget-object v3, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    .line 128
    invoke-virtual {v4, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isPersistentNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    iget-object v5, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationDataSetManager:Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;

    .line 129
    invoke-virtual {v5, p1}, Lcom/oculus/vrshell/notifications/VrNotificationDataSetManager;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 125
    invoke-static {p1, v3, v4, v5}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->sendNotificationToast(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;ZZ)V

    .line 132
    :cond_2
    iget-object v3, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationAnalytics:Lcom/oculus/vrshell/notifications/VrNotificationAnalytics;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/oculus/vrshell/notifications/VrNotificationAnalytics;->logNotificationPosted(Landroid/service/notification/StatusBarNotification;ZZZ)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    if-nez p1, :cond_0

    .line 141
    sget-object p1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v0, "onNotificationRemoved(): received a null StatusBarNotification"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onNotificationRemoved()"

    .line 144
    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->locallyLogNotification(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    .line 146
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationCache:Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService$VrNotificationCache;->remove(Landroid/service/notification/StatusBarNotification;)V

    .line 147
    invoke-direct {p0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->updateNotificationListVersion()V

    .line 149
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/oculus/vrshell/notifications/VrNotificationToastGenerator;->dismissNotificationToast(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mVrNotificationAnalytics:Lcom/oculus/vrshell/notifications/VrNotificationAnalytics;

    invoke-virtual {v0, p1}, Lcom/oculus/vrshell/notifications/VrNotificationAnalytics;->logNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public registerAsSystemServiceUsingReflection()V
    .locals 8

    .line 52
    iget-boolean v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oculus.hardware.standalone_vr"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mRegistered:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    const-string v5, "android.service.notification.NotificationListenerService"

    .line 65
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 68
    new-array v6, v4, [Ljava/lang/Class;

    .line 69
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    .line 70
    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v6, v0

    .line 71
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-string v7, "registerAsSystemService"

    .line 73
    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 77
    sget-object v6, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v7, "Could not find registerAsSystemService via reflection"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v5

    .line 75
    sget-object v6, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v7, "Could not find NotificationListenerService via reflection"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_1

    .line 83
    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 84
    iget-object v5, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mContext:Landroid/content/Context;

    aput-object v5, v4, v3

    .line 85
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v0

    const/4 v0, -0x1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 88
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 92
    sget-object v1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Do not have permission to register:  "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    .line 90
    sget-object v1, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register as a system service:  "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public suppressToasts()V
    .locals 1

    .line 235
    iget v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mToastsSuppressed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mToastsSuppressed:I

    return-void
.end method

.method public unsuppressToasts()V
    .locals 2

    .line 239
    iget v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mToastsSuppressed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mToastsSuppressed:I

    .line 240
    iget v0, p0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->mToastsSuppressed:I

    if-gez v0, :cond_0

    .line 241
    sget-object v0, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "unsuppressToasts(): unmatched unsuppressToasts call for each suppressToasts"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
