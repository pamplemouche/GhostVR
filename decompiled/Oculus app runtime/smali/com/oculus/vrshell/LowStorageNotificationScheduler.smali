.class public Lcom/oculus/vrshell/LowStorageNotificationScheduler;
.super Ljava/lang/Object;
.source "LowStorageNotificationScheduler.java"


# static fields
.field public static final STORAGE_CHECK_INITIAL_TIMEOUT:J = 0x1388L

.field public static final STORAGE_CHECK_REPEAT_TIMEOUT:J = 0x493e0L

.field private static final STORAGE_CRITICAL_THRESHOLD:J = 0x1f400000L

.field private static final STORAGE_LOW_THRESHOLD:J = 0x80000000L

.field private static final TAG:Ljava/lang/String;

.field private static sHasShownCriticalStorageNotificationInSession:Z

.field private static sHasShownLowStorageNotificationInSession:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/oculus/vrshell/LowStorageNotificationScheduler;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sHasShownLowStorageNotificationInSession:Z

    .line 141
    sput-boolean v0, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sHasShownCriticalStorageNotificationInSession:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->checkStorageAndSendNotifications(Landroid/content/Context;)V

    return-void
.end method

.method private static checkStorageAndSendNotifications(Landroid/content/Context;)V
    .locals 6

    .line 56
    sget-boolean v0, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sHasShownCriticalStorageNotificationInSession:Z

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 61
    sget-object v2, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storage Checks: Internal Free ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x1f400000

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    .line 64
    sput-boolean v4, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sHasShownCriticalStorageNotificationInSession:Z

    const v2, 0x7f0b012f

    const v3, 0x7f0b012e

    .line 65
    invoke-static {p0, v2, v3, v0, v1}, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sendStorageNotification(Landroid/content/Context;IIJ)V

    goto :goto_0

    :cond_0
    const-wide v2, 0x80000000L

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    .line 70
    sget-boolean v2, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sHasShownLowStorageNotificationInSession:Z

    if-nez v2, :cond_1

    .line 72
    sput-boolean v4, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sHasShownLowStorageNotificationInSession:Z

    const v2, 0x7f0b0131

    const v3, 0x7f0b0130

    .line 73
    invoke-static {p0, v2, v3, v0, v1}, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sendStorageNotification(Landroid/content/Context;IIJ)V

    .line 84
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->sHasShownCriticalStorageNotificationInSession:Z

    if-nez v0, :cond_2

    const-wide/32 v0, 0x493e0

    .line 85
    invoke-static {v0, v1, p0}, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->scheduleStorageCheck(JLandroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static scheduleStorageCheck(JLandroid/content/Context;)V
    .locals 2

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oculus/vrshell/LowStorageNotificationScheduler$1;

    invoke-direct {v1, p2}, Lcom/oculus/vrshell/LowStorageNotificationScheduler$1;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static sendStorageNotification(Landroid/content/Context;IIJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 95
    new-instance v1, Lcom/oculus/analytics/AnalyticsEvent;

    const-string v2, "oculus_vrshell_storage_notification"

    const-string v3, "VrShell"

    invoke-direct {v1, v2, v3}, Lcom/oculus/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v2, p3

    long-to-int v3, v2

    const-string v2, "storage_available"

    .line 98
    invoke-virtual {v1, v2, v3}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraInt(Ljava/lang/String;I)Lcom/oculus/analytics/AnalyticsEvent;

    .line 99
    invoke-virtual {v1}, Lcom/oculus/analytics/AnalyticsEvent;->log()V

    const-string v1, "storage"

    .line 102
    invoke-static {v1}, Lcom/oculus/notifications/NotificationSender;->getNotifIcon(Ljava/lang/String;)I

    move-result v6

    const-string v1, "com.oculus.vrshell.home"

    const-string v2, "3.44"

    .line 107
    invoke-static {v0, v1, v2}, Lcom/oculus/vrshell/util/PackageUtil;->matchesMinVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oculus.vrshell"

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "systemux://storage_manager"

    .line 110
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "intent_data"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "blackscreen"

    .line 111
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 113
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    .line 119
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v2, p2

    .line 120
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v9, 0x1

    sget-object v10, Lcom/oculus/notifications/NotificationsDisplayDuration;->DEFAULT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v3, "storage"

    move-object/from16 v0, p0

    move-object v7, v8

    .line 117
    invoke-static/range {v0 .. v15}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method
