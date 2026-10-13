.class public Lcom/oculus/horizon/legacy/social/view/EmptyViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "EmptyViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->empty_layout:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 15
    return-void
.end method
