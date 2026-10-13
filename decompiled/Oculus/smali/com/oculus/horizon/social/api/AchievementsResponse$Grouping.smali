.class public Lcom/oculus/horizon/social/api/AchievementsResponse$Grouping;
.super Ljava/lang/Object;
.source "AchievementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/api/AchievementsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Grouping"
.end annotation


# instance fields
.field public achievement_definitions:Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinitions;

.field public secret_achievement_count_earned_by_user_but_not_viewer:I

.field public unearned_secret_achievement_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
