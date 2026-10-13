.class public Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "FriendRequestViewHolder.java"


# instance fields
.field private final mAcceptButton:Landroid/view/View;

.field private final mAlias:Landroid/widget/TextView;

.field private final mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mDenyButton:Landroid/view/View;

.field private mFriendRequest:Lcom/oculus/horizon/social/model/FriendRequest;

.field private final mName:Landroid/widget/TextView;

.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field private final mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

.field private final mStatus:Landroid/widget/TextView;

.field private final mStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/style/StyleManager;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 4

    .prologue
    .line 50
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_friend_request:I

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 54
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 55
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 56
    iput-object p5, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->status_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mName:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->alias:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mAlias:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mStatus:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->accept_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mAcceptButton:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mAcceptButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->deny_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mDenyButton:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mDenyButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$3;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p4}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->deny_button_image_view:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/oculus/horizon/R$id;->accept_button_image_view:I

    .line 100
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 97
    invoke-static {v2, v0, v1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->setTintedAcceptDenyActionDrawablesForHalloweenTheme(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->setButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/social/model/FriendRequest;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mFriendRequest:Lcom/oculus/horizon/social/model/FriendRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    return-object v0
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mDenyButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/oculus/horizon/social/model/FriendRequest;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 113
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;

    if-eqz v0, :cond_3

    .line 114
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;

    .line 115
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 116
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/FriendRequest;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mFriendRequest:Lcom/oculus/horizon/social/model/FriendRequest;

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mFriendRequest:Lcom/oculus/horizon/social/model/FriendRequest;

    iget-object v3, v0, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v3, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->avatar:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    invoke-virtual {v0, v4, v5}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V

    .line 126
    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    .line 127
    invoke-static {v3}, Lcom/oculus/horizon/social/SocialUtils;->isUserOnline(Lcom/oculus/horizon/api/common/user/BasicUser;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/oculus/horizon/R$drawable;->status_online:I

    .line 126
    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mName:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->name:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mAlias:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->alias:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mFriendRequest:Lcom/oculus/horizon/social/model/FriendRequest;

    iget-object v0, v0, Lcom/oculus/horizon/social/model/FriendRequest;->source:Ljava/lang/String;

    .line 133
    invoke-static {v0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 134
    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/oculus/horizon/social/SocialUtils;->getMutualFriends(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/BasicUser;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_4
    invoke-static {v4, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/legacy/social/SocialManager;->isFriendRequestActionInProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_5
    invoke-direct {p0, v2}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->setButtonsEnabled(Z)V

    .line 138
    return-void

    :cond_1
    move v0, v1

    .line 110
    goto :goto_0

    :cond_2
    move v0, v1

    .line 115
    goto :goto_1

    .line 118
    :cond_3
    check-cast p1, Lcom/oculus/horizon/social/model/FriendRequest;

    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mFriendRequest:Lcom/oculus/horizon/social/model/FriendRequest;

    goto :goto_2

    .line 127
    :cond_4
    sget v0, Lcom/oculus/horizon/R$drawable;->status_offline:I

    goto :goto_3

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->mFriendRequest:Lcom/oculus/horizon/social/model/FriendRequest;

    iget-object v0, v0, Lcom/oculus/horizon/social/model/FriendRequest;->source:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move v2, v1

    .line 137
    goto :goto_5
.end method
