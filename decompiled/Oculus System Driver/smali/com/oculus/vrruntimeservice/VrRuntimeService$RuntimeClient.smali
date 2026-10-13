.class Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;
.super Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;
.source "VrRuntimeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrruntimeservice/VrRuntimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuntimeClient"
.end annotation


# instance fields
.field private clientBinder:Landroid/os/IBinder;

.field private clientId:I

.field private clientPid:I

.field private clientUid:I

.field private clientWindow:Landroid/os/IBinder;

.field private isOverlayClient:Z

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/vrruntimeservice/VrRuntimeService;


# direct methods
.method public constructor <init>(Lcom/oculus/vrruntimeservice/VrRuntimeService;Ljava/lang/String;ZIIILandroid/os/IBinder;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->this$0:Lcom/oculus/vrruntimeservice/VrRuntimeService;

    invoke-direct {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;-><init>()V

    .line 509
    iput p4, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    .line 510
    iput-object p2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->packageName:Ljava/lang/String;

    .line 511
    iput-boolean p3, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->isOverlayClient:Z

    .line 512
    iput p5, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientPid:I

    .line 513
    iput p6, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientUid:I

    .line 514
    iput-object p7, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientBinder:Landroid/os/IBinder;

    .line 515
    invoke-virtual {p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->createSubdirStructure(Landroid/content/Context;)Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 521
    const-class v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;

    monitor-enter v0

    :try_start_0
    const-string v1, "VrRuntimeService"

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeService: binderDied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    iget v3, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientPid:I

    iget-object v4, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {v1, v2, v3, v4}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->destroyClientInternal(Ljava/lang/String;IILandroid/os/IBinder;)V

    .line 525
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createAndroidSurfaceSwapChain(ILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
    .locals 1

    .line 679
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1700(IILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;

    move-result-object p1

    return-object p1
.end method

.method public createTextureSwapChain(ILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
    .locals 1

    .line 672
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1600(IILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 5

    .line 531
    const-class v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    iget v3, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientPid:I

    iget-object v4, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {v1, v2, v3, v4}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->destroyClientInternal(Ljava/lang/String;IILandroid/os/IBinder;)V

    .line 534
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 535
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroyTextureSwapChain(IZ)V
    .locals 1

    .line 687
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1800(IIZ)V

    return-void
.end method

.method public enableRendering(Landroid/os/IBinder;Z)Z
    .locals 7

    .line 594
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$100()Ljava/util/Hashtable;

    move-result-object v0

    monitor-enter v0

    .line 596
    :try_start_0
    iget-boolean v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->isOverlayClient:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    const-string v1, "VrRuntimeService"

    const-string v4, "enableRendering: invalid clientWindow, testing uid"

    .line 604
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientUid:I

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$200()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 607
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object p1

    .line 610
    :cond_0
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$100()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VrRuntimeService"

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") rendering already enabled!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    :cond_1
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$100()Ljava/util/Hashtable;

    move-result-object v1

    new-instance v4, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;

    iget v5, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    iget v6, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientUid:I

    invoke-direct {v4, v5, v6}, Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;-><init>(II)V

    invoke-virtual {v1, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$200()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    const-string v1, "VrRuntimeService"

    const-string v4, "onFocusedWindowChanged event not received"

    .line 624
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 627
    :cond_2
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_4

    goto :goto_1

    .line 637
    :cond_3
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$100()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    .line 642
    iput-object p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 646
    iput-object v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    :goto_2
    if-eqz v2, :cond_6

    .line 651
    iget v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$400(I)V

    .line 653
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "VrRuntimeService"

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VrRuntimeService"

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRendering: clientWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " enable: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :try_start_1
    iget p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1500(IZ)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "VrRuntimeService"

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRendering remote call failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_3
    return p1

    :catchall_0
    move-exception p1

    .line 653
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ensureGuardianConnection()Z
    .locals 1

    .line 897
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->ensureConnection()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public exportGuardianJson(Ljava/lang/String;)[B
    .locals 1

    .line 793
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianClient;->exportGuardianJson(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 798
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2800(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public forceGuardianSetup()V
    .locals 2

    const-string v0, "VrRuntimeService"

    const-string v1, "forceGuardianSetup"

    .line 778
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->forceGuardianSetup()V

    goto :goto_0

    .line 786
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2700(I)V

    :goto_0
    return-void
.end method

.method public forceGuardianVisible(ZDZ)V
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 743
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oculus/vrguardianservice/VrGuardianClient;->forceGuardianVisible(ZDZ)V

    goto :goto_0

    .line 747
    :cond_1
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2400(IZDZ)V

    :goto_0
    return-void
.end method

.method public getBufferObjectImportInfo()Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;
    .locals 2

    const-string v0, "VrRuntimeService"

    const-string v1, "IVrRuntimeClient.Stub().getBufferObjectImportInfo()"

    .line 585
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1400(I)Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSharedMemoryFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    const-string v0, "VrRuntimeService"

    const-string v1, "IVrRuntimeClient.Stub().getSharedMemoryFileDescriptor()"

    .line 541
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1200(I)I

    move-result v0

    .line 549
    :try_start_0
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VrRuntimeService"

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSharedMemoryFileDescriptor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    const-string v2, "VrRuntimeService"

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSharedMemoryFileDescriptor fd (VrRuntimeService) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getSharedMemoryPrivateReadWriteFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    const-string v0, "VrRuntimeService"

    const-string v1, "IVrRuntimeClient.Stub().getSharedMemoryPrivateReadWriteFileDescriptor()"

    .line 563
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1300(I)I

    move-result v0

    .line 571
    :try_start_0
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VrRuntimeService"

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSharedMemoryPrivateReadWriteFileDescriptor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    const-string v2, "VrRuntimeService"

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSharedMemoryPrivateReadWriteFileDescriptor fd (VrRuntimeService) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public guardianCmd(I)I
    .locals 1

    .line 754
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianCmd(I)I

    move-result p1

    return p1

    .line 760
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2500(II)I

    move-result p1

    return p1
.end method

.method public guardianCmdWithParms(IIF)I
    .locals 1

    .line 766
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/vrguardianservice/VrGuardianClient;->guardianCmdWithParms(IIF)I

    move-result p1

    return p1

    .line 772
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2, p3}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2600(IIIF)I

    move-result p1

    return p1
.end method

.method public hideSystemDialog_GazeTimer()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 859
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3400(I)V

    return-void
.end method

.method public hideSystemDialog_MessageDialog(I)V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 879
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3600(II)V

    return-void
.end method

.method public hideSystemDialog_RecenterTimer()V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 839
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3200(I)V

    return-void
.end method

.method public importGuardianJson([BZ)Z
    .locals 1

    .line 804
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 806
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oculus/vrguardianservice/VrGuardianClient;->importGuardianJson([BZ)Z

    move-result p1

    return p1

    .line 809
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2900(I[BZ)Z

    move-result p1

    return p1
.end method

.method public isSystemDialogActive()Z
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 819
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3000(I)Z

    move-result v0

    return v0
.end method

.method public setAndroidSurfaceParameters(IIIZ)V
    .locals 1

    .line 699
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2000(IIIIZ)V

    return-void
.end method

.method public setGobbOrientation(I)V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 723
    :cond_0
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 725
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianClient;->setGobbOrientation(I)V

    goto :goto_0

    .line 729
    :cond_1
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2300(II)V

    :goto_0
    return-void
.end method

.method public setScreenCaptureInhibit(Z)V
    .locals 1

    .line 891
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3800(IZ)V

    return-void
.end method

.method public setSwapChainSamplerState(ILcom/oculus/vrruntimeservice/SwapChainSamplerState;)V
    .locals 1

    .line 693
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1900(IILcom/oculus/vrruntimeservice/SwapChainSamplerState;)V

    return-void
.end method

.method public showSystemDialog_GazeTimer(FF)V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 849
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3300(IFF)V

    return-void
.end method

.method public showSystemDialog_MessageDialog(IDLjava/lang/String;)V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 869
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3500(IIDLjava/lang/String;)V

    return-void
.end method

.method public showSystemDialog_RecenterTimer(FFZ)V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientWindow:Landroid/os/IBinder;

    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$300()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 829
    :cond_0
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0, p1, p2, p3}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3100(IFFZ)V

    return-void
.end method

.method public stopScreenCapture()V
    .locals 1

    .line 885
    iget v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3700(I)V

    return-void
.end method

.method public updateLocalSpace(IFFFFFFF)V
    .locals 10

    .line 705
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/oculus/vrguardianservice/VrGuardianClient;->updateLocalSpace(IFFFFFFF)V

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 711
    iget v1, v0, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;->clientId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$2200(IIFFFFFFF)V

    :goto_0
    return-void
.end method
