.class Lcom/oculus/horizon/events/view/EventViewHolder$2;
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
.method constructor <init>(Lcom/oculus/horizon/events/view/EventViewHolder;Lcom/oculus/horizon/events/api/Event$Application;Lcom/oculus/horizon/events/api/Event;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$application:Lcom/oculus/horizon/events/api/Event$Application;

    iput-object p3, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$event:Lcom/oculus/horizon/events/api/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    .line 236
    invoke-static {v0}, Lcom/oculus/horizon/events/view/EventViewHolder;->access$000(Lcom/oculus/horizon/events/view/EventViewHolder;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/events/EventDeeplinkIntentFactory;

    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$application:Lcom/oculus/horizon/events/api/Event$Application;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/Event$Application;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$event:Lcom/oculus/horizon/events/api/Event;

    iget-object v2, v2, Lcom/oculus/horizon/events/api/Event;->deeplink_message:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/events/EventDeeplinkIntentFactory;->newEventDeeplinkIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/events/view/EventViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    iget-object v2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$event:Lcom/oculus/horizon/events/api/Event;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->logEventDeeplinkSuccess(Lcom/oculus/horizon/events/api/Event;)V

    .line 242
    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/events/view/EventViewHolder;->access$100(Lcom/oculus/horizon/events/view/EventViewHolder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/oculus/horizon/events/EventDeeplinkIntentFactory$EventDeeplinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/events/view/EventViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    iget-object v2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$event:Lcom/oculus/horizon/events/api/Event;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/EventDeeplinkIntentFactory$EventDeeplinkException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->logEventDeeplinkFailure(Lcom/oculus/horizon/events/api/Event;Ljava/lang/String;)V

    .line 245
    new-instance v0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$application:Lcom/oculus/horizon/events/api/Event$Application;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/Event$Application;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$application:Lcom/oculus/horizon/events/api/Event$Application;

    iget-object v2, v2, Lcom/oculus/horizon/events/api/Event$Application;->display_name:Ljava/lang/String;

    new-instance v3, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

    iget-object v4, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$event:Lcom/oculus/horizon/events/api/Event;

    iget-object v4, v4, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    sget-object v5, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;->VIA_JOIN_NOW:Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;

    iget-object v6, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->val$event:Lcom/oculus/horizon/events/api/Event;

    iget-boolean v6, v6, Lcom/oculus/horizon/events/api/Event;->is_viewer_subscribed:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;-><init>(Ljava/lang/String;Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;Z)V

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;)V

    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$2;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/events/view/EventViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    .line 252
    invoke-virtual {v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->show(Landroidx/fragment/app/FragmentManager;)V

    goto :goto_0
.end method
