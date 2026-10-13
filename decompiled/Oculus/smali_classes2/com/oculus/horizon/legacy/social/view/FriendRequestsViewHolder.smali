.class public Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "FriendRequestsViewHolder.java"


# instance fields
.field private final mAvatarSize:I

.field private final mAvatars:Landroid/widget/LinearLayout;

.field private final mNames:Landroid/widget/TextView;

.field private final mPaddingRight:I

.field private final mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/res/Resources;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUESTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_friend_requests:I

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p3, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 36
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 38
    sget v0, Lcom/oculus/horizon/R$dimen;->social_medium_avatar_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatarSize:I

    .line 39
    sget v0, Lcom/oculus/horizon/R$dimen;->social_medium_avatar_right_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mPaddingRight:I

    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->names:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mNames:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->avatars:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    return-object v0
.end method

.method private makeDraweeView()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->itemView:Landroid/view/View;

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 90
    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->asCircle()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$drawable;->social_profile_picture_unset_large:I

    .line 91
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFailureImage(I)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 93
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatarSize:I

    iget v3, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatarSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    iget v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mPaddingRight:I

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 54
    instance-of v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 55
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;

    .line 56
    iget-object v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/FriendRequest;

    .line 61
    iget-object v1, v0, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    invoke-static {v1}, Lcom/oculus/horizon/social/SocialUtils;->findBestDisplayName(Lcom/oculus/horizon/api/common/user/BasicUser;)Ljava/lang/String;

    move-result-object v6

    .line 64
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 70
    :goto_2
    iget-object v7, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mSocialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v0, v0, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->avatar:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    invoke-virtual {v7, v1, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 78
    goto :goto_1

    :cond_1
    move v0, v2

    .line 56
    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->makeDraweeView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    .line 68
    iget-object v7, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 80
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mAvatars:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->mNames:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method
