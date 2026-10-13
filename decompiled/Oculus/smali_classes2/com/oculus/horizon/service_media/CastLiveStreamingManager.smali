.class public Lcom/oculus/horizon/service_media/CastLiveStreamingManager;
.super Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
.source "CastLiveStreamingManager.java"


# instance fields
.field private final mEndpoint:Ljava/lang/String;

.field private final mSessionId:Ljava/lang/String;

.field private final mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;)V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;)V

    .line 23
    iput-object p2, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mEndpoint:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mSessionId:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

    .line 26
    return-void
.end method


# virtual methods
.method public handleUnsupportedApplication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->setIsLivestreaming(Z)V

    .line 47
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mEndpoint:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v3, v3, Lcom/oculus/horizon/cast/VideoSpec;->mHeight:I

    iget-object v4, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v4, v4, Lcom/oculus/horizon/cast/VideoSpec;->mWidth:I

    iget-object v5, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v5, v5, Lcom/oculus/horizon/cast/VideoSpec;->mFps:I

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->initializeForCastingWithVideoSpec(Ljava/lang/String;Ljava/lang/String;III)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->setIsInitialized(Z)V

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public startStreaming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startLiveStreaming(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->setIsLivestreaming(Z)V

    .line 41
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public stopStreaming(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopLiveStreaming()V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;->setIsLivestreaming(Z)V

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public updateCommentVisibility(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
