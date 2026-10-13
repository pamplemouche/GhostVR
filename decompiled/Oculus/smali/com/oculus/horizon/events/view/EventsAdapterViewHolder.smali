.class public abstract Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EventsAdapterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field protected final mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;I)V
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    iput-object p2, p0, Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract bind(Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
