.class public Lorg/chromium/media/VideoCaptureFactory;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static createVideoCapture(IJ)Lorg/chromium/media/VideoCapture;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lt51;

    invoke-direct {v0, p0, p1, p2}, Lt51;-><init>(IJ)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ls51;

    invoke-direct {v0, p0, p1, p2}, Ls51;-><init>(IJ)V

    return-object v0
.end method

.method public static getCaptureApiType(I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lt51;->a(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-static {p0}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x7

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    const/16 v1, 0x9

    :goto_1
    return v1
.end method

.method public static getCaptureFormatFramerate(Lorg/chromium/media/VideoCaptureFormat;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->c:I

    return p0
.end method

.method public static getCaptureFormatHeight(Lorg/chromium/media/VideoCaptureFormat;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->b:I

    return p0
.end method

.method public static getCaptureFormatPixelFormat(Lorg/chromium/media/VideoCaptureFormat;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->d:I

    return p0
.end method

.method public static getCaptureFormatWidth(Lorg/chromium/media/VideoCaptureFormat;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->a:I

    return p0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    const-string v1, "front"

    const-string v2, "back"

    const/4 v3, 0x0

    const-string v4, ", facing "

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p0}, Lt51;->a(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 5
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 6
    :cond_2
    invoke-static {p0}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera2 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 9
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    return-object v3
.end method

.method public static getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 19

    .line 1
    invoke-static/range {p0 .. p0}, Lorg/chromium/media/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static/range {p0 .. p0}, Lt51;->b(I)[Lorg/chromium/media/VideoCaptureFormat;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static/range {p0 .. p0}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_6

    .line 4
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget v6, v1, v4

    if-ne v6, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 7
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 9
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 10
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 11
    array-length v4, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_8

    aget v7, v2, v6

    .line 12
    invoke-virtual {v0, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_5

    .line 13
    :cond_4
    array-length v9, v8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_7

    aget-object v11, v8, v10

    const-wide/16 v12, 0x0

    if-eqz v5, :cond_6

    .line 14
    invoke-virtual {v0, v7, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-nez v18, :cond_5

    goto :goto_4

    :cond_5
    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v14, v14

    div-double/2addr v12, v14

    .line 15
    :cond_6
    :goto_4
    new-instance v14, Lorg/chromium/media/VideoCaptureFormat;

    .line 16
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    double-to-int v12, v12

    invoke-direct {v14, v15, v11, v12, v7}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    .line 17
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 18
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/VideoCaptureFormat;

    :goto_6
    return-object v0
.end method

.method public static getFacingMode(I)I
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p0}, Lt51;->a(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    :goto_0
    return v3

    .line 4
    :cond_3
    invoke-static {p0}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_6

    if-eq p0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method public static getNumberOfCameras()I
    .locals 3

    .line 1
    sget v0, Lu51;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    sput v0, Lu51;->a:I

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cr.media"

    const-string v2, "Missing android.permission.CAMERA permission, no system camera available."

    .line 9
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ls51;->c()I

    move-result v0

    sput v0, Lu51;->a:I

    .line 11
    :cond_1
    :goto_0
    sget v0, Lu51;->a:I

    return v0
.end method

.method public static isLegacyOrDeprecatedDevice(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
