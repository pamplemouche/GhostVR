.class Lcom/oculus/horizon/events/SubscribedEventsFragment$2;
.super Lcom/oculus/horizon/common/UICallback;
.source "SubscribedEventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/SubscribedEventsFragment;->fetchSubscribedEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/events/api/SubscribedEventsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/SubscribedEventsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;->this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;->this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->setStatusLoadFailure()V

    .line 97
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/events/api/SubscribedEventsResponse;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;->this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/events/SubscribedEventsFragment;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    check-cast v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;->setResponse(Lcom/oculus/horizon/events/api/SubscribedEventsResponse;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;->this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->setStatusLoadSuccess()V

    .line 86
    iget-object v0, p1, Lcom/oculus/horizon/events/api/SubscribedEventsResponse;->user:Lcom/oculus/horizon/events/api/SubscribedEventsResponse$User;

    iget-object v0, v0, Lcom/oculus/horizon/events/api/SubscribedEventsResponse$User;->subscribed_events:Lcom/oculus/horizon/events/api/SubscribedEventsResponse$SubscribedEvents;

    iget-object v0, v0, Lcom/oculus/horizon/events/api/SubscribedEventsResponse$SubscribedEvents;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;->this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->access$000(Lcom/oculus/horizon/events/SubscribedEventsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;->this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->access$000(Lcom/oculus/horizon/events/SubscribedEventsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lcom/oculus/horizon/events/api/SubscribedEventsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;->onResponse(Lcom/oculus/horizon/events/api/SubscribedEventsResponse;)V

    return-void
.end method
