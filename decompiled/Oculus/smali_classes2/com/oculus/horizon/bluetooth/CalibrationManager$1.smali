.class Lcom/oculus/horizon/bluetooth/CalibrationManager$1;
.super Ljava/lang/Object;
.source "CalibrationManager.java"

# interfaces
.implements Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/CalibrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/CalibrationManager;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonDown(I)V
    .locals 3

    .prologue
    .line 48
    const-string v0, "CalibrationManager"

    const-string v1, "onButtonDown: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public onConnectionState(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 53
    const-string v0, "CalibrationManager"

    const-string v1, "onConnectionState: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    if-ne v4, p1, :cond_2

    .line 59
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    .line 60
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v1}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$000(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/samsung/ControllerConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/samsung/ControllerConnection;->queryInterface(I[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    const-string v1, "CalibrationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VRInputService version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    const/16 v0, 0x42

    :try_start_1
    new-array v0, v0, [B

    .line 70
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v1}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$000(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/samsung/ControllerConnection;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/samsung/ControllerConnection;->queryInterface(I[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$102(Lcom/oculus/horizon/bluetooth/CalibrationManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$000(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/samsung/ControllerConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/samsung/ControllerConnection;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v1}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$200(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 87
    :try_start_4
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v2}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$200(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->open(Landroid/os/ParcelFileDescriptor;)V

    .line 88
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0, v4}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$302(Lcom/oculus/horizon/bluetooth/CalibrationManager;Z)Z

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$500(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v1}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$400(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$700(Lcom/oculus/horizon/bluetooth/CalibrationManager;)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v1, p1}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$702(Lcom/oculus/horizon/bluetooth/CalibrationManager;I)I

    .line 108
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v1}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$500(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;-><init>(Lcom/oculus/horizon/bluetooth/CalibrationManager$1;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :goto_3
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "CalibrationManager"

    const-string v2, "Unable to read VRInputService version"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    const-string v1, "CalibrationManager"

    const-string v2, "Unable to read calibration data"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 80
    :catch_2
    move-exception v0

    .line 81
    const-string v1, "CalibrationManager"

    const-string v2, "Unable to get ParcelFileDescriptor"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 88
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 89
    :catch_3
    move-exception v0

    .line 90
    const-string v1, "CalibrationManager"

    const-string v2, "Unable to open ControllerMemoryFile"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$102(Lcom/oculus/horizon/bluetooth/CalibrationManager;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$600(Lcom/oculus/horizon/bluetooth/CalibrationManager;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$200(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;

    move-result-object v1

    monitor-enter v1

    .line 102
    :try_start_7
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$200(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->close()V

    .line 103
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method
