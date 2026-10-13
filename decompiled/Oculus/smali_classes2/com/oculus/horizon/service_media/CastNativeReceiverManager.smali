.class public Lcom/oculus/horizon/service_media/CastNativeReceiverManager;
.super Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
.source "CastNativeReceiverManager.java"


# instance fields
.field private final mEndpoint:Ljava/lang/String;

.field private final mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

.field private final mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;)V

    .line 25
    iput-object p2, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mEndpoint:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

    .line 27
    iput-object p4, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    .line 28
    return-void
.end method


# virtual methods
.method public handleUnsupportedApplication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->setIsLivestreaming(Z)V

    .line 58
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mEndpoint:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v3, v3, Lcom/oculus/horizon/cast/VideoSpec;->mWidth:I

    iget-object v4, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v4, v4, Lcom/oculus/horizon/cast/VideoSpec;->mHeight:I

    iget-object v5, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mVideoSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v5, v5, Lcom/oculus/horizon/cast/VideoSpec;->mFps:I

    const/16 v6, 0x1388

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->initializeForCastingNativeReceiver(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->setIsInitialized(Z)V

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWebRTCError()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->stopCast()V

    .line 43
    return-void
.end method

.method public startStreaming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startLiveStreaming(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->setIsLivestreaming(Z)V

    .line 52
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public stopMultiWaySender()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopLiveStreaming()V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->setIsLivestreaming(Z)V

    .line 82
    return-void
.end method

.method public stopStreaming(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->stopCast()V

    .line 74
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;->stopMultiWaySender()V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public updateCommentVisibility(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
