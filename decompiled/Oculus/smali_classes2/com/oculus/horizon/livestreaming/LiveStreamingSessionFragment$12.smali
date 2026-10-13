.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LiveStreamingSessionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->cancelPartyCallRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/livestreaming/api/PartyCallCancelResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ERROR:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 711
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 712
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/livestreaming/api/PartyCallCancelResponse;)V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->CANCELLED:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 705
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 706
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 701
    check-cast p1, Lcom/oculus/horizon/livestreaming/api/PartyCallCancelResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;->onResponse(Lcom/oculus/horizon/livestreaming/api/PartyCallCancelResponse;)V

    return-void
.end method
