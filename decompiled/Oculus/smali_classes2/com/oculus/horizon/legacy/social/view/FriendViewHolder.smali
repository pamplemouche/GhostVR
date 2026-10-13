.class public Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "FriendViewHolder.java"


# instance fields
.field private final mAlias:Landroid/widget/TextView;

.field private final mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mFacebookFriendIndicator:Landroid/view/View;

.field private mFriend:Lcom/oculus/horizon/api/common/user/User;

.field private final mName:Landroid/widget/TextView;

.field private final mOptions:Landroid/view/View;

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field private final mSocialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

.field private final mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

.field private final mStatus:Landroid/widget/TextView;

.field private final mStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialDialogFactory;Lcom/oculus/horizon/social/SocialUtils;)V
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_friend:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 51
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 52
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mSocialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    .line 53
    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->status_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mName:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->alias:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mAlias:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mStatus:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->facebook_friend_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFacebookFriendIndicator:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->options:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mOptions:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mOptions:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$2;

    invoke-direct {v1, p0, p2}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mOptions:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/api/common/user/User;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFriend:Lcom/oculus/horizon/api/common/user/User;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/legacy/social/SocialDialogFactory;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mSocialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 102
    instance-of v0, p1, Lcom/oculus/horizon/api/common/user/User;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 103
    check-cast p1, Lcom/oculus/horizon/api/common/user/User;

    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFriend:Lcom/oculus/horizon/api/common/user/User;

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFriend:Lcom/oculus/horizon/api/common/user/User;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/User;->avatar:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFriend:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mAlias:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFriend:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 110
    invoke-virtual {v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFriend:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/social/SocialUtils;->findBestStatus(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 111
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFriend:Lcom/oculus/horizon/api/common/user/User;

    .line 112
    invoke-static {v0}, Lcom/oculus/horizon/social/SocialUtils;->isUserOnline(Lcom/oculus/horizon/api/common/user/BasicUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/horizon/R$drawable;->status_online:I

    .line 111
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFacebookFriendIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->mFriend:Lcom/oculus/horizon/api/common/user/User;

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/user/User;->is_facebook_friend:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void

    .line 112
    :cond_0
    sget v0, Lcom/oculus/horizon/R$drawable;->status_offline:I

    goto :goto_0

    .line 114
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
