.class Lcom/oculus/horizon/events/EventsFragment$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/EventsFragment;->fetchFeaturedEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/events/api/FeaturedEventsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/EventsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/EventsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/events/EventsFragment$1;->this$0:Lcom/oculus/horizon/events/EventsFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/oculus/horizon/events/EventsFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsFragment$1;->this$0:Lcom/oculus/horizon/events/EventsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/EventsFragment;->setStatusLoadFailure()V

    .line 91
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/events/api/FeaturedEventsResponse;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsFragment$1;->this$0:Lcom/oculus/horizon/events/EventsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/events/EventsFragment;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    check-cast v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->setResponse(Lcom/oculus/horizon/events/api/FeaturedEventsResponse;)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsFragment$1;->this$0:Lcom/oculus/horizon/events/EventsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/EventsFragment;->setStatusLoadSuccess()V

    .line 80
    iget-object v0, p1, Lcom/oculus/horizon/events/api/FeaturedEventsResponse;->featured_events:Lcom/oculus/horizon/events/api/FeaturedEventsResponse$FeaturedEvents;

    iget-object v0, v0, Lcom/oculus/horizon/events/api/FeaturedEventsResponse$FeaturedEvents;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsFragment$1;->this$0:Lcom/oculus/horizon/events/EventsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/events/EventsFragment;->access$000(Lcom/oculus/horizon/events/EventsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsFragment$1;->this$0:Lcom/oculus/horizon/events/EventsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/events/EventsFragment;->access$000(Lcom/oculus/horizon/events/EventsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/oculus/horizon/events/api/FeaturedEventsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/events/EventsFragment$1;->onResponse(Lcom/oculus/horizon/events/api/FeaturedEventsResponse;)V

    return-void
.end method
