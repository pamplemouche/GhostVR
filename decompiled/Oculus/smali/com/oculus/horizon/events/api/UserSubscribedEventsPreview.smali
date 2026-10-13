.class public Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview;
.super Ljava/lang/Object;
.source "UserSubscribedEventsPreview.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;
    }
.end annotation


# instance fields
.field public subscribed_events:Lcom/oculus/horizon/events/api/UserSubscribedEventsPreview$SubscribedEvents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
