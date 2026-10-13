.class Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "BleRemoteTrackingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/BleRemoteTrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field public ConnectionState:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

.field private deviceIdentifier:J

.field private mCallback:Lcom/samsung/android/app/vr/input/service/IServiceCallback;

.field private remoteBatteryReceiver:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;

.field private remoteService:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

.field final synthetic this$0:Lcom/oculus/vrapi/BleRemoteTrackingService;


# direct methods
.method public constructor <init>(Lcom/oculus/vrapi/BleRemoteTrackingService;Landroid/content/Context;)V
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->this$0:Lcom/oculus/vrapi/BleRemoteTrackingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->deviceIdentifier:J

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteService:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    .line 112
    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteBatteryReceiver:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;

    .line 114
    sget-object v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->AwaitingConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->ConnectionState:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    .line 224
    new-instance v0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection$1;-><init>(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)V

    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->mCallback:Lcom/samsung/android/app/vr/input/service/IServiceCallback;

    .line 118
    new-instance v0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;

    invoke-direct {v0, p1, p2}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;-><init>(Lcom/oculus/vrapi/BleRemoteTrackingService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteBatteryReceiver:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->disconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->deviceIdentifier:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteService:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;JI[B[B[B)V
    .locals 0

    .line 108
    invoke-direct/range {p0 .. p6}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->onRemoteConnected(JI[B[B[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->onRemoteDisconnected()V

    return-void
.end method

.method private declared-synchronized disconnect()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 148
    :try_start_0
    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteService:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    .line 149
    invoke-direct {p0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->onRemoteDisconnected()V

    .line 150
    sget-object v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->Disconnected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->ConnectionState:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 147
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onRemoteConnected(JI[B[B[B)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v12, p1

    monitor-enter p0

    :try_start_0
    const-string v0, "BleRemoteTrackingService"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking Service BLE remote connected, fd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Starting data loop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p3

    move-object/from16 v2, p5

    .line 158
    invoke-static {v12, v13, v0, v2}, Lcom/oculus/vrapi/BleRemoteTrackingService;->access$100(JI[B)V

    const/16 v2, 0xc8

    const/16 v3, 0x140

    const/4 v4, 0x0

    if-eqz p6, :cond_0

    .line 171
    invoke-static/range {p6 .. p6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 172
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9
    :try_end_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3
    :try_end_6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 181
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v11, v0

    move v10, v3

    goto :goto_4

    :catch_0
    move-exception v0

    move v15, v5

    move v5, v3

    move v3, v8

    move v8, v15

    goto :goto_3

    :catch_1
    move-exception v0

    move v3, v8

    goto :goto_0

    :catch_2
    move-exception v0

    move v3, v8

    const/16 v9, 0x140

    :goto_0
    move v8, v5

    const/16 v5, 0xc8

    goto :goto_3

    :catch_3
    move-exception v0

    move v8, v5

    const/16 v5, 0xc8

    goto :goto_2

    :catch_4
    move-exception v0

    move v8, v5

    const/16 v5, 0xc8

    goto :goto_1

    :catch_5
    move-exception v0

    move v8, v5

    const/16 v5, 0xc8

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :catch_6
    move-exception v0

    const/16 v5, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    const/16 v9, 0x140

    :goto_3
    :try_start_8
    const-string v10, "BleRemoteTrackingService"

    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse deviceInfoData from InputService: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v5

    move v5, v8

    const/16 v11, 0xc8

    move v8, v3

    goto :goto_4

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x140

    const/16 v9, 0x140

    const/16 v10, 0xc8

    const/16 v11, 0xc8

    :goto_4
    if-eqz p4, :cond_1

    .line 191
    invoke-static/range {p4 .. p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 195
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_9
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v2, v0

    :try_start_a
    const-string v0, "BleRemoteTrackingService"

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse serviceVersionData from InputService: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 203
    :goto_5
    iput-wide v12, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->deviceIdentifier:J

    move-wide/from16 v2, p1

    move v4, v5

    move v5, v0

    .line 205
    invoke-static/range {v2 .. v11}, Lcom/oculus/vrapi/TrackingServiceConnections;->notifyRemoteConnected(JIIIIIIII)Z

    .line 209
    iget-object v0, v1, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteBatteryReceiver:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;

    invoke-virtual {v0, v12, v13}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->startReceiver(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 155
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onRemoteDisconnected()V
    .locals 4

    monitor-enter p0

    .line 214
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->deviceIdentifier:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "BleRemoteTrackingService"

    const-string v1, "Tracking Service BLE Remote disconnected"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 217
    invoke-static {v2, v3, v0, v1}, Lcom/oculus/vrapi/BleRemoteTrackingService;->access$100(JI[B)V

    .line 218
    iget-wide v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->deviceIdentifier:J

    invoke-static {v0, v1}, Lcom/oculus/vrapi/TrackingServiceConnections;->notifyRemoteDisconnected(J)Z

    .line 219
    iput-wide v2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->deviceIdentifier:J

    .line 220
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteBatteryReceiver:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;

    invoke-virtual {v0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->stopReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 213
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "BleRemoteTrackingService"

    const-string v0, "onServiceConnected "

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p2}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteService:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    .line 129
    :try_start_0
    iget-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->remoteService:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    iget-object p2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->mCallback:Lcom/samsung/android/app/vr/input/service/IServiceCallback;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;->RegisterCallback(Lcom/samsung/android/app/vr/input/service/IServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "BleRemoteTrackingService"

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to register callback. Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "BleRemoteTrackingService"

    const-string p2, "onServiceConnected connected"

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object p1, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->Connected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->ConnectionState:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BleRemoteTrackingService"

    const-string v0, "onServiceDisconnected disconnected"

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->disconnect()V

    return-void
.end method
