.class public abstract Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
.super Ljava/lang/Object;
.source "AbstractLiveStreamingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;
    }
.end annotation


# instance fields
.field private mCommentsVisible:Z

.field private mIsInitialized:Z

.field private mIsLivestreaming:Z

.field private mIsPaused:Z

.field protected final mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

.field private final mStreamingType:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mStreamingType:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    .line 46
    iput-object p1, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    .line 47
    return-void
.end method

.method public static getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v1, "streaming_result"

    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "streaming_result_string"

    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v0
.end method


# virtual methods
.method public getCommentsVisible()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mCommentsVisible:Z

    return v0
.end method

.method public getIsInitialized()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mIsInitialized:Z

    return v0
.end method

.method public getIsLivestreaming()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mIsLivestreaming:Z

    return v0
.end method

.method public getIsPaused()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mIsPaused:Z

    return v0
.end method

.method public getType()Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mStreamingType:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    return-object v0
.end method

.method public abstract handleUnsupportedApplication(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract initialize(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public onWebRTCError()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public setCommentsVisible(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mCommentsVisible:Z

    .line 79
    return-void
.end method

.method public setIsInitialized(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mIsInitialized:Z

    .line 55
    return-void
.end method

.method public setIsLivestreaming(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mIsLivestreaming:Z

    .line 63
    return-void
.end method

.method public setIsPaused(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->mIsPaused:Z

    .line 71
    return-void
.end method

.method public abstract startStreaming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract stopStreaming(Landroid/content/Context;)Landroid/os/Bundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract updateCommentVisibility(Landroid/content/Context;Z)V
.end method
