.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LiveStreamingSessionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->sendPartyCallRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/livestreaming/api/PartyCallSendResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 611
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ERROR:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 612
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to send live streaming request %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v4, v4, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v4, v4, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_subcode:I

    .line 616
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 613
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :cond_0
    const v0, 0x1cdba6

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_error_dialog_party_full:I

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;I)V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_error_dialog_unknown:I

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;I)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/livestreaming/api/PartyCallSendResponse;)V
    .locals 4

    .prologue
    .line 601
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    iget-object v1, p1, Lcom/oculus/horizon/livestreaming/api/PartyCallSendResponse;->request_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$902(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2100(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2100(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    .line 605
    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2200(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v2}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getCallRingingTimeoutQEValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 604
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 598
    check-cast p1, Lcom/oculus/horizon/livestreaming/api/PartyCallSendResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;->onResponse(Lcom/oculus/horizon/livestreaming/api/PartyCallSendResponse;)V

    return-void
.end method
