.class public Lcom/oculus/audio_capture/AudioService;
.super Ljava/lang/Object;
.source "AudioService.java"


# static fields
.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.oculus.horizon.service_media.OVRMediaService"

.field private static final STREAM_APP_PACKAGE:Ljava/lang/String; = "com.oculus.horizon"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static sLock:Ljava/lang/Object;

.field private static sServiceConnection:Landroid/content/ServiceConnection;

.field private static sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

.field private static shouldUnbindFromService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/audio_capture/AudioService;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/oculus/audio_capture/AudioService;->shouldUnbindFromService:Z

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/oculus/audio_capture/AudioService;->sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

    .line 35
    new-instance v0, Lcom/oculus/audio_capture/AudioService$1;

    invoke-direct {v0}, Lcom/oculus/audio_capture/AudioService$1;-><init>()V

    sput-object v0, Lcom/oculus/audio_capture/AudioService;->sServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lcom/oculus/audio_capture/AudioService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/oculus/audio_capture/AudioService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/aidl/OVRMediaServiceInterface;)Lcom/oculus/aidl/OVRMediaServiceInterface;
    .locals 0

    .line 25
    sput-object p0, Lcom/oculus/audio_capture/AudioService;->sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

    return-object p0
.end method

.method public static bind(Landroid/content/Context;)V
    .locals 5

    .line 72
    sget-object v0, Lcom/oculus/audio_capture/AudioService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/oculus/audio_capture/AudioService;->isServiceBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    monitor-exit v0

    return-void

    .line 77
    :cond_0
    sget-object v1, Lcom/oculus/audio_capture/AudioService;->TAG:Ljava/lang/String;

    const-string v2, "Binding to audio capture service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oculus.horizon"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 81
    sget-object v2, Lcom/oculus/audio_capture/AudioService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Horizon version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catch_0
    :try_start_2
    sget-object v1, Lcom/oculus/audio_capture/AudioService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get Horizon version"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 86
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.horizon"

    const-string v4, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    sget-object v2, Lcom/oculus/audio_capture/AudioService;->sServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    sput-boolean p0, Lcom/oculus/audio_capture/AudioService;->shouldUnbindFromService:Z

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getBuildSdkVersion()I
    .locals 1

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isAudioHookingSupported()Z
    .locals 2

    .line 54
    sget-object v0, Lcom/oculus/audio_capture/AudioService;->TAG:Ljava/lang/String;

    const-string v1, "isAudioHookingSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isServiceBound()Z
    .locals 2

    .line 66
    sget-object v0, Lcom/oculus/audio_capture/AudioService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/oculus/audio_capture/AudioService;->sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sendPCMData(Landroid/content/Context;III[SJ)V
    .locals 1

    .line 102
    invoke-static {p0}, Lcom/oculus/audio_capture/AudioService;->bind(Landroid/content/Context;)V

    .line 103
    sget-object p0, Lcom/oculus/audio_capture/AudioService;->sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

    if-eqz p0, :cond_0

    .line 104
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "num_channels"

    .line 105
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "samples_per_second"

    .line 106
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bits_per_sample"

    .line 107
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pcm_data"

    .line 108
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    const-string p1, "track_id"

    .line 109
    invoke-virtual {p0, p1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    :try_start_0
    sget-object p1, Lcom/oculus/audio_capture/AudioService;->sServiceInterface:Lcom/oculus/aidl/OVRMediaServiceInterface;

    invoke-interface {p1, p0}, Lcom/oculus/aidl/OVRMediaServiceInterface;->sendLivestreamingRawPCMData(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 114
    sget-object p1, Lcom/oculus/audio_capture/AudioService;->TAG:Ljava/lang/String;

    const-string p2, "The server doesn\'t want your PCMs"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static unbind(Landroid/content/Context;)V
    .locals 1

    .line 120
    sget-boolean v0, Lcom/oculus/audio_capture/AudioService;->shouldUnbindFromService:Z

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/oculus/audio_capture/AudioService;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    .line 122
    sput-boolean p0, Lcom/oculus/audio_capture/AudioService;->shouldUnbindFromService:Z

    :cond_0
    return-void
.end method
