.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;
.super Ljava/lang/Object;
.source "LiveStreamingSessionFragment.java"

# interfaces
.implements Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;


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
    .line 290
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchDown()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1800(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1702(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;I)I

    .line 295
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1800(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 296
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0, v2}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1900(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public onTouchUp()V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1900(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Z)V

    .line 304
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1800(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v2}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1700(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 306
    :cond_0
    return-void
.end method
