.class public Lcom/oculus/horizon/legacy/social/view/LoadingIndicatorViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "LoadingIndicatorViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->LOADING_INDICATOR:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->loading_indicator:I

    const/4 v2, 0x0

    .line 16
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 17
    return-void
.end method
