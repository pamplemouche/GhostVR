.class public Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;
.super Ljava/lang/Object;
.source "CameraCoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/config/CameraCoreConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

.field private final mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/facebook/cameracore/config/DefaultCameraCoreExperimentUtil;

    invoke-direct {v0}, Lcom/facebook/cameracore/config/DefaultCameraCoreExperimentUtil;-><init>()V

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;->mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    .line 167
    new-instance v0, Lcom/facebook/cameracore/config/DefaultCameraCoreContextualUtil;

    invoke-direct {v0}, Lcom/facebook/cameracore/config/DefaultCameraCoreContextualUtil;-><init>()V

    iput-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;)Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;->mExperimentUtil:Lcom/facebook/cameracore/config/CameraCoreExperimentUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;)Lcom/facebook/cameracore/config/CameraCoreContextualUtil;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;->mContextualUtil:Lcom/facebook/cameracore/config/CameraCoreContextualUtil;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/cameracore/config/CameraCoreConfig;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/facebook/cameracore/config/CameraCoreConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cameracore/config/CameraCoreConfig;-><init>(Lcom/facebook/cameracore/config/CameraCoreConfig$Builder;Lcom/facebook/cameracore/config/CameraCoreConfig$1;)V

    return-object v0
.end method
