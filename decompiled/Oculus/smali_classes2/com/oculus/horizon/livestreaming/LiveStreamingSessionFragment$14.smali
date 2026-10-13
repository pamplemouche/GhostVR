.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LiveStreamingSessionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->leaveParty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/parties/api/PartyLeaveResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

.field final synthetic val$fragment:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;->val$fragment:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ERROR:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 832
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/parties/api/PartyLeaveResponse;)V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;->val$fragment:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;->val$fragment:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->unregisterPartyStatusObserver(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$PartyStatusObserver;)V

    .line 827
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 821
    check-cast p1, Lcom/oculus/horizon/parties/api/PartyLeaveResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;->onResponse(Lcom/oculus/horizon/parties/api/PartyLeaveResponse;)V

    return-void
.end method
