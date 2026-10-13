.class final Lcom/oculus/systemactivities/PlatformActivity$1;
.super Ljava/lang/Object;
.source "PlatformActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/systemactivities/PlatformActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 88
    invoke-static {}, Lcom/oculus/systemactivities/PlatformActivity;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "PlatformActivity"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to audio capture service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p2}, Lcom/oculus/aidl/OVRMediaServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/OVRMediaServiceInterface;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/systemactivities/PlatformActivity;->access$102(Lcom/oculus/aidl/OVRMediaServiceInterface;)Lcom/oculus/aidl/OVRMediaServiceInterface;

    .line 91
    sget-object p1, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    invoke-static {p1}, Lcom/oculus/systemactivities/PlatformActivity;->access$200(Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;)V

    .line 92
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

    .line 96
    invoke-static {}, Lcom/oculus/systemactivities/PlatformActivity;->access$000()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string v0, "PlatformActivity"

    const-string v1, "Disconnected from audio capture service"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Lcom/oculus/systemactivities/PlatformActivity;->access$102(Lcom/oculus/aidl/OVRMediaServiceInterface;)Lcom/oculus/aidl/OVRMediaServiceInterface;

    .line 99
    sget-object v0, Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;

    invoke-static {v0}, Lcom/oculus/systemactivities/PlatformActivity;->access$200(Lcom/oculus/systemactivities/PlatformActivity$ConnectionStatus;)V

    .line 100
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
