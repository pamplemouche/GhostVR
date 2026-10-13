.class final Lcom/oculus/audio_capture/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/audio_capture/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 38
    invoke-static {}, Lcom/oculus/audio_capture/AudioService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/oculus/audio_capture/AudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to audio capture service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {p2}, Lcom/oculus/aidl/OVRMediaServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/OVRMediaServiceInterface;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/audio_capture/AudioService;->access$202(Lcom/oculus/aidl/OVRMediaServiceInterface;)Lcom/oculus/aidl/OVRMediaServiceInterface;

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/oculus/audio_capture/AudioService;->access$000()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 46
    :try_start_0
    invoke-static {}, Lcom/oculus/audio_capture/AudioService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected from audio capture service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Lcom/oculus/audio_capture/AudioService;->access$202(Lcom/oculus/aidl/OVRMediaServiceInterface;)Lcom/oculus/aidl/OVRMediaServiceInterface;

    .line 48
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
