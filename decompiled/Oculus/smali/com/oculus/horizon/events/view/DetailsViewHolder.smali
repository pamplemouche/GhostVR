.class public Lcom/oculus/horizon/events/view/DetailsViewHolder;
.super Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;
.source "DetailsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/events/view/EventsAdapterViewHolder",
        "<",
        "Lcom/oculus/horizon/events/api/Event;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V
    .locals 2

    .prologue
    .line 16
    sget v0, Lcom/oculus/horizon/R$layout;->events_event_details_item:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;I)V

    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/events/view/DetailsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/events/view/DetailsViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/events/api/Event;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/events/api/Event;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/events/view/DetailsViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/events/api/Event;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/oculus/horizon/events/api/Event;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/events/view/DetailsViewHolder;->bind(Lcom/oculus/horizon/events/api/Event;Ljava/util/List;)V

    return-void
.end method
