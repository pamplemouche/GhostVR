.class public Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionParams;
.super Ljava/lang/Object;
.source "GraphQLQuickPromotionParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final surfaceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionParams;->surfaceId:I

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "id"

    iget v2, p0, Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionParams;->surfaceId:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
