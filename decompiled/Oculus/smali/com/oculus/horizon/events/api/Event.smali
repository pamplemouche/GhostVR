.class public Lcom/oculus/horizon/events/api/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/api/Event$TemporalInfo;,
        Lcom/oculus/horizon/events/api/Event$SubscribedFriend;,
        Lcom/oculus/horizon/events/api/Event$SubscribedFriends;,
        Lcom/oculus/horizon/events/api/Event$Image;,
        Lcom/oculus/horizon/events/api/Event$Application;
    }
.end annotation


# instance fields
.field public applications_for_viewer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/events/api/Event$Application;",
            ">;"
        }
    .end annotation
.end field

.field public deeplink_message:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public end_time:J

.field public id:Ljava/lang/String;

.field public is_viewer_subscribed:Z

.field public joinability_for_viewer:Ljava/lang/String;

.field public landscape_image:Lcom/oculus/horizon/events/api/Event$Image;

.field public start_time:J

.field public subscribed_friends:Lcom/oculus/horizon/events/api/Event$SubscribedFriends;

.field public subscribed_users_count:I

.field public temporal_info:Lcom/oculus/horizon/events/api/Event$TemporalInfo;

.field public title:Ljava/lang/String;

.field public unjoinable_reason_string:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplication()Lcom/oculus/horizon/events/api/Event$Application;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/events/api/Event;->applications_for_viewer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/events/api/Event;->applications_for_viewer:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/events/api/Event$Application;

    goto :goto_0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/events/api/Event;->temporal_info:Lcom/oculus/horizon/events/api/Event$TemporalInfo;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/api/Event$TemporalInfo;->getUpdatingSecondsUntilStartTime()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/events/api/Event;->temporal_info:Lcom/oculus/horizon/events/api/Event$TemporalInfo;

    .line 57
    invoke-virtual {v0}, Lcom/oculus/horizon/events/api/Event$TemporalInfo;->getUpdatingSecondsUntilEndTime()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpcoming()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/events/api/Event;->temporal_info:Lcom/oculus/horizon/events/api/Event$TemporalInfo;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/api/Event$TemporalInfo;->getUpdatingSecondsUntilStartTime()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
