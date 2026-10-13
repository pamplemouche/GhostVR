.class public final Lcom/oculus/vrshell/ShellControlBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShellControlBroadcastReceiver.java"


# static fields
.field private static final ACTION_PING_PONG_RELAUNCH:Ljava/lang/String; = "com.oculus.intent.action.PING_PONG_RELAUNCH"

.field private static final EXTRA_WRAPPED_INTENT:Ljava/lang/String; = "wrappedIntent"

.field private static final KEY_IGNORE_WARNING:Ljava/lang/String; = "ignore_warning"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 150
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "networkInfo"

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 153
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "custom_connected"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    sget-wide v0, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    .line 157
    invoke-static {p1, p0}, Lcom/oculus/vrshell/IntentParser;->ToEnvironment(Landroid/content/Intent;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {v0, v1, p0}, Lcom/oculus/vrshell/ShellApplication;->nativeBroadcastIntent(J[Ljava/lang/String;)V

    return-void
.end method

.method private static getActiveThirdPartyApplication(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "activity"

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 140
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 141
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v2, "com.oculus"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isInBlackscreen(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "blackscreen"

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isLaunchAction(Landroid/content/Intent;)Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isLocalStreamPrivacyCheckAction(Landroid/content/Intent;)Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oculus.systemactivities.LOCAL_STREAM_PRIVACY_CHECK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isNuxProgressAction(Landroid/content/Intent;)Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oculus.vrshell.intent.action.NUX_PROGRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isShellBackgrounded(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 123
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 124
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, "com.oculus.vrshell"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object p0, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Shell foreground"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_1
    sget-object p0, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Shell backgrounded or not running."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private submitAsDriverRequestedBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.oculus.vrshell.intent.action.LAUNCH"

    .line 84
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-class v0, Lcom/oculus/vrshell/MainActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 88
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "ignore_warning"

    const-string v1, "1"

    .line 89
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.intent.action.PING_PONG_RELAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onReceive()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, p1, v1}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wrappedIntent"

    .line 96
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 31
    sget-object v0, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive with sAppPtr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p1, p2}, Lcom/oculus/vrshell/GuardianController;->handleNotification(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.vrshell.intent.action.OVERLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oculus.vrshell"

    const-string v2, "com.oculus.vrshell.OverlayService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 46
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oculus.vrshell.intent.action.SEND_TEST_NOTIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {p1, p2}, Lcom/oculus/notifications/NotificationSender;->sendTestNotif(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 48
    :cond_2
    invoke-static {p2}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->isLocalStreamPrivacyCheckAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->LOCAL_STREAM_PRIVACY_CHECK_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    .line 50
    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_data"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {p1}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->isShellBackgrounded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-static {p1}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->getActiveThirdPartyApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "intent_pkg"

    .line 60
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->submitAsDriverRequestedBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 65
    :cond_4
    invoke-static {p2}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->isLaunchAction(Landroid/content/Intent;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p1, p2}, Lcom/oculus/vrshell/GuardianController;->isLaunchAction(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-wide v3, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_8

    .line 66
    invoke-static {p2}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->isInBlackscreen(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->isShellBackgrounded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 68
    :cond_6
    sget-wide v3, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_7

    .line 71
    invoke-static {p1, p2}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 72
    :cond_7
    sget-wide v3, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_9

    invoke-static {p1, p2}, Lcom/oculus/vrshell/NuxController;->handleNotification(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 67
    :cond_8
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/ShellControlBroadcastReceiver;->submitAsDriverRequestedBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_9
    :goto_1
    return-void
.end method
