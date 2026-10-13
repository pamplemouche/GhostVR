.class public Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretLockedViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;
.source "AchievementsNumSecretLockedViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/legacy/social/view/AchievementsNumSecretViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getIconResId()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/oculus/horizon/R$drawable;->social_achievement_secret_locked:I

    return v0
.end method

.method protected getMultipleSecretAchievementsTextResId()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/oculus/horizon/R$string;->social_achievements_remaining_x_secret:I

    return v0
.end method

.method protected getSingleSecretAchievementTextResId()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/oculus/horizon/R$string;->social_achievements_remaining_1_secret:I

    return v0
.end method

.method protected getTextColorResId()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    return v0
.end method
