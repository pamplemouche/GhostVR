.class Lcom/oculus/vrapi/PassThroughCameraHelper;
.super Ljava/lang/Object;
.source "PassThroughCameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PassThroughCameraHelper"


# instance fields
.field private cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

.field private syncObject:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/vrapi/PassThroughCameraHelper;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->syncObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static create(I)Lcom/oculus/vrapi/PassThroughCameraHelper;
    .locals 0

    .line 18
    new-instance p0, Lcom/oculus/vrapi/PassThroughCameraHelper;

    invoke-direct {p0}, Lcom/oculus/vrapi/PassThroughCameraHelper;-><init>()V

    return-object p0
.end method

.method private isCameraReady()Z
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$100(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$200(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$300(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$400(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$500(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "PassThroughCameraHelper"

    const-string v2, "isCameraReady: cameraTexture == null"

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getFovH()F
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$300(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFovV()F
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$400(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startPreview(I)V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/PassThroughCameraHelper;->stopPreview(Z)V

    .line 28
    new-instance v0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;-><init>(Lcom/oculus/vrapi/PassThroughCameraHelper;)V

    iput-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    .line 29
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v0, p1}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$002(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;I)I

    .line 30
    iget-object p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-virtual {p1}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->start()V

    return-void
.end method

.method public stopPreview(Z)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$102(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;Z)Z

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-virtual {p1}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PassThroughCameraHelper"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    :cond_0
    return-void
.end method

.method public updateTexture()J
    .locals 4

    .line 73
    invoke-direct {p0}, Lcom/oculus/vrapi/PassThroughCameraHelper;->isCameraReady()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/vrapi/PassThroughCameraHelper;->isCameraReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    monitor-exit v0

    return-wide v1

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v1}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$500(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 89
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper;->cameraThread:Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;

    invoke-static {v1}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->access$500(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
