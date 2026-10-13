.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;
.super Ljava/lang/Object;
.source "LiveStreamingSessionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 231
    invoke-static {}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mStatusChecker.run: %s"

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v2}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getStatus()Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getStatus()Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->CONNECTED:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$400(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getVideoStreamingParticipants()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    const-string v2, "participant_ids"

    .line 235
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$500(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;[J)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$800(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    .line 241
    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$700(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 240
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void
.end method
