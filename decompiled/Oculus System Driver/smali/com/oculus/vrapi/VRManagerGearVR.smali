.class Lcom/oculus/vrapi/VRManagerGearVR;
.super Lcom/oculus/vrapi/VRManagerInterface;
.source "VRManagerGearVR.java"


# static fields
.field private static HANDEDNESS_NAME:Ljava/lang/String; = "selected_hand"

.field private static SCENARIO_CHINA:I = 0x2

.field private static SCENARIO_GLOBAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VRManagerGearVR"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/oculus/vrapi/VRManagerInterface;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static connect(Landroid/content/Context;)Lcom/oculus/vrapi/VRManagerInterface;
    .locals 2

    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lcom/oculus/vrapi/VRManagerGearVR;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/VRManagerGearVR;-><init>(Landroid/content/Context;)V

    return-object v0

    :catch_0
    return-object v0
.end method

.method private getCalibrationDataFromURI(Landroid/net/Uri;)[B
    .locals 4

    .line 250
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/16 v1, 0x1000

    .line 255
    new-array v1, v1, [B

    .line 257
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 259
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "VRManagerGearVR"

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCalibrationDataFromURI failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 269
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private getDeviceRegion()Ljava/lang/String;
    .locals 3

    const-string v0, "replace_samsung"

    .line 384
    invoke-direct {p0, v0}, Lcom/oculus/vrapi/VRManagerGearVR;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Japan"

    return-object v0

    .line 392
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-01G"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SCL24"

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SC-05G"

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SC-04G"

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SCV31"

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "404SC"

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "501SC"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_scenario"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/oculus/vrapi/GearVRProviderHelper$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v0, v0, -0x101

    .line 407
    sget v1, Lcom/oculus/vrapi/VRManagerGearVR;->SCENARIO_CHINA:I

    if-ne v0, v1, :cond_2

    const-string v0, "China"

    return-object v0

    :cond_2
    const-string v0, "Unspecified"

    return-object v0

    :cond_3
    :goto_0
    const-string v0, "Japan"

    return-object v0
.end method

.method private static getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodError;
        }
    .end annotation

    const-string v0, "vr"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IVRManager;

    if-eqz p0, :cond_0

    return-object p0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "No gear vr service"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHmtDeviceModel()Ljava/lang/String;
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hmt_device_model"

    const-string v2, "unknown"

    invoke-static {v0, v1, v2}, Lcom/oculus/vrapi/GearVRProviderHelper$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHmtSerialNumber()Ljava/lang/String;
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vr_serial"

    const-string v2, "unknown"

    invoke-static {v0, v1, v2}, Lcom/oculus/vrapi/GearVRProviderHelper$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IVRManager;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    const-string v1, "VRManagerGearVR"

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "VRManagerGearVR"

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSystemOption exception (name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    const-string p1, "VRManagerGearVR"

    const-string v1, "Thread priority security exception"

    .line 361
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public acquirePerformanceLock(II)Z
    .locals 5

    const/4 v0, 0x0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IVRManager;->SetVrClocks(Ljava/lang/String;II)[I

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 188
    :cond_0
    aget v2, v1, v0

    const/4 v3, 0x1

    if-gtz v2, :cond_1

    aget v2, v1, v3

    if-gtz v2, :cond_1

    const-string v2, "(cpu:%d=%s,gpu:%d=%s)"

    const/4 v4, 0x4

    .line 190
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    aget p1, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    aget p2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VRManagerGearVR"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPU and GPU clocks returned invalid values for the given levels! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_1
    return v3

    :catch_0
    const-string p1, "VRManagerGearVR"

    const-string p2, "Thread priority security exception"

    .line 207
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    const-string p1, "VRManagerGearVR"

    const-string p2, "Thread priority API does not exist"

    .line 202
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCPUClockLevelFrequencies(I)[I
    .locals 1

    .line 543
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCPUMinMaxLevels()[I
    .locals 5

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IVRManager;->return2EnableFreqLev()[I

    move-result-object v1

    .line 131
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    .line 133
    new-array v3, v2, [I

    const/4 v4, 0x0

    aget v2, v1, v2

    aput v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x3

    aget v1, v1, v4

    aput v1, v3, v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_0
    return-object v0

    :catch_0
    const-string v1, "VRManagerGearVR"

    const-string v2, "Thread priority security exception"

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    return-object v0
.end method

.method public getCalibrationData(Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;)[B
    .locals 3

    const-string v0, "VRManagerGearVR"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessing calibration data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->DISTORTION_MESH:Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;

    if-ne p1, v0, :cond_0

    const-string p1, "content://com.samsung.android.hmt.vrsvc.distortion"

    .line 279
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 278
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/VRManagerGearVR;->getCalibrationDataFromURI(Landroid/net/Uri;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "VRManagerGearVR"

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calibration \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/vrapi/VRManagerInterface$CalibrationType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getControllerHandedness()Ljava/lang/String;
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrapi/VRManagerGearVR;->HANDEDNESS_NAME:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-static {v0, v1, v2}, Lcom/oculus/vrapi/GearVRProviderHelper$Public;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceClass()Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;
    .locals 1

    .line 576
    sget-object v0, Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;->GEAR_VR:Lcom/oculus/vrapi/VRManagerInterface$DeviceClass;

    return-object v0
.end method

.method public getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "device_region"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/oculus/vrapi/VRManagerGearVR;->getDeviceRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "hmt_device_model"

    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/oculus/vrapi/VRManagerGearVR;->getHmtDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "hmt_serial"

    .line 439
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    invoke-direct {p0}, Lcom/oculus/vrapi/VRManagerGearVR;->getHmtSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "handedness"

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {p0}, Lcom/oculus/vrapi/VRManagerGearVR;->getControllerHandedness()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "do_not_disturb"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    invoke-virtual {p0}, Lcom/oculus/vrapi/VRManagerGearVR;->getDoNotDisturbMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "global_cac"

    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "0"

    return-object v0

    :cond_5
    const-string v0, "vr_eyebuffer_width"

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vr_eyebuffer_width"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/oculus/vrapi/GearVRProviderHelper$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, "vr_eyebuffer_height"

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 467
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vr_eyebuffer_height"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/oculus/vrapi/GearVRProviderHelper$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "device_default_refresh_rate"

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "60.0f"

    return-object v0

    .line 475
    :cond_8
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/VRManagerGearVR;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VRManagerGearVR"

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceProperty exception (name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisplayBrightness()I
    .locals 2

    const-string v0, "bright"

    .line 288
    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/VRManagerGearVR;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x32

    return v0
.end method

.method public getDisplayParams()Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;
    .locals 3

    .line 512
    new-instance v0, Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;

    invoke-direct {v0}, Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;-><init>()V

    const/4 v1, 0x0

    .line 513
    iput v1, v0, Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;->scanoutDirection:I

    .line 514
    iput v1, v0, Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;->shutterType:I

    const/4 v1, 0x6

    .line 518
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, v0, Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;->swapTimingFrontBuffer:[F

    .line 524
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, v0, Lcom/oculus/vrapi/VRManagerInterface$DisplayParams;->swapTimingSwappedBuffer:[F

    return-object v0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public getDoNotDisturbMode()Ljava/lang/String;
    .locals 1

    const-string v0, "do_not_disturb_mode"

    .line 313
    invoke-direct {p0, v0}, Lcom/oculus/vrapi/VRManagerGearVR;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGPUClockLevelFrequencies()[I
    .locals 2

    .line 548
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGPUMinMaxLevels()[I
    .locals 5

    const/4 v0, 0x0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IVRManager;->return2EnableFreqLev()[I

    move-result-object v1

    .line 157
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    .line 159
    new-array v2, v2, [I

    const/4 v3, 0x0

    aget v4, v1, v3

    aput v4, v2, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v2, v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    return-object v0

    :catch_0
    const-string v1, "VRManagerGearVR"

    const-string v2, "Thread priority security exception"

    .line 172
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    return-object v0
.end method

.method public getPowerLevelState()I
    .locals 3

    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IVRManager;->GetPowerLevelState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string v1, "VRManagerGearVR"

    const-string v2, "Thread priority security exception"

    .line 237
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    return v0
.end method

.method public getSupportedDisplayRefreshRates(I)[I
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 555
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 559
    new-array p1, p1, [I

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p1, v1

    return-object p1

    :cond_0
    const-string v0, "VRManagerGearVR"

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVrServiceVersion()I
    .locals 3

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.hmt.vrsvc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 534
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "VRManagerGearVR"

    const-string v1, "Failed to get VR Service version!"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public hasVrPermissions()Z
    .locals 3

    const/4 v0, 0x0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IVRManager;->return2EnableFreqLev()[I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v1, "VRManagerGearVR"

    const-string v2, "Thread priority security exception!"

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    const-string v1, "VRManagerGearVR"

    const-string v2, "Thread priority API does not exist!"

    .line 82
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public releasePerformanceLock()V
    .locals 2

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IVRManager;->relFreq(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "VRManagerGearVR"

    const-string v1, "Thread priority security exception"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setControllerHandedness(Ljava/lang/String;)V
    .locals 2

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrapi/VRManagerGearVR;->HANDEDNESS_NAME:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/oculus/vrapi/GearVRProviderHelper$Public;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "handedness"

    .line 489
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p0, p2}, Lcom/oculus/vrapi/VRManagerGearVR;->setControllerHandedness(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v1, "do_not_disturb"

    .line 494
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {p0, p2}, Lcom/oculus/vrapi/VRManagerGearVR;->setDoNotDisturbMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    const-string p2, "VRManagerGearVR"

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceProperty property not found (name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception p2

    const-string v1, "VRManagerGearVR"

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceProperty exception (name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setDisplayBrightness(I)V
    .locals 2

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v0

    const-string v1, "bright"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/app/IVRManager;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VRManagerGearVR"

    const-string v0, "Thread priority security exception"

    .line 307
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDisplayRefreshRate(IF)Z
    .locals 0

    const-string p1, "VRManagerGearVR"

    const-string p2, "changing display refresh-rate not supported"

    .line 570
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setDoNotDisturbMode(Ljava/lang/String;)V
    .locals 2

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v0

    const-string v1, "do_not_disturb_mode"

    invoke-interface {v0, v1, p1}, Landroid/app/IVRManager;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VRManagerGearVR"

    const-string v0, "setDoNotDisturbMode: security exception"

    .line 325
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPowerSaveMode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSchedFifo(II)Z
    .locals 4

    const-string v0, "VRManagerGearVR"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSchedFifo tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oculus/vrapi/VRManagerGearVR;->getGearVRManager(Landroid/content/Context;)Landroid/app/IVRManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrapi/VRManagerGearVR;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v1, v2, v3, p1, p2}, Landroid/app/IVRManager;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VRManagerGearVR"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VRManager set thread priority to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "VRManagerGearVR"

    const-string p2, "VRManager failed to set thread priority"

    .line 104
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const-string p2, "VRManagerGearVR"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    const-string p1, "VRManagerGearVR"

    const-string p2, "Thread priority security exception"

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_2
    const-string p1, "VRManagerGearVR"

    const-string p2, "Thread priority API does not exist"

    .line 110
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
