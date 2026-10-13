.class public Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;
.super Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
.source "SubscribedEventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->EVENT:Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->ordinal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$1;->$SwitchMap$com$oculus$horizon$events$adapters$SubscribedEventsAdapter$ViewType:[I

    invoke-static {}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->values()[Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;->getEventViewHolderProvider()Lcom/oculus/horizon/events/view/EventViewHolderProvider;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/events/view/EventViewHolder$Type;->SHORT:Lcom/oculus/horizon/events/view/EventViewHolder$Type;

    invoke-virtual {v0, p1, p0, v1}, Lcom/oculus/horizon/events/view/EventViewHolderProvider;->get(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;Lcom/oculus/horizon/events/view/EventViewHolder$Type;)Lcom/oculus/horizon/events/view/EventViewHolder;

    move-result-object v0

    return-object v0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setResponse(Lcom/oculus/horizon/events/api/SubscribedEventsResponse;)V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;->mItems:Ljava/util/List;

    iget-object v1, p1, Lcom/oculus/horizon/events/api/SubscribedEventsResponse;->user:Lcom/oculus/horizon/events/api/SubscribedEventsResponse$User;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/SubscribedEventsResponse$User;->subscribed_events:Lcom/oculus/horizon/events/api/SubscribedEventsResponse$SubscribedEvents;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/SubscribedEventsResponse$SubscribedEvents;->nodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-virtual {p0}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method
