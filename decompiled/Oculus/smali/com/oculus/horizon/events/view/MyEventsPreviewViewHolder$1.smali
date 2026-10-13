.class Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder$1;
.super Ljava/lang/Object;
.source "MyEventsPreviewViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder$1;->this$0:Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder$1;->this$0:Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/events/view/MyEventsPreviewViewHolder;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    new-instance v1, Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/events/SubscribedEventsFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->navigateTo(Landroidx/fragment/app/Fragment;)V

    .line 30
    return-void
.end method
