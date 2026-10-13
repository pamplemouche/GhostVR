.class public Lcom/oculus/vrapi/TrackingService;
.super Landroid/app/Service;
.source "TrackingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final SVC_EXIT_DELAY_MS:J = 0xea60L

.field public static final SVC_EXIT_DELAY_PROP:Ljava/lang/String; = "debug.oculus.tsvc.exitdelayms"

.field private static final TAG:Ljava/lang/String; = "TrackingService"

.field private static remote:Lcom/oculus/vrapi/BleRemoteTrackingService;


# instance fields
.field private mDismountBroadcastReceiver:Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field mShutdownTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TrackingService"

    const-string v1, "trackingservice is loading library"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "trackingservice"

    .line 60
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/oculus/vrapi/TrackingService;->nativeInitTrackingService()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 222
    new-instance v0, Lcom/oculus/vrapi/TrackingService$2;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/TrackingService$2;-><init>(Lcom/oculus/vrapi/TrackingService;)V

    iput-object v0, p0, Lcom/oculus/vrapi/TrackingService;->mShutdownTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrapi/TrackingService;I)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/TrackingService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/vrapi/TrackingService;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oculus/vrapi/TrackingService;->isDeveloperModeEnabled()Z

    move-result p0

    return p0
.end method

.method private getAndroidProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 240
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 241
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 242
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "TrackingService"

    const-string v2, "Error getting property"

    .line 244
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private getAndroidPropertyBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/TrackingService;->getAndroidProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method private getAndroidPropertyLong(Ljava/lang/String;J)J
    .locals 2

    .line 250
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/TrackingService;->getAndroidProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    return-wide p2
.end method

.method private getProcessNameByPid(I)Ljava/lang/String;
    .locals 3

    const-string v0, "activity"

    .line 340
    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/TrackingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 341
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 343
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    .line 345
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private isDeveloperModeEnabled()Z
    .locals 4

    const/4 v0, 0x0

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/vrapi/TrackingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vrmode_developer_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "TrackingService"

    const-string v3, "Settings.Global.getInt had an SettingNotFoundException getting vrmode_developer_mode:"

    .line 332
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static native nativeGetSharedMemoryFd()I
.end method

.method private static native nativeInitTrackingService()V
.end method

.method public static native nativeSetAnyClientConnected(Z)V
.end method

.method public static native nativeSignalFromClient(I)V
.end method

.method private static native nativeStartTrackingService(Landroid/content/Context;)V
.end method

.method private static native nativeStopTrackingService(Landroid/content/Context;)V
.end method

.method private setBound(Z)V
    .locals 4

    .line 276
    invoke-static {p1}, Lcom/oculus/vrapi/TrackingService;->nativeSetAnyClientConnected(Z)V

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oculus/vrapi/TrackingService;->mShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const-string p1, "sys.hmt.connected"

    const/4 v0, 0x1

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/oculus/vrapi/TrackingService;->getAndroidPropertyBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "debug.oculus.tsvc.exitdelayms"

    const-wide/32 v0, 0xea60

    .line 294
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/vrapi/TrackingService;->getAndroidPropertyLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x64

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    const-string p1, "TrackingService"

    const-string v0, "All clients disconnected, *NOT* shutting down."

    .line 296
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p1, "TrackingService"

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All clients disconnected, shutting down in (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oculus/vrapi/TrackingService;->mShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TrackingService"

    const-string v0, "onBind"

    .line 122
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 124
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/TrackingService;->setBound(Z)V

    .line 126
    new-instance p1, Lcom/oculus/vrapi/TrackingService$1;

    invoke-direct {p1, p0}, Lcom/oculus/vrapi/TrackingService$1;-><init>(Lcom/oculus/vrapi/TrackingService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    const-string v0, "TrackingService"

    const-string v1, "onCreate"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrapi/TrackingService;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->initialize()V

    .line 70
    new-instance v0, Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;-><init>(Lcom/oculus/vrapi/TrackingService;)V

    iput-object v0, p0, Lcom/oculus/vrapi/TrackingService;->mDismountBroadcastReceiver:Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.HMT_DISCONNECTED"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/oculus/vrapi/TrackingService;->mDismountBroadcastReceiver:Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oculus/vrapi/TrackingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "notification"

    .line 83
    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/TrackingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "Oculus Tracking Service"

    .line 88
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "com.oculus.trackingservice"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 95
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "com.oculus.trackingservice"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108009b

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Oculus Tracking Service"

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p0, v1, v0}, Lcom/oculus/vrapi/TrackingService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TrackingService"

    const-string v1, "onDestroy"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/vrapi/TrackingService;->mShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/oculus/vrapi/TrackingService;->mHandler:Landroid/os/Handler;

    .line 206
    sget-object v1, Lcom/oculus/vrapi/TrackingService;->remote:Lcom/oculus/vrapi/BleRemoteTrackingService;

    if-eqz v1, :cond_0

    .line 208
    sget-object v1, Lcom/oculus/vrapi/TrackingService;->remote:Lcom/oculus/vrapi/BleRemoteTrackingService;

    invoke-virtual {v1}, Lcom/oculus/vrapi/BleRemoteTrackingService;->destroy()V

    .line 209
    sput-object v0, Lcom/oculus/vrapi/TrackingService;->remote:Lcom/oculus/vrapi/BleRemoteTrackingService;

    .line 212
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->shutdown()V

    .line 214
    invoke-static {p0}, Lcom/oculus/vrapi/TrackingService;->nativeStopTrackingService(Landroid/content/Context;)V

    .line 216
    iget-object v1, p0, Lcom/oculus/vrapi/TrackingService;->mDismountBroadcastReceiver:Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/oculus/vrapi/TrackingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    iput-object v0, p0, Lcom/oculus/vrapi/TrackingService;->mDismountBroadcastReceiver:Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;

    const-string v0, "TrackingService"

    const-string v1, "onDestroy complete"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    .line 183
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/TrackingService;->setBound(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "TrackingService"

    const-string p2, "onStartCommand"

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p0}, Lcom/oculus/vrapi/TrackingService;->nativeStartTrackingService(Landroid/content/Context;)V

    .line 110
    sget-object p1, Lcom/oculus/vrapi/TrackingService;->remote:Lcom/oculus/vrapi/BleRemoteTrackingService;

    if-nez p1, :cond_0

    .line 111
    new-instance p1, Lcom/oculus/vrapi/BleRemoteTrackingService;

    invoke-direct {p1, p0}, Lcom/oculus/vrapi/BleRemoteTrackingService;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/oculus/vrapi/TrackingService;->remote:Lcom/oculus/vrapi/BleRemoteTrackingService;

    .line 115
    :cond_0
    sget-object p1, Lcom/oculus/vrapi/TrackingService;->remote:Lcom/oculus/vrapi/BleRemoteTrackingService;

    invoke-virtual {p1}, Lcom/oculus/vrapi/BleRemoteTrackingService;->connectToRemoteService()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 189
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/TrackingService;->setBound(Z)V

    .line 193
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->verifyNoClientConnections()V

    const/4 p1, 0x1

    return p1
.end method
