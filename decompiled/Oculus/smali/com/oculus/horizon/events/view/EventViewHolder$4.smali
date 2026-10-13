.class Lcom/oculus/horizon/events/view/EventViewHolder$4;
.super Ljava/lang/Object;
.source "EventViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/view/EventViewHolder;->bindSubscribeOrJoinButton(Lcom/oculus/horizon/events/api/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

.field final synthetic val$application:Lcom/oculus/horizon/events/api/Event$Application;

.field final synthetic val$event:Lcom/oculus/horizon/events/api/Event;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/view/EventViewHolder;Lcom/oculus/horizon/events/api/Event;Lcom/oculus/horizon/events/api/Event$Application;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->val$event:Lcom/oculus/horizon/events/api/Event;

    iput-object p3, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->val$application:Lcom/oculus/horizon/events/api/Event$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/events/view/EventViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->val$event:Lcom/oculus/horizon/events/api/Event;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->subscribe(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/events/view/EventViewHolder;->access$200(Lcom/oculus/horizon/events/view/EventViewHolder;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->val$application:Lcom/oculus/horizon/events/api/Event$Application;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/Event$Application;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getAppInternalById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/library/model/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    new-instance v0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->val$application:Lcom/oculus/horizon/events/api/Event$Application;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/Event$Application;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->val$application:Lcom/oculus/horizon/events/api/Event$Application;

    iget-object v2, v2, Lcom/oculus/horizon/events/api/Event$Application;->display_name:Ljava/lang/String;

    new-instance v3, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

    iget-object v4, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->val$event:Lcom/oculus/horizon/events/api/Event;

    iget-object v4, v4, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    sget-object v5, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;->VIA_SUBSCRIBE:Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;-><init>(Ljava/lang/String;Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;Z)V

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;)V

    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$4;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/events/view/EventViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    .line 305
    invoke-virtual {v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->show(Landroidx/fragment/app/FragmentManager;)V

    .line 307
    :cond_1
    return-void
.end method
