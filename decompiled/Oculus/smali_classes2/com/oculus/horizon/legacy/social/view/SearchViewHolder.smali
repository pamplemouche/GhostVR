.class public Lcom/oculus/horizon/legacy/social/view/SearchViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "SearchViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SEARCH:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_search:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/SearchViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/oculus/horizon/legacy/social/view/SearchViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/SearchViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method
