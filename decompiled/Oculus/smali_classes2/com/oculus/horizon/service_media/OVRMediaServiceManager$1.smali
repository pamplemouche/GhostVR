.class Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;
.super Ljava/lang/Object;
.source "OVRMediaServiceManager.java"

# interfaces
.implements Lcom/oculus/horizon/cast/CastManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/OVRMediaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    new-instance v1, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    .line 113
    invoke-virtual {v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->safeGetPPM()Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/oculus/horizon/service_media/CastLiveStreamingManager;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;)V

    .line 112
    invoke-static {v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$002(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;)Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v1, "microphone_status"

    sget-object v2, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->MICROPHONE_OFF:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    .line 117
    invoke-virtual {v2}, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->getValue()I

    move-result v2

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleLivestreamingStartEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 119
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$000(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    .line 124
    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$000(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getType()Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopLivestreamingEvent()Landroid/os/Bundle;

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;->this$0:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->access$100(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V

    goto :goto_0
.end method
