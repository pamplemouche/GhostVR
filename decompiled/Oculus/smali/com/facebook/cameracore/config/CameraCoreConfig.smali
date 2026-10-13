.class public Lcom/facebook/cameracore/config/CameraCoreConfig;
.super Ljava/lang/Object;
.source "CameraCoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;
    }
.end annotation


# instance fields
.field private final mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

.field private final mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

.field private final mSDKConfig:Lcom/facebook/cameracore/config/CameraSDKConfig;


# direct methods
.method private constructor <init>(Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;)V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;->access$000(Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;)Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    .line 135
    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;->access$100(Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;)Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    .line 137
    new-instance v0, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;

    iget-object v1, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    iget-object v2, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    invoke-direct {v0, v1, v2}, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;-><init>(Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;Lcom/facebook/cameracore/config/CameraCoreContextualUtil;)V

    invoke-virtual {v0}, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;->build()Lcom/facebook/cameracore/config/CameraSDKConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mSDKConfig:Lcom/facebook/cameracore/config/CameraSDKConfig;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;Lcom/facebook/cameracore/config/CameraCoreConfig$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/config/CameraCoreConfig;-><init>(Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getEncondingProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    invoke-interface {v0}, Lcom/facebook/cameracore/config/CameraCoreContextualUtil;->getEncodingProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKConfig()Lcom/facebook/cameracore/config/CameraSDKConfig;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mSDKConfig:Lcom/facebook/cameracore/config/CameraSDKConfig;

    return-object v0
.end method

.method public shouldUseCamcorderAudioSource()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    invoke-interface {v0}, Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;->shouldUseCamcorderAudioSource()Z

    move-result v0

    return v0
.end method

.method public shouldUseCustomVideoRecorder()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    invoke-interface {v0}, Lcom/facebook/cameracore/config/CameraCoreContextualUtil;->shouldUseCustomVideoRecorder()Z

    move-result v0

    return v0
.end method
