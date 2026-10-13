.class public Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;
.super Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
.source "EventDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    sget-object v0, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;->EVENT:Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;->ordinal()I

    move-result v0

    .line 38
    :goto_0
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 38
    sget-object v0, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;->DETAILS:Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;->ordinal()I

    move-result v0

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event details view type position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$1;->$SwitchMap$com$oculus$horizon$events$adapters$EventDetailsAdapter$ViewType:[I

    invoke-static {}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;->values()[Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
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

    .line 47
    :pswitch_0
    invoke-virtual {p0}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;->getEventViewHolderProvider()Lcom/oculus/horizon/events/view/EventViewHolderProvider;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/events/view/EventViewHolder$Type;->FULL:Lcom/oculus/horizon/events/view/EventViewHolder$Type;

    invoke-virtual {v0, p1, p0, v1}, Lcom/oculus/horizon/events/view/EventViewHolderProvider;->get(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;Lcom/oculus/horizon/events/view/EventViewHolder$Type;)Lcom/oculus/horizon/events/view/EventViewHolder;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/oculus/horizon/events/view/DetailsViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/oculus/horizon/events/view/DetailsViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setResponse(Lcom/oculus/horizon/events/api/Event;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method
