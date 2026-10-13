.class public Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;
.super Ljava/lang/Thread;
.source "PassThroughCameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/PassThroughCameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraThread"
.end annotation


# instance fields
.field private volatile camera:Landroid/hardware/Camera;

.field private volatile cameraTexture:Landroid/graphics/SurfaceTexture;

.field private volatile cancelPreview:Z

.field private currentTexId:I

.field private volatile fovH:F

.field private volatile fovV:F

.field final synthetic this$0:Lcom/oculus/vrapi/PassThroughCameraHelper;


# direct methods
.method public constructor <init>(Lcom/oculus/vrapi/PassThroughCameraHelper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->this$0:Lcom/oculus/vrapi/PassThroughCameraHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    .line 106
    iput-object p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cameraTexture:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    .line 108
    iput p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovV:F

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cancelPreview:Z

    .line 111
    iput p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->currentTexId:I

    return-void
.end method

.method static synthetic access$002(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;I)I
    .locals 0

    .line 103
    iput p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->currentTexId:I

    return p1
.end method

.method static synthetic access$100(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cancelPreview:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cancelPreview:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)Landroid/hardware/Camera;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)F
    .locals 0

    .line 103
    iget p0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    return p0
.end method

.method static synthetic access$400(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)F
    .locals 0

    .line 103
    iget p0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovV:F

    return p0
.end method

.method static synthetic access$500(Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cameraTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method private sleep(I)V
    .locals 3

    int-to-long v0, p1

    .line 124
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PassThroughCameraHelper"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startPreviewBlocking()V
    .locals 13

    .line 146
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->this$0:Lcom/oculus/vrapi/PassThroughCameraHelper;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper;->access$600(Lcom/oculus/vrapi/PassThroughCameraHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    const-string v1, "PassThroughCameraHelper"

    const-string v2, "openCameraBlocking while already previewing "

    .line 150
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->stopPreviewBlocking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    .line 156
    :try_start_1
    iput v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    .line 157
    iput v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovV:F

    const/4 v2, 0x0

    .line 158
    iput-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    .line 160
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    .line 162
    iget-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    const-string v1, "PassThroughCameraHelper"

    const-string v2, "Camera.open() returned null"

    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 169
    :cond_1
    :try_start_3
    new-instance v2, Landroid/hardware/Camera$Size;

    iget-object v3, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x2d0

    const/16 v5, 0x500

    invoke-direct {v2, v3, v5, v4}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 171
    iget-object v3, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "true"

    const-string v6, "vrmode-supported"

    .line 173
    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    const-string v1, "PassThroughCameraHelper"

    const-string v2, "Camera vrmode-supported: true"

    .line 175
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "vrmode"

    .line 177
    invoke-virtual {v3, v1, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {v3, v7}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 182
    new-instance v1, Landroid/hardware/Camera$Size;

    iget-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x3c0

    const/16 v5, 0x21c

    invoke-direct {v1, v2, v4, v5}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 185
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const-string v2, "fast-fps-mode"

    const/4 v4, 0x2

    .line 188
    invoke-virtual {v3, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const v2, 0x1d4c0

    .line 189
    invoke-virtual {v3, v2, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    :cond_2
    const-string v4, "PassThroughCameraHelper"

    const-string v8, "Camera vrmode-supported: false"

    .line 201
    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v4

    const-string v8, "PassThroughCameraHelper"

    .line 204
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preferredSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x0

    .line 207
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    const-string v9, "PassThroughCameraHelper"

    .line 209
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preview format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    move-object v9, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 220
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    const-string v10, "PassThroughCameraHelper"

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preview size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    iget v12, v12, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    iget v12, v12, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 222
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    if-le v10, v5, :cond_4

    goto :goto_2

    .line 230
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const v11, 0x3fe38e39

    sub-float/2addr v10, v11

    .line 231
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 234
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v11, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-float v11, v11

    sub-float/2addr v11, v10

    cmpl-float v10, v8, v1

    if-eqz v10, :cond_5

    cmpl-float v10, v11, v8

    if-lez v10, :cond_6

    .line 238
    :cond_5
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    move-object v9, v8

    move v8, v11

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v1, "PassThroughCameraHelper"

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoExposureLockSupported: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PassThroughCameraHelper"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoWhiteBalanceLockSupported: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PassThroughCameraHelper"

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minExposureCompensation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PassThroughCameraHelper"

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxExposureCompensation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v1, v9, Landroid/hardware/Camera$Size;->width:I

    iget v2, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 251
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 252
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    const-string v4, "PassThroughCameraHelper"

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fps range: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v8, v8, v6

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v8, v8, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 258
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 259
    aget v2, v1, v6

    aget v1, v1, v7

    invoke-virtual {v3, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    move-object v1, v9

    .line 268
    :goto_4
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 270
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    const-string v5, "PassThroughCameraHelper"

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "focus-mode supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    const-string v4, "continuous-video"

    .line 276
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v2, "focus-mode"

    const-string v4, "continuous-video"

    .line 278
    invoke-virtual {v3, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PassThroughCameraHelper"

    const-string v4, "focus-mode set: continuous-video"

    .line 279
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    const-string v4, "continuous-picture"

    .line 281
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "focus-mode"

    const-string v4, "continuous-picture"

    .line 283
    invoke-virtual {v3, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PassThroughCameraHelper"

    const-string v4, "focus-mode set: continuous-picture"

    .line 284
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const-string v2, "PassThroughCameraHelper"

    const-string v4, "focus-mode set: none supported"

    .line 288
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const-string v2, "PassThroughCameraHelper"

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera.getVideoStabilization: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PassThroughCameraHelper"

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera.ois-supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ois-supported"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PassThroughCameraHelper"

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera.ois: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ois"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    const-string v2, "true"

    const-string v4, "ois-supported"

    .line 298
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "ois"

    const-string v4, "center"

    .line 300
    invoke-virtual {v3, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v2, "PassThroughCameraHelper"

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera.ois: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ois"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 307
    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->currentTexId:I

    invoke-direct {v2, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cameraTexture:Landroid/graphics/SurfaceTexture;

    .line 309
    iget-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 310
    iget-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 312
    iget-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 314
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v2

    iput v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x428c0000    # 70.0f

    .line 320
    iget v4, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 323
    iget v3, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    float-to-double v3, v3

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    iget v9, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v9, v9

    float-to-double v9, v9

    div-double/2addr v3, v9

    iget v9, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    float-to-double v9, v9

    mul-double v3, v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    div-double/2addr v3, v7

    mul-double v3, v3, v5

    double-to-float v3, v3

    mul-float v3, v3, v2

    iput v3, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovV:F

    const-string v2, "PassThroughCameraHelper"

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FovH: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " FovV: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovV:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "PassThroughCameraHelper"

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCameraBlocking Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->stopPreviewBlocking()V

    .line 333
    :goto_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private stopPreviewBlocking()V
    .locals 6

    .line 338
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->this$0:Lcom/oculus/vrapi/PassThroughCameraHelper;

    invoke-static {v0}, Lcom/oculus/vrapi/PassThroughCameraHelper;->access$600(Lcom/oculus/vrapi/PassThroughCameraHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :try_start_1
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "PassThroughCameraHelper"

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPreviewBlocking Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 354
    iput-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 360
    iput-object v2, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cameraTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    const/4 v1, 0x0

    .line 363
    iput v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovH:F

    .line 364
    iput v1, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->fovV:F

    .line 365
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    const-string p2, "PassThroughCameraHelper"

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->stopPreviewBlocking()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->startPreviewBlocking()V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->cancelPreview:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 138
    invoke-direct {p0, v0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->sleep(I)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/oculus/vrapi/PassThroughCameraHelper$CameraThread;->stopPreviewBlocking()V

    return-void
.end method
