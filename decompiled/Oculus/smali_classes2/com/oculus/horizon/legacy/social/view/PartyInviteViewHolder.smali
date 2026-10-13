.class public Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "PartyInviteViewHolder.java"


# instance fields
.field private final mAcceptButton:Landroid/view/View;

.field private final mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mDenyButton:Landroid/view/View;

.field private mPartyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field private final mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/res/Resources;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/style/StyleManager;)V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_invite:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 46
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 47
    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 48
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mResources:Landroid/content/res/Resources;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mTitle:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->accept_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mAcceptButton:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mAcceptButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->deny_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mDenyButton:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mDenyButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p5}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->deny_button_image_view:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/oculus/horizon/R$id;->accept_button_image_view:I

    .line 78
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 75
    invoke-static {v2, v0, v1}, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->setTintedAcceptDenyActionDrawablesForHalloweenTheme(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->setButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;)Lcom/oculus/horizon/api/common/PartyInvite;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mPartyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    return-object v0
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mDenyButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/oculus/horizon/api/common/PartyInvite;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;

    if-eqz v0, :cond_3

    .line 92
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;

    .line 93
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 94
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/PartyInvite;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mPartyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/oculus/horizon/R$string;->social_party_invites_invite_to_party_label:I

    .line 101
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mPartyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    .line 102
    invoke-static {v5}, Lcom/oculus/horizon/social/SocialUtils;->findBestDisplayName(Lcom/oculus/horizon/api/common/Invite;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 100
    invoke-static {v3, v4}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mPartyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/PartyInvite;->sender_photo:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mPartyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/legacy/social/SocialManager;->isPartyInviteActionInProgress(Lcom/oculus/horizon/api/common/PartyInvite;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    invoke-direct {p0, v2}, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->setButtonsEnabled(Z)V

    .line 107
    return-void

    :cond_1
    move v0, v1

    .line 88
    goto :goto_0

    :cond_2
    move v0, v1

    .line 93
    goto :goto_1

    .line 96
    :cond_3
    check-cast p1, Lcom/oculus/horizon/api/common/PartyInvite;

    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->mPartyInvite:Lcom/oculus/horizon/api/common/PartyInvite;

    goto :goto_2

    :cond_4
    move v2, v1

    .line 106
    goto :goto_3
.end method
