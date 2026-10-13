.class public Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse;
.super Ljava/lang/Object;
.source "SavedHomeFeedItemsResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse$SavedItems;
    }
.end annotation


# instance fields
.field public saved:Lcom/oculus/horizon/homefeed/api/SavedHomeFeedItemsResponse$SavedItems;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "saved"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
