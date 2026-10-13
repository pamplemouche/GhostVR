.class Lcom/oculus/vrapi/TrackingService$1;
.super Lcom/oculus/vrapi/ITrackingService$Stub;
.source "TrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrapi/TrackingService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrapi/TrackingService;


# direct methods
.method constructor <init>(Lcom/oculus/vrapi/TrackingService;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingService$1;->this$0:Lcom/oculus/vrapi/TrackingService;

    invoke-direct {p0}, Lcom/oculus/vrapi/ITrackingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedMemoryFileDescriptor(Lcom/oculus/vrapi/ITrackingServiceClient;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    const-string p1, "TrackingService"

    const-string v0, "ITrackingService.Stub().getSharedMemoryFileDescriptor()"

    .line 129
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/oculus/vrapi/TrackingService;->nativeGetSharedMemoryFd()I

    move-result p1

    .line 133
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TrackingService"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharedMemoryFileDescriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const-string v1, "TrackingService"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharedMemoryFileDescriptor fd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTrackingSocketFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    const-string v0, "TrackingService"

    const-string v1, "not expecting to be here ITrackingService.Stub().getTrackingSocketFileDescriptor()"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    .locals 5

    const-string v0, "TrackingService"

    const-string v1, "ITrackingService.Stub().registerClient(client)"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/oculus/vrapi/TrackingService$1;->this$0:Lcom/oculus/vrapi/TrackingService;

    invoke-static {v1, v0}, Lcom/oculus/vrapi/TrackingService;->access$000(Lcom/oculus/vrapi/TrackingService;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/oculus/vrapi/TrackingService$1;->this$0:Lcom/oculus/vrapi/TrackingService;

    invoke-virtual {v1}, Lcom/oculus/vrapi/TrackingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "%s(%d)"

    const/4 v3, 0x2

    .line 163
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {p1, v0}, Lcom/oculus/vrapi/TrackingServiceConnections;->registerClient(Lcom/oculus/vrapi/ITrackingServiceClient;Ljava/lang/String;)V

    return-void
.end method

.method public sendSignal(I)V
    .locals 0

    .line 150
    invoke-static {p1}, Lcom/oculus/vrapi/TrackingService;->nativeSignalFromClient(I)V

    return-void
.end method

.method public unregisterClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    .locals 1

    .line 172
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p1}, Lcom/oculus/vrapi/TrackingServiceConnections;->unregisterClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V

    :cond_0
    return-void
.end method
