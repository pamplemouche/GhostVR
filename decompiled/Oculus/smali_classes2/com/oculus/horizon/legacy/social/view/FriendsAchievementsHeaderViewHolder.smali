.class public Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "FriendsAchievementsHeaderViewHolder.java"


# instance fields
.field private final mAchievementsHeader:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mDoubleHeader:Landroid/widget/LinearLayout;

.field private final mFriendsHeader:Landroid/widget/LinearLayout;

.field private final mFriendsHeaderCount:Landroid/widget/TextView;

.field private final mFriendsHeaderText:Landroid/widget/TextView;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSingleHeader:Landroid/widget/LinearLayout;

.field private final mSingleHeaderCount:Landroid/widget/TextView;

.field private final mSingleHeaderText:Landroid/widget/TextView;

.field private final mStyleManager:Lcom/oculus/horizon/style/StyleManager;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;Lcom/oculus/horizon/style/StyleManager;)V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIENDS_ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_friends_achievements_header:I

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mResources:Landroid/content/res/Resources;

    .line 56
    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    .line 58
    instance-of v0, p2, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 59
    check-cast p2, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->single_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mSingleHeader:Landroid/widget/LinearLayout;

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->single_header_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mSingleHeaderText:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->single_header_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mSingleHeaderCount:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->double_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mDoubleHeader:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->friends_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeader:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->friends_header_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderText:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->friends_header_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderCount:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->achievements_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mAchievementsHeader:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mDoubleHeader:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mAchievementsHeader:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder$2;

    invoke-direct {v1, p0, p2}, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder$2;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private bindDoubleHeader(Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    invoke-interface {p1}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->isAchievementsHeaderSelected()Z

    move-result v8

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    .line 104
    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/oculus/horizon/R$color;->oculus_black_6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 108
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    .line 109
    invoke-virtual {v1}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v1

    sget-object v2, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/oculus/horizon/R$drawable;->social_friends_achievements_header_selected_background:I

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    :goto_1
    iget-object v9, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeader:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_2

    move-object v2, v3

    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mAchievementsHeader:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    move v1, v4

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderText:Landroid/widget/TextView;

    .line 120
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v8, :cond_5

    move v1, v5

    .line 119
    :goto_5
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 122
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/oculus/horizon/R$string;->social_header_count_template:I

    new-array v9, v6, [Ljava/lang/Object;

    .line 123
    invoke-interface {p1}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->getFriendsCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderCount:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->getFriendsCount()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v5

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderCount:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    move v1, v4

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mFriendsHeaderCount:Landroid/widget/TextView;

    .line 127
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v8, :cond_8

    move v1, v5

    .line 126
    :goto_8
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 129
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mAchievementsHeader:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mAchievementsHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mAchievementsHeader:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v8, :cond_a

    .line 130
    :goto_a
    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mSingleHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mDoubleHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    return-void

    .line 105
    :cond_0
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/oculus/horizon/R$drawable;->social_friends_achievements_header_selected_background_inverse:I

    .line 112
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    move-object v2, v1

    .line 115
    goto/16 :goto_2

    :cond_3
    move-object v1, v3

    .line 116
    goto/16 :goto_3

    :cond_4
    move v1, v0

    .line 118
    goto :goto_4

    :cond_5
    move v1, v6

    .line 120
    goto :goto_5

    :cond_6
    move v1, v7

    .line 124
    goto :goto_6

    :cond_7
    move v1, v0

    .line 125
    goto :goto_7

    :cond_8
    move v1, v6

    .line 127
    goto :goto_8

    :cond_9
    move v0, v4

    .line 129
    goto :goto_9

    :cond_a
    move v6, v5

    .line 131
    goto :goto_a
.end method

.method private bindSingleHeader(Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;)V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 138
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mSingleHeaderText:Landroid/widget/TextView;

    .line 139
    invoke-interface {p1}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->hasFriends()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/horizon/R$string;->social_friends_label:I

    .line 138
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mSingleHeaderCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/oculus/horizon/R$string;->social_header_count_template:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 141
    invoke-interface {p1}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->getFriendsCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mSingleHeaderCount:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->getFriendsCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mDoubleHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->mSingleHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    return-void

    .line 139
    :cond_0
    sget v0, Lcom/oculus/horizon/R$string;->social_achievements_label:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 142
    goto :goto_1
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;

    .line 93
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;

    invoke-interface {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->hasEntitlementsWithAchievements()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;

    .line 94
    invoke-interface {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->hasFriends()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;

    invoke-interface {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->isViewerProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->bindDoubleHeader(Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;->bindSingleHeader(Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;)V

    goto :goto_0
.end method
