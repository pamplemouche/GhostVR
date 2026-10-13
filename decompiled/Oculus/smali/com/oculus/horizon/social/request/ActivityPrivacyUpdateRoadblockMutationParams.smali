.class public Lcom/oculus/horizon/social/request/ActivityPrivacyUpdateRoadblockMutationParams;
.super Ljava/lang/Object;
.source "ActivityPrivacyUpdateRoadblockMutationParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/oculus/horizon/social/request/ActivityPrivacyUpdateRoadblockMutationParams;->value:Z

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v1, "value"

    iget-boolean v0, p0, Lcom/oculus/horizon/social/request/ActivityPrivacyUpdateRoadblockMutationParams;->value:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 27
    :goto_0
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
