.class public Lorg/chromium/device/sensors/PlatformSensorProvider;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/hardware/SensorManager;

.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->d:Ljava/util/Set;

    const-string v0, "sensor"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    return-void
.end method

.method public static create()Lorg/chromium/device/sensors/PlatformSensorProvider;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/device/sensors/PlatformSensorProvider;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-direct {v0, v1}, Lorg/chromium/device/sensors/PlatformSensorProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/chromium/device/sensors/PlatformSensor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->d:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->b:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SensorsHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->b:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->c:Landroid/os/Handler;

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lorg/chromium/device/sensors/PlatformSensor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->d:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->b:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->b:Landroid/os/HandlerThread;

    .line 7
    iput-object p1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->c:Landroid/os/Handler;

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createSensor(I)Lorg/chromium/device/sensors/PlatformSensor;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x5

    if-eqz p1, :cond_7

    const/16 v3, 0x8

    const/4 v4, 0x4

    if-eq p1, v3, :cond_6

    const/16 v3, 0xa

    if-eq p1, v3, :cond_5

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq p1, v5, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-static {v5, v6, p0}, Lorg/chromium/device/sensors/PlatformSensor;->a(IILorg/chromium/device/sensors/PlatformSensorProvider;)Lorg/chromium/device/sensors/PlatformSensor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    invoke-static {v4, v6, p0}, Lorg/chromium/device/sensors/PlatformSensor;->a(IILorg/chromium/device/sensors/PlatformSensorProvider;)Lorg/chromium/device/sensors/PlatformSensor;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    invoke-static {v3, v6, p0}, Lorg/chromium/device/sensors/PlatformSensor;->a(IILorg/chromium/device/sensors/PlatformSensorProvider;)Lorg/chromium/device/sensors/PlatformSensor;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-static {v0, v6, p0}, Lorg/chromium/device/sensors/PlatformSensor;->a(IILorg/chromium/device/sensors/PlatformSensorProvider;)Lorg/chromium/device/sensors/PlatformSensor;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 p1, 0xf

    .line 6
    invoke-static {p1, v4, p0}, Lorg/chromium/device/sensors/PlatformSensor;->a(IILorg/chromium/device/sensors/PlatformSensorProvider;)Lorg/chromium/device/sensors/PlatformSensor;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 p1, 0xb

    .line 7
    invoke-static {p1, v4, p0}, Lorg/chromium/device/sensors/PlatformSensor;->a(IILorg/chromium/device/sensors/PlatformSensorProvider;)Lorg/chromium/device/sensors/PlatformSensor;

    move-result-object p1

    return-object p1

    .line 8
    :cond_7
    invoke-static {v2, v0, p0}, Lorg/chromium/device/sensors/PlatformSensor;->a(IILorg/chromium/device/sensors/PlatformSensorProvider;)Lorg/chromium/device/sensors/PlatformSensor;

    move-result-object p1

    return-object p1
.end method

.method public hasSensorType(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0xa

    if-eqz p1, :cond_7

    const/16 v6, 0x8

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    const/4 v6, 0x3

    if-eq p1, v6, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_0

    :cond_3
    const/16 p1, 0xa

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0xf

    goto :goto_0

    :cond_6
    const/16 p1, 0xb

    goto :goto_0

    :cond_7
    const/4 p1, 0x5

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public setSensorManagerToNullForTesting()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/chromium/device/sensors/PlatformSensorProvider;->a:Landroid/hardware/SensorManager;

    return-void
.end method
