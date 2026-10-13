.class public Lorg/chromium/device/sensors/PlatformSensor;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public a:J

.field public final b:Landroid/hardware/Sensor;

.field public final c:I

.field public final d:I

.field public e:D

.field public final f:Lorg/chromium/device/sensors/PlatformSensorProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/device/sensors/PlatformSensor;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Sensor;ILorg/chromium/device/sensors/PlatformSensorProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lorg/chromium/device/sensors/PlatformSensor;->d:I

    .line 3
    iput-object p3, p0, Lorg/chromium/device/sensors/PlatformSensor;->f:Lorg/chromium/device/sensors/PlatformSensorProvider;

    .line 4
    iput-object p1, p0, Lorg/chromium/device/sensors/PlatformSensor;->b:Landroid/hardware/Sensor;

    .line 5
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result p1

    iput p1, p0, Lorg/chromium/device/sensors/PlatformSensor;->c:I

    return-void
.end method

.method public static a(IILorg/chromium/device/sensors/PlatformSensorProvider;)Lorg/chromium/device/sensors/PlatformSensor;
    .locals 2

    .line 1
    iget-object v0, p2, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    .line 2
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lorg/chromium/device/sensors/PlatformSensor;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Sensor;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/device/sensors/PlatformSensor;-><init>(Landroid/hardware/Sensor;ILorg/chromium/device/sensors/PlatformSensorProvider;)V

    return-object v0
.end method


# virtual methods
.method public a(DDDDD)V
    .locals 14

    move-object v13, p0

    .line 5
    iget-wide v0, v13, Lorg/chromium/device/sensors/PlatformSensor;->a:J

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    .line 6
    invoke-static/range {v0 .. v12}, LJ/N;->Mb4JvlL7(JLjava/lang/Object;DDDDD)V

    return-void
.end method

.method public checkSensorConfiguration(D)Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->c:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, p1

    const-wide p1, 0x412e848000000000L    # 1000000.0

    mul-double v1, v1, p1

    double-to-int p1, v1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDefaultConfiguration()D
    .locals 2

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    return-wide v0
.end method

.method public getMaximumSupportedFrequency()D
    .locals 7

    .line 1
    iget v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensor;->getDefaultConfiguration()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, v0

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v3, v3, v5

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getReportingMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initPlatformSensorAndroid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/device/sensors/PlatformSensor;->a:J

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    iget-wide v1, v11, Lorg/chromium/device/sensors/PlatformSensor;->a:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "PlatformSensor"

    const-string v2, "Should not get sensor events after PlatformSensorAndroid is destroyed."

    .line 2
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v3

    iget v6, v11, Lorg/chromium/device/sensors/PlatformSensor;->d:I

    if-ge v4, v6, :cond_1

    .line 4
    invoke-static {v1, v2, v11}, LJ/N;->MrHXg7he(JLjava/lang/Object;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/device/sensors/PlatformSensor;->stopSensor()V

    return-void

    .line 6
    :cond_1
    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-double v0, v0

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v1, v0, v6

    .line 7
    array-length v0, v3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    const/4 v7, 0x3

    if-eq v0, v7, :cond_2

    .line 8
    aget v0, v3, v5

    float-to-double v8, v0

    aget v0, v3, v4

    float-to-double v12, v0

    aget v0, v3, v6

    float-to-double v14, v0

    aget v0, v3, v7

    float-to-double v5, v0

    move-object/from16 v0, p0

    move-wide v3, v8

    move-wide v9, v5

    move-wide v5, v12

    move-wide v7, v14

    invoke-virtual/range {v0 .. v10}, Lorg/chromium/device/sensors/PlatformSensor;->a(DDDDD)V

    goto :goto_0

    .line 9
    :cond_2
    aget v0, v3, v5

    float-to-double v7, v0

    aget v0, v3, v4

    float-to-double v9, v0

    aget v0, v3, v6

    float-to-double v12, v0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-wide v3, v7

    move-wide v5, v9

    move-wide v7, v12

    move-wide v9, v14

    invoke-virtual/range {v0 .. v10}, Lorg/chromium/device/sensors/PlatformSensor;->a(DDDDD)V

    goto :goto_0

    .line 10
    :cond_3
    aget v0, v3, v5

    float-to-double v5, v0

    aget v0, v3, v4

    float-to-double v7, v0

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v12

    invoke-virtual/range {v0 .. v10}, Lorg/chromium/device/sensors/PlatformSensor;->a(DDDDD)V

    goto :goto_0

    .line 11
    :cond_4
    aget v0, v3, v5

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/chromium/device/sensors/PlatformSensor;->a(DDDDD)V

    :goto_0
    return-void
.end method

.method public sensorDestroyed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensor;->stopSensor()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->a:J

    return-void
.end method

.method public startSensor(D)Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->e:D

    const/4 v2, 0x1

    cmpl-double v3, v0, p1

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-nez v5, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->f:Lorg/chromium/device/sensors/PlatformSensorProvider;

    .line 3
    iget-object v0, v0, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    .line 4
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensor;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->f:Lorg/chromium/device/sensors/PlatformSensorProvider;

    invoke-virtual {v0, p0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->a(Lorg/chromium/device/sensors/PlatformSensor;)V

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensor;->f:Lorg/chromium/device/sensors/PlatformSensorProvider;

    .line 7
    iget-object v1, v1, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    .line 8
    iget-object v3, p0, Lorg/chromium/device/sensors/PlatformSensor;->b:Landroid/hardware/Sensor;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, p1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v6

    double-to-int v4, v4

    .line 9
    iget-object v5, p0, Lorg/chromium/device/sensors/PlatformSensor;->f:Lorg/chromium/device/sensors/PlatformSensorProvider;

    .line 10
    iget-object v5, v5, Lorg/chromium/device/sensors/PlatformSensorProvider;->c:Landroid/os/Handler;

    .line 11
    invoke-virtual {v1, p0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v1, "PlatformSensor"

    const-string v3, "Failed to register sensor listener."

    .line 12
    invoke-static {v1, v3, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lorg/chromium/device/sensors/PlatformSensor;->stopSensor()V

    return v0

    .line 14
    :cond_2
    iput-wide p1, p0, Lorg/chromium/device/sensors/PlatformSensor;->e:D

    return v0
.end method

.method public stopSensor()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->f:Lorg/chromium/device/sensors/PlatformSensorProvider;

    .line 3
    iget-object v0, v0, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    .line 4
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensor;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensor;->f:Lorg/chromium/device/sensors/PlatformSensorProvider;

    invoke-virtual {v0, p0}, Lorg/chromium/device/sensors/PlatformSensorProvider;->b(Lorg/chromium/device/sensors/PlatformSensor;)V

    .line 6
    iput-wide v2, p0, Lorg/chromium/device/sensors/PlatformSensor;->e:D

    return-void
.end method
