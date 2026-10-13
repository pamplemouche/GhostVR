.class Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;
.super Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;
.source "VrGuardianService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrguardianservice/VrGuardianService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuardianClient"
.end annotation


# instance fields
.field private clientBinder:Landroid/os/IBinder;

.field private clientId:I

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/vrguardianservice/VrGuardianService;


# direct methods
.method public constructor <init>(Lcom/oculus/vrguardianservice/VrGuardianService;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->this$0:Lcom/oculus/vrguardianservice/VrGuardianService;

    invoke-direct {p0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->packageName:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientBinder:Landroid/os/IBinder;

    .line 126
    iput p3, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 132
    const-class v0, Lcom/oculus/vrguardianservice/VrGuardianService;

    monitor-enter v0

    :try_start_0
    const-string v1, "VrGuardianService"

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrGuardianService: binderDied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 3

    .line 141
    const-class v0, Lcom/oculus/vrguardianservice/VrGuardianService;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public exportGuardianJson(Ljava/lang/String;)[B
    .locals 1

    .line 214
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$800(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public forceGuardianSetup()V
    .locals 1

    .line 208
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$700(I)V

    return-void
.end method

.method public forceGuardianVisible(ZDZ)V
    .locals 1

    .line 190
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$400(IZDZ)V

    return-void
.end method

.method public fullStartup()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->this$0:Lcom/oculus/vrguardianservice/VrGuardianService;

    invoke-virtual {v0}, Lcom/oculus/vrguardianservice/VrGuardianService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$000(Landroid/content/Context;)V

    return-void
.end method

.method public getSharedMemoryFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    const-string v0, "VrGuardianService"

    const-string v1, "IVrGuardianClient.Stub().getSharedMemoryFileDescriptor()"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$100(I)I

    move-result v0

    .line 164
    :try_start_0
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VrGuardianService"

    .line 168
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
    const-string v2, "VrGuardianService"

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSharedMemoryFileDescriptor fd (VrGuardianService) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public guardianCmd(I)I
    .locals 1

    .line 196
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$500(II)I

    move-result p1

    return p1
.end method

.method public guardianCmdWithParms(IIF)I
    .locals 1

    .line 202
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1, p2, p3}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$600(IIIF)I

    move-result p1

    return p1
.end method

.method public importGuardianJson([BZ)Z
    .locals 1

    .line 220
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1, p2}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$900(I[BZ)Z

    move-result p1

    return p1
.end method

.method public onDestroyActiveClient(Ljava/lang/String;)V
    .locals 1

    .line 250
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$1400(ILjava/lang/String;)V

    return-void
.end method

.method public setClientMgrState(ZZZ)V
    .locals 1

    .line 244
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1, p2, p3}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$1300(IZZZ)V

    return-void
.end method

.method public setGobbOrientation(I)V
    .locals 1

    .line 184
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$300(II)V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1

    .line 232
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$1100(ILjava/lang/String;)V

    return-void
.end method

.method public suspendResume(Z)V
    .locals 1

    .line 226
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$1000(IZ)V

    return-void
.end method

.method public updateAfterMountInBlackRelocDuration(Z)V
    .locals 1

    .line 238
    iget v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    invoke-static {v0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$1200(IZ)V

    return-void
.end method

.method public updateLocalSpace(IFFFFFFF)V
    .locals 10

    move-object v0, p0

    .line 178
    iget v1, v0, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;->clientId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$200(IIFFFFFFF)V

    return-void
.end method
