.class public Lcom/oculus/horizon/events/api/IndividualEventsResponse;
.super Ljava/lang/Object;
.source "IndividualEventsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/api/IndividualEventsResponse$IndividualEvents;
    }
.end annotation


# instance fields
.field public individual_events:Lcom/oculus/horizon/events/api/IndividualEventsResponse$IndividualEvents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
