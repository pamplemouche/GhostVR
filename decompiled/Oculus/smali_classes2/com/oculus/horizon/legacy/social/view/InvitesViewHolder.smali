.class public Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "InvitesViewHolder.java"


# instance fields
.field private final mAvatars:Landroid/widget/LinearLayout;

.field private final mNames:Landroid/widget/TextView;

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/res/Resources;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/oculus/horizon/R$layout;->social_invites:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 35
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->names:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mNames:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatars:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    .line 39
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    if-ne p4, v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    if-ne p4, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 60
    instance-of v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Invites;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 61
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Invites;

    .line 62
    invoke-interface {p1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Invites;->getInvites()Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Invite;

    .line 68
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 70
    iget-object v6, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Invite;->sender_photo:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/oculus/horizon/social/SocialUtils;->findBestDisplayName(Lcom/oculus/horizon/api/common/Invite;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v0, v3, 0x1

    .line 79
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 84
    :goto_2
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    .line 63
    goto :goto_0

    :cond_2
    move v3, v0

    .line 82
    goto :goto_1

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->mNames:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void

    :cond_4
    move v0, v3

    goto :goto_2
.end method
