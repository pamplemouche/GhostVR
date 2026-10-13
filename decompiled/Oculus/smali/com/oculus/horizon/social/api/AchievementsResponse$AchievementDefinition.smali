.class public Lcom/oculus/horizon/social/api/AchievementsResponse$AchievementDefinition;
.super Ljava/lang/Object;
.source "AchievementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/api/AchievementsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AchievementDefinition"
.end annotation


# instance fields
.field public achievement_type:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public locked_image:Lcom/oculus/horizon/social/api/AchievementsResponse$Image;

.field public progress_for_user:Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;

.field public target:J

.field public title:Ljava/lang/String;

.field public unlocked_description_override:Ljava/lang/String;

.field public unlocked_image:Lcom/oculus/horizon/social/api/AchievementsResponse$Image;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
