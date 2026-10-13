.class Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;
.super Ljava/lang/Object;
.source "VrRuntimeClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/VrRuntimeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RuntimeServiceConnection"
.end annotation


# instance fields
.field mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    .line 261
    iput-object p1, p0, Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    .line 267
    const-class p1, Lcom/oculus/vrapi/VrRuntimeClient;

    monitor-enter p1

    :try_start_0
    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: Service connected."

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$300()Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: onServiceConnected with stale serviceConnection object!!!"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    invoke-static {p2}, Lcom/oculus/vrruntimeservice/IVrRuntimeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrapi/VrRuntimeClient;->access$402(Lcom/oculus/vrruntimeservice/IVrRuntimeService;)Lcom/oculus/vrruntimeservice/IVrRuntimeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 279
    :try_start_1
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$500()Lcom/oculus/vrapi/VrRuntimeClient$LinkDeathHandler;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v1, "VrRuntimeClient"

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: onServiceConnected: linkToDeath Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$400()Lcom/oculus/vrruntimeservice/IVrRuntimeService;

    move-result-object p2

    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$700()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$800()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/oculus/vrruntimeservice/IVrRuntimeService;->createClient(Landroid/os/IBinder;Z)Lcom/oculus/vrruntimeservice/IRuntimeClient;

    move-result-object p2

    invoke-static {p2}, Lcom/oculus/vrapi/VrRuntimeClient;->access$602(Lcom/oculus/vrruntimeservice/IRuntimeClient;)Lcom/oculus/vrruntimeservice/IRuntimeClient;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_4
    const-string v1, "VrRuntimeClient"

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeClient: createClient exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const/4 p2, -0x1

    .line 300
    :try_start_5
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$600()Lcom/oculus/vrruntimeservice/IRuntimeClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->getSharedMemoryFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    .line 303
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$600()Lcom/oculus/vrruntimeservice/IRuntimeClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->getSharedMemoryPrivateReadWriteFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 304
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v8, v2

    move v2, v1

    move-object v1, v8

    goto :goto_3

    :catch_3
    move-exception v1

    const/4 v2, -0x1

    :goto_3
    :try_start_7
    const-string v3, "VrRuntimeClient"

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VrRuntimeClient: getSharedMemoryFileDescriptor exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_2
    const/4 v2, -0x1

    .line 314
    :goto_4
    new-instance v3, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    invoke-direct {v3}, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 318
    :try_start_8
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$600()Lcom/oculus/vrruntimeservice/IRuntimeClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/oculus/vrruntimeservice/IRuntimeClient;->getBufferObjectImportInfo()Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 321
    iget v4, v3, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Fd:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 322
    :try_start_9
    iget p2, v3, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->BufferSize:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 323
    :try_start_a
    iget v3, v3, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->AllocSize:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v0, p2

    move p2, v4

    goto :goto_7

    :catch_4
    move-exception v3

    move v8, v4

    move v4, p2

    move p2, v8

    goto :goto_6

    :catch_5
    move-exception v3

    move p2, v4

    goto :goto_5

    :catch_6
    move-exception v3

    :goto_5
    const/4 v4, 0x0

    :goto_6
    :try_start_b
    const-string v5, "VrRuntimeClient"

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VrRuntimeClient: getBufferObjectImportInfo exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :cond_3
    const/4 v3, 0x0

    .line 333
    :goto_7
    invoke-static {v1, v2, p2, v0, v3}, Lcom/oculus/vrapi/VrRuntimeClient;->access$900(IIIII)V

    .line 335
    iget-object p2, p0, Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_4

    .line 337
    iget-object p2, p0, Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 339
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 345
    const-class p1, Lcom/oculus/vrapi/VrRuntimeClient;

    monitor-enter p1

    .line 347
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$300()Lcom/oculus/vrapi/VrRuntimeClient$RuntimeServiceConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: Service disconnected."

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lcom/oculus/vrapi/VrRuntimeClient;->access$200()V

    goto :goto_0

    :cond_0
    const-string v0, "VrRuntimeClient"

    const-string v1, "VrRuntimeClient: Service disconnected (ignoring from older service connection)."

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
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
