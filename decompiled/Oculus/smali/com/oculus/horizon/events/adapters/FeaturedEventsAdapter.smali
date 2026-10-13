.class public Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;
.super Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
.source "FeaturedEventsAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$OnMyEventsPreviewChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    sget-object v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->MY_EVENTS_PREVIEW:Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->ordinal()I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->EVENT:Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$1;->$SwitchMap$com$oculus$horizon$events$adapters$FeaturedEventsAdapter$ViewType:[I

    invoke-static {}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->values()[Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
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

    .line 49
    :pswitch_0
    new-instance v0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V

    .line 51
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->getEventViewHolderProvider()Lcom/oculus/horizon/events/view/EventViewHolderProvider;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/events/view/EventViewHolder$Type;->SHORT:Lcom/oculus/horizon/events/view/EventViewHolder$Type;

    invoke-virtual {v0, p1, p0, v1}, Lcom/oculus/horizon/events/view/EventViewHolderProvider;->get(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;Lcom/oculus/horizon/events/view/EventViewHolder$Type;)Lcom/oculus/horizon/events/view/EventViewHolder;

    move-result-object v0

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMyEventsPreviewChange(Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->mItems:Ljava/util/List;

    iget-object v1, p1, Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview;->subscribed_events:Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setResponse(Lcom/oculus/horizon/events/api/FeaturedEventsResponse;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->mItems:Ljava/util/List;

    iget-object v1, p1, Lcom/oculus/horizon/events/api/FeaturedEventsResponse;->user:Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview;->subscribed_events:Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->mItems:Ljava/util/List;

    iget-object v1, p1, Lcom/oculus/horizon/events/api/FeaturedEventsResponse;->featured_events:Lcom/oculus/horizon/events/api/FeaturedEventsResponse$FeaturedEvents;

    iget-object v1, v1, Lcom/oculus/horizon/events/api/FeaturedEventsResponse$FeaturedEvents;->nodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-virtual {p0}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method
