.class public Lcom/oculus/horizon/api/rating/ReviewsRequest;
.super Ljava/lang/Object;
.source "ReviewsRequest.java"


# instance fields
.field private final mCount:I

.field private final mCursor:Ljava/lang/String;

.field private final mFilterOptions:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemId:Ljava/lang/String;

.field private final mSortOption:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mItemId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mCursor:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mCount:I

    .line 27
    iput-object p4, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mSortOption:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mFilterOptions:Lcom/google/common/collect/ImmutableMap;

    .line 29
    return-void
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 5
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
    .line 33
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "item_id"

    iget-object v2, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mItemId:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "count"

    iget v2, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mCount:I

    .line 35
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "sort_order"

    iget-object v2, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mSortOption:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mFilterOptions:Lcom/google/common/collect/ImmutableMap;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mFilterOptions:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mFilterOptions:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 40
    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mFilterOptions:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 42
    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mCursor:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 45
    const-string v0, "cursor"

    iget-object v1, p0, Lcom/oculus/horizon/api/rating/ReviewsRequest;->mCursor:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 47
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method
