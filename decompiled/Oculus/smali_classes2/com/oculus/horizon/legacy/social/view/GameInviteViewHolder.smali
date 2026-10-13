.class public Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "GameInviteViewHolder.java"


# instance fields
.field private final mAcceptButton:Landroid/view/View;

.field private final mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mDenyButton:Landroid/view/View;

.field private mGameInvite:Lcom/oculus/horizon/api/common/GameInvite;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field private final mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/res/Resources;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/style/StyleManager;)V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_invite:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 46
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 47
    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 48
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mResources:Landroid/content/res/Resources;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mTitle:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->accept_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mAcceptButton:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mAcceptButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;

    invoke-direct {v1, p0, p3}, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->deny_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mDenyButton:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mDenyButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p5}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->deny_button_image_view:I

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/oculus/horizon/R$id;->accept_button_image_view:I

    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 76
    invoke-static {v2, v0, v1}, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->setTintedAcceptDenyActionDrawablesForHalloweenTheme(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 81
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->setButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;)Lcom/oculus/horizon/api/common/GameInvite;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mGameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-object v0
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mDenyButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/oculus/horizon/api/common/GameInvite;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;

    if-eqz v0, :cond_3

    .line 93
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;

    .line 94
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 95
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/GameInvite;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mGameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    .line 100
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/oculus/horizon/R$string;->social_game_invites_invite_to_app_label:I

    .line 102
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mGameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    .line 103
    invoke-static {v5}, Lcom/oculus/horizon/social/SocialUtils;->findBestDisplayName(Lcom/oculus/horizon/api/common/Invite;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mGameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    iget-object v5, v5, Lcom/oculus/horizon/api/common/GameInvite;->application_name:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 101
    invoke-static {v3, v4}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mGameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/GameInvite;->sender_photo:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mGameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/legacy/social/SocialManager;->isGameInviteActionInProgress(Lcom/oculus/horizon/api/common/GameInvite;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    invoke-direct {p0, v2}, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->setButtonsEnabled(Z)V

    .line 109
    return-void

    :cond_1
    move v0, v1

    .line 89
    goto :goto_0

    :cond_2
    move v0, v1

    .line 94
    goto :goto_1

    .line 97
    :cond_3
    check-cast p1, Lcom/oculus/horizon/api/common/GameInvite;

    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->mGameInvite:Lcom/oculus/horizon/api/common/GameInvite;

    goto :goto_2

    :cond_4
    move v2, v1

    .line 108
    goto :goto_3
.end method
