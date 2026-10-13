.class Lcom/oculus/horizon/events/EventDetailsFragment$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "EventDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/EventDetailsFragment;->fetchEventDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/events/api/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/EventDetailsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/EventDetailsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oculus/horizon/events/EventDetailsFragment$1;->this$0:Lcom/oculus/horizon/events/EventDetailsFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/oculus/horizon/events/EventDetailsFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/events/EventDetailsFragment$1;->this$0:Lcom/oculus/horizon/events/EventDetailsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/EventDetailsFragment;->setStatusLoadFailure()V

    .line 95
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/events/api/Event;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/events/EventDetailsFragment$1;->this$0:Lcom/oculus/horizon/events/EventDetailsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/events/EventDetailsFragment;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    check-cast v0, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;->setResponse(Lcom/oculus/horizon/events/api/Event;)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/events/EventDetailsFragment$1;->this$0:Lcom/oculus/horizon/events/EventDetailsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/EventDetailsFragment;->setStatusLoadSuccess()V

    .line 89
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/oculus/horizon/events/api/Event;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/events/EventDetailsFragment$1;->onResponse(Lcom/oculus/horizon/events/api/Event;)V

    return-void
.end method
