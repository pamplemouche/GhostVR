.class public Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "NoFriendsSectionViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_FRIENDS_SECTION:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_no_friends_section:I

    const/4 v2, 0x0

    .line 18
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->find_friends_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 32
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 33
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;

    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;->sectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;

    invoke-interface {v1}, Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;->getHeightInPx()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    return-void
.end method
