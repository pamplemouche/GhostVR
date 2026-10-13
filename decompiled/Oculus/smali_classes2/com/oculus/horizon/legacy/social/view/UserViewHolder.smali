.class public Lcom/oculus/horizon/legacy/social/view/UserViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "UserViewHolder.java"


# instance fields
.field private final mAlias:Landroid/widget/TextView;

.field private final mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mFriendActionsButton:Landroid/widget/ImageView;

.field private final mFriendsIcon:Landroid/widget/ImageView;

.field private final mName:Landroid/widget/TextView;

.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field private final mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

.field private final mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

.field private final mStatus:Landroid/widget/TextView;

.field private final mStatusIcon:Landroid/widget/ImageView;

.field private final mStyleManager:Lcom/oculus/horizon/style/StyleManager;

.field private mUser:Lcom/oculus/horizon/api/common/user/User;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/SocialUtils;Lcom/oculus/horizon/style/StyleManager;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->USER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_user:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 55
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 56
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 57
    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    .line 58
    iput-object p5, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    .line 59
    iput-object p6, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->status_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mName:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->alias:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mAlias:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mStatus:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->friends_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendsIcon:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->friend_actions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setDismissKeyboardOnTouchListener(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/api/common/user/User;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 75
    instance-of v0, p1, Lcom/oculus/horizon/api/common/user/User;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 77
    check-cast p1, Lcom/oculus/horizon/api/common/user/User;

    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/User;->avatar:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mAlias:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v2, v1, v3}, Lcom/oculus/horizon/social/SocialUtils;->findBestStatus(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 85
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    .line 86
    invoke-static {v0}, Lcom/oculus/horizon/social/SocialUtils;->isUserOnline(Lcom/oculus/horizon/api/common/user/BasicUser;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/oculus/horizon/R$drawable;->status_online:I

    .line 85
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    const/4 v0, 0x0

    .line 89
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/social/SocialUtils;->itsMe(Lcom/oculus/horizon/api/common/user/User;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    new-instance v0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)V

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mUser:Lcom/oculus/horizon/api/common/user/User;

    invoke-static {v2}, Lcom/oculus/horizon/social/SocialUtils;->friendStatus(Lcom/oculus/horizon/api/common/user/BasicUser;)Lcom/oculus/horizon/api/common/user/UserFriendStatus;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendsIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    sget-object v3, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$3;->$SwitchMap$com$oculus$horizon$api$common$user$UserFriendStatus:[I

    invoke-virtual {v2}, Lcom/oculus/horizon/api/common/user/UserFriendStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 150
    :goto_1
    return-void

    .line 86
    :cond_1
    sget v0, Lcom/oculus/horizon/R$drawable;->status_offline:I

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    sget v3, Lcom/oculus/horizon/R$drawable;->add_friend_black:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    sget v3, Lcom/oculus/horizon/R$drawable;->button_black_background_normal:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v3, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v3, :cond_2

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->setTintedBackgroundDrawableForHalloweenTheme(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;Lcom/oculus/horizon/api/common/user/UserFriendStatus;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    sget v2, Lcom/oculus/horizon/R$drawable;->friend_request_pending:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    sget v2, Lcom/oculus/horizon/R$drawable;->button_gray_solid_background:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 142
    :pswitch_2
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendsIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendsIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
