.class public Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;
.super Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
.source "PartyVideoStreamingManager.java"


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->PARTY:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;)V

    .line 14
    return-void
.end method


# virtual methods
.method public handleUnsupportedApplication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;->setIsLivestreaming(Z)V

    .line 46
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;->setIsInitialized(Z)V

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public startStreaming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startPartyVideoStreaming(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;->setIsLivestreaming(Z)V

    .line 28
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public stopStreaming(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopPartyVideoStreaming()V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCommentVisibility(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p2}, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;->setCommentsVisible(Z)V

    .line 34
    return-void
.end method
