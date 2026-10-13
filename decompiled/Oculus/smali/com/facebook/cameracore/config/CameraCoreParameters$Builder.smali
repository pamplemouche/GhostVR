.class public Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;
.super Ljava/lang/Object;
.source "CameraCoreParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/config/CameraCoreParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDisableFrameProcessors:Z

.field private mEchoCancellationEnabled:Z

.field private mNativePhotoCaptureSetting:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

.field private mUseCenterWeightedMetering:Z

.field private mUseFlash:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->OFF:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->mNativePhotoCaptureSetting:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->mNativePhotoCaptureSetting:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->mUseCenterWeightedMetering:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->mUseFlash:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->mEchoCancellationEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->mDisableFrameProcessors:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/facebook/cameracore/config/CameraCoreParameters;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/facebook/cameracore/config/CameraCoreParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cameracore/config/CameraCoreParameters;-><init>(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;Lcom/facebook/cameracore/config/CameraCoreParameters$1;)V

    return-object v0
.end method
