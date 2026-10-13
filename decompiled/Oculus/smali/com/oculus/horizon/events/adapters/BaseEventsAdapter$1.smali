.class Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "BaseEventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->subscribe(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

.field final synthetic val$adapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

.field final synthetic val$eventId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    iput-object p3, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->val$eventId:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->val$adapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->access$100(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->access$000(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->val$eventId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventSubscribeFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    .line 131
    invoke-static {v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->access$200(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    .line 132
    invoke-static {v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->access$200(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->events_subscribe_failed_toast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lcom/oculus/horizon/util/errors/ErrorToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->access$100(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->access$000(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->val$eventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventSubscribeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->this$0:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    iget-object v1, p1, Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse;->event:Lcom/oculus/horizon/events/api/Event;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->onEventChange(Lcom/oculus/horizon/events/api/Event;)V

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->val$adapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    instance-of v0, v0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$OnMyEventsPreviewChangeListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->val$adapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    check-cast v0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$OnMyEventsPreviewChangeListener;

    iget-object v1, p1, Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse;->viewer:Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse$Viewer;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse$Viewer;->user:Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview;

    .line 123
    invoke-interface {v0, v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$OnMyEventsPreviewChangeListener;->onMyEventsPreviewChange(Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview;)V

    .line 125
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;->onResponse(Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse;)V

    return-void
.end method
