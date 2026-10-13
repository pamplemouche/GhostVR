.class public Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter$CoverImage;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "AchievementsFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverImage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->ACHIEVEMENTS_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 179
    return-void
.end method
