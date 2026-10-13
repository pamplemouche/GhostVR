.class public Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "SearchResultUserViewHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


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

.field private final mStyleManager:Lcom/oculus/horizon/style/StyleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/SocialUtils;Lcom/oculus/horizon/style/StyleManager;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SEARCH_RESULT:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_search_result_user:I

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 63
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 64
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 65
    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    .line 66
    iput-object p5, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    .line 67
    iput-object p6, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mName:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->alias:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mAlias:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mStatus:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->friends_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendsIcon:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->friend_actions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setDismissKeyboardOnTouchListener(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 82
    instance-of v1, p1, Lcom/oculus/horizon/social/api/SocialSearchData;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    check-cast p1, Lcom/oculus/horizon/social/api/SocialSearchData;

    .line 85
    invoke-virtual {p1}, Lcom/oculus/horizon/social/api/SocialSearchData;->getUser()Lcom/oculus/horizon/social/api/SearchResultUser;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, v1, Lcom/oculus/horizon/social/api/SearchResultUser;->avatar:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    invoke-virtual {v2, v3, v4}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V

    .line 88
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-virtual {v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mName:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/oculus/horizon/social/api/SearchResultUser;->name:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/oculus/horizon/social/api/SocialSearchData;->getSearchText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 89
    invoke-static {v3, v4}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 92
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mAlias:Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 93
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mStatus:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/oculus/horizon/social/SocialUtils;->getMutualFriends(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/BasicUser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 97
    sget-object v3, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$3;->$SwitchMap$com$oculus$horizon$social$api$SearchResultMode:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/social/api/SocialSearchData;->getSearchResultMode()Lcom/oculus/horizon/social/api/SearchResultMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/horizon/social/api/SearchResultMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 119
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mName:Landroid/widget/TextView;

    sget v4, Lcom/oculus/horizon/R$drawable;->profile_lock_icon:I

    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-static {v1}, Lcom/oculus/horizon/social/SocialUtils;->friendStatus(Lcom/oculus/horizon/api/common/user/BasicUser;)Lcom/oculus/horizon/api/common/user/UserFriendStatus;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendsIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    sget-object v4, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$3;->$SwitchMap$com$oculus$horizon$api$common$user$UserFriendStatus:[I

    invoke-virtual {v3}, Lcom/oculus/horizon/api/common/user/UserFriendStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 173
    :goto_1
    return-void

    .line 99
    :pswitch_0
    iget-object v3, v1, Lcom/oculus/horizon/social/api/SearchResultUser;->user_id:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search result ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/oculus/horizon/social/api/SearchResultUser;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] had no user ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    sget-object v4, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    iget-object v4, v1, Lcom/oculus/horizon/social/api/SearchResultUser;->user_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oculus/horizon/social/SocialUtils;->itsMe(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    new-instance v0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;Lcom/oculus/horizon/social/api/SearchResultUser;)V

    goto :goto_2

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    sget v4, Lcom/oculus/horizon/R$drawable;->add_friend_black:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    sget v4, Lcom/oculus/horizon/R$drawable;->button_black_background_normal:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v4, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v4, :cond_2

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->setTintedBackgroundDrawableForHalloweenTheme(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;

    invoke-direct {v2, p0, v3, v1}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;Lcom/oculus/horizon/api/common/user/UserFriendStatus;Lcom/oculus/horizon/social/api/SearchResultUser;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 157
    :pswitch_2
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    sget v2, Lcom/oculus/horizon/R$drawable;->friend_request_pending:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    sget v2, Lcom/oculus/horizon/R$drawable;->button_gray_solid_background:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 160
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 165
    :pswitch_3
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendsIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendsIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 169
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->mFriendActionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 128
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
