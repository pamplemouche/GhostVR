.class public Lcom/facebook/cameracore/config/CameraCoreParameters;
.super Ljava/lang/Object;
.source "CameraCoreParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;,
        Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;
    }
.end annotation


# instance fields
.field private final mDisableFrameProcessors:Z

.field private final mEchoCancellationEnabled:Z

.field private final mNativePhotoCaptureSetting:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

.field private final mUseCenterWeightedMetering:Z

.field private final mUseFlash:Z


# direct methods
.method private constructor <init>(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->access$000(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters;->mNativePhotoCaptureSetting:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    .line 53
    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->access$100(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters;->mUseCenterWeightedMetering:Z

    .line 55
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters;->mNativePhotoCaptureSetting:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    sget-object v1, Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;->OFF:Lcom/facebook/cameracore/config/CameraCoreParameters$NativeCaptureSetting;

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->access$200(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters;->mUseFlash:Z

    .line 56
    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->access$300(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters;->mEchoCancellationEnabled:Z

    .line 57
    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;->access$400(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters;->mDisableFrameProcessors:Z

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;Lcom/facebook/cameracore/config/CameraCoreParameters$1;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/config/CameraCoreParameters;-><init>(Lcom/facebook/cameracore/config/CameraCoreParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public shouldEnableEchoCancellation()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/facebook/cameracore/config/CameraCoreParameters;->mEchoCancellationEnabled:Z

    return v0
.end method
