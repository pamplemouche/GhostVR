.class Lcom/oculus/horizon/bluetooth/CalibrationManager$2;
.super Ljava/lang/Object;
.source "CalibrationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/CalibrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIMUPerSec:I

.field private mNext1SecTimeStamp:J

.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/CalibrationManager;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const v12, 0x461c4000    # 10000.0f

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 126
    const/16 v0, 0xc00

    new-array v2, v0, [B

    .line 127
    const/4 v0, 0x3

    new-array v3, v0, [F

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$200(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/bluetooth/ControllerMemoryFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 137
    :goto_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 138
    :cond_0
    :goto_1
    if-lez v0, :cond_6

    .line 139
    add-int/lit8 v0, v0, -0x1

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 142
    iget-wide v6, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mNext1SecTimeStamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 143
    iput-wide v4, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mNext1SecTimeStamp:J

    .line 144
    iput v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mIMUPerSec:I

    .line 152
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 153
    if-nez v4, :cond_5

    .line 154
    iget v4, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mIMUPerSec:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mIMUPerSec:I

    .line 158
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 159
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 160
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 161
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 162
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    .line 163
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    .line 164
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    .line 165
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v7

    .line 166
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    .line 167
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v9

    .line 168
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 169
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    cmpl-float v10, v7, v11

    if-nez v10, :cond_2

    cmpl-float v10, v8, v11

    if-nez v10, :cond_2

    cmpl-float v10, v9, v11

    if-eqz v10, :cond_0

    .line 184
    :cond_2
    iget-object v10, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v10}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$900(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 186
    aput v7, v3, v1

    .line 187
    neg-float v7, v9

    aput v7, v3, v13

    .line 188
    aput v8, v3, v14

    .line 189
    iget-object v7, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    iget-object v8, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v8}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1100(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/bluetooth/CalibrationNativeLibrary;

    move-result-object v8

    iget-object v9, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v9}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1000(Lcom/oculus/horizon/bluetooth/CalibrationManager;)[F

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lcom/oculus/horizon/bluetooth/CalibrationNativeLibrary;->calibrateMag([F[F)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$902(Lcom/oculus/horizon/bluetooth/CalibrationManager;Z)Z

    .line 190
    iget-object v7, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v7}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$900(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 191
    iget-object v7, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    iget-object v8, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v8}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1000(Lcom/oculus/horizon/bluetooth/CalibrationManager;)[F

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1200(Lcom/oculus/horizon/bluetooth/CalibrationManager;[F)V

    .line 196
    :cond_3
    iget-object v7, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v7}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1300(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 198
    div-float/2addr v4, v12

    aput v4, v3, v1

    .line 199
    div-float v4, v5, v12

    aput v4, v3, v13

    .line 200
    div-float v4, v6, v12

    aput v4, v3, v14

    .line 201
    iget-object v4, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    iget-object v5, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v5}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1100(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Lcom/oculus/horizon/bluetooth/CalibrationNativeLibrary;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v6}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1400(Lcom/oculus/horizon/bluetooth/CalibrationManager;)[F

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/oculus/horizon/bluetooth/CalibrationNativeLibrary;->calibrateGyro([F[F)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1302(Lcom/oculus/horizon/bluetooth/CalibrationManager;Z)Z

    .line 202
    iget-object v4, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v4}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1300(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    iget-object v4, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    iget-object v5, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v5}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1400(Lcom/oculus/horizon/bluetooth/CalibrationManager;)[F

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$1500(Lcom/oculus/horizon/bluetooth/CalibrationManager;[F)V

    goto/16 :goto_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v4, "CalibrationManager"

    const-string v5, "Unable to read sensor data"

    invoke-static {v4, v5, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto/16 :goto_0

    .line 145
    :cond_4
    iget-wide v6, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mNext1SecTimeStamp:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 146
    const-string v4, "CalibrationManager"

    const-string v5, "IMU/sec: %d"

    iget v6, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mIMUPerSec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iput v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mIMUPerSec:I

    .line 149
    iget-wide v4, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mNext1SecTimeStamp:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->mNext1SecTimeStamp:J

    goto/16 :goto_2

    .line 206
    :cond_5
    if-ne v13, v4, :cond_0

    .line 209
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 210
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 211
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 212
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 213
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$300(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$500(Lcom/oculus/horizon/bluetooth/CalibrationManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xf

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_7
    return-void
.end method
