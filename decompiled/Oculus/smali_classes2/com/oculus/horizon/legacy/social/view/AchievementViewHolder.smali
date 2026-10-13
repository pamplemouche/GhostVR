.class public Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "AchievementViewHolder.java"


# instance fields
.field private final mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

.field private final mDescription:Landroid/widget/TextView;

.field private final mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mProgressBarText:Landroid/widget/TextView;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENT:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_achievement_row:I

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 41
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mResources:Landroid/content/res/Resources;

    .line 43
    instance-of v0, p2, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 44
    check-cast p2, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mTitle:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mDescription:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->progress_bar_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mProgressBarText:Landroid/widget/TextView;

    .line 51
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.toCharArray"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    instance-of v0, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 57
    check-cast p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;

    .line 60
    iget-object v0, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->progress_for_user:Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->progress_for_user:Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;

    iget-boolean v0, v0, Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;->is_unlocked:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_3

    sget v3, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    .line 65
    :goto_1
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 64
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v3, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->description:Ljava/lang/String;

    .line 68
    if-eqz v0, :cond_0

    iget-object v5, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->unlocked_description_override:Ljava/lang/String;

    invoke-static {v5}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    iget-object v3, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->unlocked_description_override:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mDescription:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_4

    sget v3, Lcom/oculus/horizon/R$color;->oculus_black_6:I

    .line 73
    :goto_2
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 72
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    if-eqz v0, :cond_6

    iget-object v3, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->unlocked_image:Lcom/oculus/horizon/social/api/AchievementsResponse$Image;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->unlocked_image:Lcom/oculus/horizon/social/api/AchievementsResponse$Image;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/AchievementsResponse$Image;->uri:Ljava/lang/String;

    move-object v5, v3

    .line 79
    :goto_3
    if-eqz v0, :cond_8

    sget v3, Lcom/oculus/horizon/R$drawable;->social_achievement_unlocked_placeholder:I

    .line 84
    :goto_4
    invoke-static {v5}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 85
    :goto_5
    iget-object v8, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v9, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    iget-object v10, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 86
    invoke-virtual {v10}, Lcom/facebook/drawee/view/SimpleDraweeView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 87
    invoke-virtual {v9, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPlaceholderImage(I)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v3

    .line 85
    invoke-virtual {v8, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 89
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 91
    if-nez v0, :cond_a

    iget-wide v8, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->target:J

    cmp-long v0, v8, v6

    if-lez v0, :cond_a

    move v0, v1

    .line 92
    :goto_6
    iget-object v5, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    move v3, v2

    :goto_7
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mProgressBarText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v4, v2

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    if-nez v0, :cond_c

    .line 117
    :goto_8
    return-void

    :cond_2
    move v0, v2

    .line 60
    goto/16 :goto_0

    .line 64
    :cond_3
    sget v3, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    goto :goto_1

    .line 72
    :cond_4
    sget v3, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    goto :goto_2

    .line 75
    :cond_5
    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_3

    :cond_6
    iget-object v3, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->locked_image:Lcom/oculus/horizon/social/api/AchievementsResponse$Image;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->locked_image:Lcom/oculus/horizon/social/api/AchievementsResponse$Image;

    iget-object v3, v3, Lcom/oculus/horizon/social/api/AchievementsResponse$Image;->uri:Ljava/lang/String;

    move-object v5, v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_3

    .line 79
    :cond_8
    sget v3, Lcom/oculus/horizon/R$drawable;->social_achievement_locked_placeholder:I

    goto :goto_4

    .line 84
    :cond_9
    sget v3, Lcom/oculus/horizon/R$drawable;->oculus_placeholder:I

    goto :goto_5

    :cond_a
    move v0, v2

    .line 91
    goto :goto_6

    :cond_b
    move v3, v4

    .line 92
    goto :goto_7

    .line 99
    :cond_c
    iget-object v0, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->progress_for_user:Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;

    if-eqz v0, :cond_d

    .line 100
    const-string v0, "COUNT"

    iget-object v3, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->achievement_type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 101
    iget-object v0, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->progress_for_user:Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;

    iget-wide v6, v0, Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;->count_progress:J

    .line 112
    :cond_d
    :goto_9
    long-to-double v4, v6

    mul-double/2addr v4, v12

    iget-wide v8, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->target:J

    long-to-double v8, v8

    div-double/2addr v4, v8

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mProgressBarText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/AchievementViewHolder;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/oculus/horizon/R$string;->social_achievements_progress:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 116
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    iget-wide v6, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->target:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    .line 115
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 102
    :cond_e
    const-string v0, "BITFIELD"

    iget-object v3, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->achievement_type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p1, Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;->progress_for_user:Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;->bitfield_progress:Ljava/lang/String;

    .line 104
    if-eqz v0, :cond_f

    .line 105
    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v10, v3

    move v0, v2

    move-wide v8, v6

    :goto_b
    if-ge v0, v10, :cond_11

    aget-char v4, v3, v0

    .line 106
    const/16 v5, 0x31

    if-ne v4, v5, :cond_10

    const-wide/16 v4, 0x1

    :goto_c
    add-long/2addr v8, v4

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 104
    :cond_f
    const-string v0, ""

    goto :goto_a

    :cond_10
    move-wide v4, v6

    .line 106
    goto :goto_c

    :cond_11
    move-wide v6, v8

    goto :goto_9
.end method
