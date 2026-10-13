.class public Lcom/oculus/horizon/api/feed/StoryMediaResponse;
.super Ljava/lang/Object;
.source "StoryMediaResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# instance fields
.field public content_media:Lcom/oculus/horizon/api/feed/MediaResponse;

.field public deeplink:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public thumbnail_image:Lcom/oculus/horizon/api/feed/ImageResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
