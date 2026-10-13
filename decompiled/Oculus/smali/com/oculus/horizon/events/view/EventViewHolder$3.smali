.class Lcom/oculus/horizon/events/view/EventViewHolder$3;
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

.field final synthetic val$event:Lcom/oculus/horizon/events/api/Event;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/view/EventViewHolder;Lcom/oculus/horizon/events/api/Event;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$3;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/events/view/EventViewHolder$3;->val$event:Lcom/oculus/horizon/events/api/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oculus/horizon/events/view/EventViewHolder$3;->this$0:Lcom/oculus/horizon/events/view/EventViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/events/view/EventViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/events/view/EventViewHolder$3;->val$event:Lcom/oculus/horizon/events/api/Event;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->unsubscribe(Ljava/lang/String;)V

    .line 280
    return-void
.end method
