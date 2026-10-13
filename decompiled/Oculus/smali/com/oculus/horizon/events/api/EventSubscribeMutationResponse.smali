.class public Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse;
.super Ljava/lang/Object;
.source "EventSubscribeMutationResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse$Viewer;
    }
.end annotation


# instance fields
.field public event:Lcom/oculus/horizon/events/api/Event;

.field public viewer:Lcom/oculus/horizon/events/api/EventSubscribeMutationResponse$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
