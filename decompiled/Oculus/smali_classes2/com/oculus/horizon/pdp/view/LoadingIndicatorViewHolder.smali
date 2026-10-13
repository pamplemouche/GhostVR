.class public Lcom/oculus/horizon/pdp/view/LoadingIndicatorViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LoadingIndicatorViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    return-void
.end method


# virtual methods
.method public bind(Z)V
    .locals 2

    .prologue
    .line 16
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/LoadingIndicatorViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
