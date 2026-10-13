.class Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;
.super Ljava/lang/Object;
.source "VrGuardianClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrguardianservice/VrGuardianClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuardianServiceConnection"
.end annotation


# instance fields
.field mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;


# direct methods
.method public constructor <init>(Lcom/oculus/vrguardianservice/VrGuardianClient;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    .line 75
    iput-object p2, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 81
    const-class p1, Lcom/oculus/vrguardianservice/VrGuardianClient;

    monitor-enter p1

    :try_start_0
    const-string v0, "VrGuardianClient"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: Service connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$400(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: onServiceConnected with stale guardianServiceConnection object!!!"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {p2}, Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrguardianservice/IVrGuardianService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$102(Lcom/oculus/vrguardianservice/VrGuardianClient;Lcom/oculus/vrguardianservice/IVrGuardianService;)Lcom/oculus/vrguardianservice/IVrGuardianService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$500(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/VrGuardianClient$LinkDeathHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v0, "VrGuardianClient"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: onServiceConnected: linkToDeath Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :goto_0
    :try_start_3
    iget-object p2, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$100(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/IVrGuardianService;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v1}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$600(Lcom/oculus/vrguardianservice/VrGuardianClient;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/vrguardianservice/IVrGuardianService;->createClient(Landroid/os/IBinder;)Lcom/oculus/vrguardianservice/IVrGuardianClient;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$202(Lcom/oculus/vrguardianservice/VrGuardianClient;Lcom/oculus/vrguardianservice/IVrGuardianClient;)Lcom/oculus/vrguardianservice/IVrGuardianClient;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_4
    const-string v0, "VrGuardianClient"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrGuardianClient: createClient exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const/4 p2, -0x1

    .line 114
    :try_start_5
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$200(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/IVrGuardianClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->getSharedMemoryFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move p2, v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "VrGuardianClient"

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrGuardianClient: guardian getSharedMemoryFileDescriptor exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$700(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$700(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;->connected(I)V

    .line 131
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 137
    const-class p1, Lcom/oculus/vrguardianservice/VrGuardianClient;

    monitor-enter p1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;->this$0:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->access$400(Lcom/oculus/vrguardianservice/VrGuardianClient;)Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianServiceConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: Service disconnected."

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "VrGuardianClient"

    const-string v1, "VrGuardianClient: Service disconnected (ignoring from older service connection)."

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
