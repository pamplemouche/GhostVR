.class public Lcom/oculus/horizon/spatialai/MapDownloadResponse;
.super Ljava/lang/Object;
.source "MapDownloadResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;
    }
.end annotation


# instance fields
.field public queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "query_map_from_uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
