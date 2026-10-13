.class public Lcom/oculus/horizon/events/api/FeaturedEventsResponse;
.super Ljava/lang/Object;
.source "FeaturedEventsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/api/FeaturedEventsResponse$FeaturedEvents;
    }
.end annotation


# instance fields
.field public featured_events:Lcom/oculus/horizon/events/api/FeaturedEventsResponse$FeaturedEvents;

.field public user:Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
