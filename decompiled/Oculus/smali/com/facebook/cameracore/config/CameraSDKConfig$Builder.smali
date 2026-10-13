.class public Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;
.super Ljava/lang/Object;
.source "CameraSDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/config/CameraSDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

.field private final mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;


# direct methods
.method public constructor <init>(Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;Lcom/facebook/cameracore/config/CameraCoreContextualUtil;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;->mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    .line 71
    iput-object p2, p0, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;)Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;->mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;)Lcom/facebook/cameracore/config/CameraCoreContextualUtil;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/cameracore/config/CameraSDKConfig;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/facebook/cameracore/config/CameraSDKConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cameracore/config/CameraSDKConfig;-><init>(Lcom/facebook/cameracore/config/CameraSDKConfig$Builder;Lcom/facebook/cameracore/config/CameraSDKConfig$1;)V

    return-object v0
.end method
