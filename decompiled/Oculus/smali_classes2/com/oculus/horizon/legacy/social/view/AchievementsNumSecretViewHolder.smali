.class public abstract Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "AchievementsNumSecretViewHolder.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_NUM_SECRET_UNLOCKED:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_achievements_num_secret:I

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 31
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->mResources:Landroid/content/res/Resources;

    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->mTitle:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->getTextColorResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 41
    instance-of v0, p1, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 42
    check-cast p1, Ljava/lang/Integer;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->getSingleSecretAchievementTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;->getMultipleSecretAchievementsTextResId()I

    move-result v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected abstract getIconResId()I
.end method

.method protected abstract getMultipleSecretAchievementsTextResId()I
.end method

.method protected abstract getSingleSecretAchievementTextResId()I
.end method

.method protected abstract getTextColorResId()I
.end method
