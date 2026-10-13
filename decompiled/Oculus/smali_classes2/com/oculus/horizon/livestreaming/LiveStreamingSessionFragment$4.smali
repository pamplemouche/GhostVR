.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$4;
.super Ljava/lang/Object;
.source "LiveStreamingSessionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 247
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$4;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$18;->$SwitchMap$com$oculus$horizon$livestreaming$model$LiveStreamingSessionStatus:[I

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$4;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getStatus()Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$4;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$4;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$900(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1000(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$4;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$1100(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
