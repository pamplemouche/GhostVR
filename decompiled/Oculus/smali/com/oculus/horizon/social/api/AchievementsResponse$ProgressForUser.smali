.class public Lcom/oculus/horizon/social/api/AchievementsResponse$ProgressForUser;
.super Ljava/lang/Object;
.source "AchievementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/api/AchievementsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressForUser"
.end annotation


# instance fields
.field public bitfield_progress:Ljava/lang/String;

.field public count_progress:J

.field public is_unlocked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
