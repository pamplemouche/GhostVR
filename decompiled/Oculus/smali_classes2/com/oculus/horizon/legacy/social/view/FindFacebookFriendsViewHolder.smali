.class public Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "FindFacebookFriendsViewHolder.java"


# instance fields
.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SEARCH:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_find_facebook_friends:I

    .line 22
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 24
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "friends_tab"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportFindFacebookFriendsEntryPointImpression(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method
