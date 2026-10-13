.class public Lcom/oculus/horizon/social/api/AchievementsResponse;
.super Ljava/lang/Object;
.source "AchievementsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;,
        Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;,
        Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinitions;,
        Lcom/oculus/horizon/social/api/AchievementsResponse$Grouping;,
        Lcom/oculus/horizon/social/api/AchievementsResponse$Image;
    }
.end annotation


# instance fields
.field public cover_landscape_image:Lcom/oculus/horizon/social/api/AchievementsResponse$Image;

.field public display_name:Ljava/lang/String;

.field public grouping:Lcom/oculus/horizon/social/api/AchievementsResponse$Grouping;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
