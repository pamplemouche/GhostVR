.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendsAchievementsHeader"
.end annotation


# instance fields
.field public final provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;)V
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIENDS_ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 291
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;

    .line 292
    return-void
.end method


# virtual methods
.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;

    invoke-interface {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->hasFriends()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;->provider:Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;

    invoke-interface {v0}, Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;->hasEntitlementsWithAchievements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;->getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0
.end method
