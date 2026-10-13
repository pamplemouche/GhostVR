.class public Lcom/oculus/horizon/api/rating/RankReviewRequest;
.super Ljava/lang/Object;
.source "RankReviewRequest.java"


# instance fields
.field private mQualityRatingId:Ljava/lang/String;

.field private mRankByUser:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/horizon/api/rating/RankReviewRequest;->mQualityRatingId:Ljava/lang/String;

    .line 20
    iget-object v0, p2, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->rankString:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/horizon/api/rating/RankReviewRequest;->mRankByUser:Ljava/lang/String;

    .line 21
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
    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "quality_rating_id"

    iget-object v2, p0, Lcom/oculus/horizon/api/rating/RankReviewRequest;->mQualityRatingId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/oculus/horizon/api/rating/RankReviewRequest;->mRankByUser:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/oculus/horizon/api/rating/RankReviewRequest;->mRankByUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string/jumbo v1, "rank_by_user"

    iget-object v2, p0, Lcom/oculus/horizon/api/rating/RankReviewRequest;->mRankByUser:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
