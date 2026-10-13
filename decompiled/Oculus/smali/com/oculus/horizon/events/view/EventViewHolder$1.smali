.class Lcom/oculus/horizon/events/view/EventViewHolder$1;
.super Ljava/lang/Object;
.source "EventViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/view/EventViewHolder;->bindEvent(Lcom/oculus/horizon/events/api/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

.field final synthetic val$eventId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/view/EventViewHolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$1;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$1;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/oculus/horizon/events/EventDetailsFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/events/EventDetailsFragment;-><init>()V

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v2, "event_id"

    iget-object v3, p0, Lcom/oculus/horizon/events/view/EventViewHolder$1;->val$eventId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/events/EventDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$1;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/events/view/EventViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->navigateTo(Landroidx/fragment/app/Fragment;)V

    .line 131
    return-void
.end method
