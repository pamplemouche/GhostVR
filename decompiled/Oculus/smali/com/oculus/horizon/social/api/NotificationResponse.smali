.class public Lcom/oculus/horizon/social/api/NotificationResponse;
.super Ljava/lang/Object;
.source "NotificationResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/NotificationResponse$SearchResults;
    }
.end annotation


# instance fields
.field public notifications:Lcom/oculus/horizon/social/api/NotificationResponse$SearchResults;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
