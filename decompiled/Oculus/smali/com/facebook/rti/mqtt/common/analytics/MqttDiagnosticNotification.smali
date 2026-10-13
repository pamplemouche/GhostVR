.class public Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;
.super Ljava/lang/Object;
.source "MqttDiagnosticNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastState:Ljava/lang/String;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private final mContext:Landroid/content/Context;

.field private final mEnabled:Z

.field private mMessageHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mServiceName:Ljava/lang/String;

.field private final mStartTime:Ljava/lang/String;

.field private mUpdateCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->lastState:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mUpdateCounter:I

    .line 54
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mServiceName:Ljava/lang/String;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    .line 57
    iput-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mContext:Landroid/content/Context;

    .line 58
    iput-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 59
    iput v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationId:I

    .line 60
    iput-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mStartTime:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mEnabled:Z

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mContext:Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    const-class v4, Landroid/app/NotificationManager;

    .line 67
    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->getSystemService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 70
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->generateNotificationId()I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationId:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "M/d h:mm:ss a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mStartTime:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mMessageHistory:Ljava/util/Queue;

    .line 74
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->DEBUG:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 75
    invoke-interface {p4, v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 76
    if-nez p3, :cond_2

    const-string v2, "is_on"

    invoke-interface {v0, v2, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mEnabled:Z

    .line 78
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v0, "debug_channel"

    const-string v2, "Debugging Information"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 82
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 76
    goto :goto_1
.end method

.method private generateNotificationId()I
    .locals 4

    .prologue
    .line 198
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 199
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 200
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 201
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 202
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 203
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 210
    :cond_1
    const/16 v0, 0x2a

    goto :goto_0
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHistory()Landroid/app/Notification$InboxStyle;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 181
    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-direct {v0}, Landroid/app/Notification$InboxStyle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mStartTime:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mMessageHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 186
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    .line 189
    :cond_0
    return-object v1
.end method


# virtual methods
.method public show(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const v1, 0x1080068

    const/high16 v0, -0x10000

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 138
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-boolean v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mEnabled:Z

    if-nez v2, :cond_1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 104
    :cond_1
    monitor-enter p0

    .line 105
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mUpdateCounter:I

    .line 106
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->lastState:Ljava/lang/String;

    .line 109
    const-string v2, "CONNECTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    const v1, 0x108006b

    .line 111
    const v0, -0xff0100

    .line 120
    :cond_2
    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "debug_channel"

    .line 122
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    .line 125
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 130
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 132
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 133
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->getHistory()Landroid/app/Notification$InboxStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationId:I

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 136
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->TAG:Ljava/lang/String;

    const-string v1, "notify %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 112
    :cond_5
    :try_start_2
    const-string v2, "CONNECTING"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    const v1, 0x1080067

    .line 114
    const/16 v0, -0x100

    goto/16 :goto_1

    .line 115
    :cond_6
    const-string v2, "DISCONNECTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1
.end method

.method public showSubstatus(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mEnabled:Z

    if-nez v0, :cond_2

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 160
    monitor-enter p0

    .line 162
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    .line 163
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mUpdateCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mUpdateCounter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 167
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mMessageHistory:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mMessageHistory:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_3

    .line 170
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mMessageHistory:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->lastState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 173
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->getHistory()Landroid/app/Notification$InboxStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 174
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mNotificationId:I

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 175
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->TAG:Ljava/lang/String;

    const-string v2, "notify %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 165
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mUpdateCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->mUpdateCounter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
