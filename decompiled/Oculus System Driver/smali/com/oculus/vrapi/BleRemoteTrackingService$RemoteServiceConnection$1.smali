.class Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;
.super Lcom/samsung/android/app/vr/input/service/IServiceCallback$Stub;
.source "BleRemoteTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final CALIBRATION_DATA_SIZE:I = 0x42

.field private static final DEVICE_INFO_SIZE:I = 0x20

.field private static final GEAR_REMOTE_DEVICE_ID:J = 0x2L

.field private static final MALIBU_DEVICE_ID:J = 0x1L

.field private static final SERVICE_VERSION_SIZE:I = 0x4


# instance fields
.field final synthetic this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;


# direct methods
.method constructor <init>(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-direct {p0}, Lcom/samsung/android/app/vr/input/service/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonDown(I)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$200(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$200(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/oculus/vrapi/TrackingServiceConnections;->notifyRemoteButtonState(JI)Z

    :cond_0
    return-void
.end method

.method public onConnectionState(I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 249
    iget-object v2, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v3, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v3}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$300(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    const-string v3, "BleRemoteTrackingService"

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IServiceCallback.onConnectionState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    const/4 v0, 0x4

    .line 259
    new-array v3, v0, [B

    const/16 v0, 0x42

    .line 260
    new-array v4, v0, [B

    const/16 v0, 0x20

    .line 261
    new-array v5, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    const-wide/16 v7, 0x2

    .line 267
    :try_start_1
    iget-object v0, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$300(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;->getParcelFileDescriptor(Lcom/samsung/android/app/vr/input/service/IServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 272
    :try_start_2
    iget-object v6, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v6}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$300(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;->queryInterface(I[B)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_1

    move-object v3, v6

    :cond_1
    const/4 v0, 0x2

    .line 278
    iget-object v10, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v10}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$300(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    move-result-object v10

    invoke-interface {v10, v0, v4}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;->queryInterface(I[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    int-to-long v7, v0

    goto :goto_0

    :cond_2
    move-object v4, v6

    :goto_0
    const/4 v0, 0x3

    .line 291
    iget-object v10, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v10}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$300(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    move-result-object v10

    invoke-interface {v10, v0, v5}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;->queryInterface(I[B)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    move-object v5, v6

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v9, -0x1

    :goto_1
    :try_start_3
    const-string v6, "BleRemoteTrackingService"

    .line 296
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-wide v11, v7

    move v13, v9

    .line 299
    iget-object v10, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static/range {v10 .. v16}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$400(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;JI[B[B[B)V

    goto :goto_3

    .line 303
    :cond_4
    iget-object v0, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;->this$1:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$500(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)V

    .line 305
    :goto_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
