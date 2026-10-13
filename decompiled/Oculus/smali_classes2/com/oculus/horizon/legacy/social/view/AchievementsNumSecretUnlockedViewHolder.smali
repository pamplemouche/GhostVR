.class public Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretUnlockedViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;
.source "AchievementsNumSecretUnlockedViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getIconResId()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/oculus/horizon/R$drawable;->social_achievement_secret_unlocked:I

    return v0
.end method

.method protected getMultipleSecretAchievementsTextResId()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/oculus/horizon/R$string;->social_achievements_earned_x_secret:I

    return v0
.end method

.method protected getSingleSecretAchievementTextResId()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/oculus/horizon/R$string;->social_achievements_earned_1_secret:I

    return v0
.end method

.method protected getTextColorResId()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    return v0
.end method
