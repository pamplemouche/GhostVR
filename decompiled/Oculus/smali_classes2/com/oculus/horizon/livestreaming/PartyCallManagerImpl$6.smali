.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PartyCallManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->refreshPartyStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/parties/api/PartyStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ERROR:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 316
    invoke-static {}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error refreshing party status"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/parties/api/PartyStatusResponse;)V
    .locals 3

    .prologue
    .line 290
    invoke-static {}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Party updated"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    if-nez p1, :cond_1

    .line 293
    invoke-static {}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PartyStatusResponse was null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p1, Lcom/oculus/horizon/parties/api/PartyStatusResponse;->user:Lcom/oculus/horizon/parties/api/PartyStatusResponse$User;

    if-eqz v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iget-object v1, p1, Lcom/oculus/horizon/parties/api/PartyStatusResponse;->user:Lcom/oculus/horizon/parties/api/PartyStatusResponse$User;

    iget-object v1, v1, Lcom/oculus/horizon/parties/api/PartyStatusResponse$User;->current_party:Lcom/oculus/horizon/api/common/Party;

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$302(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;Lcom/oculus/horizon/api/common/Party;)Lcom/oculus/horizon/api/common/Party;

    .line 299
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$300(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)Lcom/oculus/horizon/api/common/Party;

    move-result-object v0

    if-nez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$400(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;Z)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$500(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$PartyStatusObserver;

    .line 305
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$300(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)Lcom/oculus/horizon/api/common/Party;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$PartyStatusObserver;->onPartyUpdated(Lcom/oculus/horizon/api/common/Party;)V

    goto :goto_1

    .line 309
    :cond_3
    invoke-static {}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PartyStatusResponse: %s did not return a valid user"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 287
    check-cast p1, Lcom/oculus/horizon/parties/api/PartyStatusResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$6;->onResponse(Lcom/oculus/horizon/parties/api/PartyStatusResponse;)V

    return-void
.end method
