.class public Lcom/oculus/horizon/api/rating/AddRatingRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "AddRatingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final rating:I

.field public final reviewDescription:Ljava/lang/String;

.field public final reviewTitle:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->packageName:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->versionCode:I

    .line 24
    iput p3, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->rating:I

    .line 25
    iput-object p4, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->reviewTitle:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->reviewDescription:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->packageName:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "version_code"

    iget v2, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->versionCode:I

    .line 33
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "quality_rating"

    iget v2, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->rating:I

    .line 34
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->reviewTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36
    const-string/jumbo v1, "review_title"

    iget-object v2, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->reviewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->reviewDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 39
    const-string/jumbo v1, "review_description"

    iget-object v2, p0, Lcom/oculus/horizon/api/rating/AddRatingRequest;->reviewDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
