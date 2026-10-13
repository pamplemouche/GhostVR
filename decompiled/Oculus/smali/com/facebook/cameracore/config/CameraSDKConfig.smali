.class public Lcom/facebook/cameracore/config/CameraSDKConfig;
.super Ljava/lang/Object;
.source "CameraSDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;
    }
.end annotation


# instance fields
.field private final mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

.field private final mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;


# direct methods
.method private constructor <init>(Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;->access$000(Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;)Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraSDKConfig;->mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    .line 60
    invoke-static {p1}, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;->access$100(Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;)Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraSDKConfig;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;Lcom/facebook/cameracore/config/CameraSDKConfig$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/config/CameraSDKConfig;-><init>(Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getAudioBufferMultiplier()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraSDKConfig;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    invoke-interface {v0}, Lcom/facebook/cameracore/config/CameraCoreContextualUtil;->getAudioBufferMultiplier()I

    move-result v0

    return v0
.end method
