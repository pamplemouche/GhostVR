.class public Lcom/oculus/horizon/spatialai/MapUploadResponse;
.super Ljava/lang/Object;
.source "MapUploadResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spatialai/MapUploadResponse$MutationUploadMap;
    }
.end annotation


# instance fields
.field public mutationUploadMap:Lcom/oculus/horizon/spatialai/MapUploadResponse$MutationUploadMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mutation_upload_map"
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
