.class public Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;
.super Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;
.source "MyEventsPreviewViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/events/view/EventsAdapterViewHolder",
        "<",
        "Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMyEventsTextView:Landroid/widget/TextView;

.field private final mSubtitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V
    .locals 2

    .prologue
    .line 23
    sget v0, Lcom/oculus/horizon/R$layout;->events_my_events_preview_item:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;I)V

    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder$1;-><init>(Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->my_events_with_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->mMyEventsTextView:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->mSubtitleTextView:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->mMyEventsTextView:Landroid/widget/TextView;

    sget v2, Lcom/oculus/horizon/R$string;->events_my_events_with_count:I

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 41
    invoke-static {v2, v3}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p1, Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->mSubtitleTextView:Landroid/widget/TextView;

    sget v2, Lcom/oculus/horizon/R$string;->my_events_subtitle_no_upcoming:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;->nodes:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/events/api/Event;

    .line 50
    invoke-virtual {v0}, Lcom/oculus/horizon/events/api/Event;->isLive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->mSubtitleTextView:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->my_events_subtitle_now_live:I

    .line 53
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/oculus/horizon/events/api/Event;->title:Ljava/lang/String;

    aput-object v0, v3, v5

    .line 52
    invoke-static {v1, v3}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->mSubtitleTextView:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->my_events_subtitle_up_next:I

    .line 59
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/oculus/horizon/events/api/Event;->title:Ljava/lang/String;

    aput-object v0, v3, v5

    .line 58
    invoke-static {v1, v3}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->bind(Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;Ljava/util/List;)V

    return-void
.end method
