.class public Lcom/oculus/horizon/social/request/UserMutationParams;
.super Ljava/lang/Object;
.source "UserMutationParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final parameterName:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->userId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->parameterName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->userId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->parameterName:Ljava/lang/String;

    .line 39
    invoke-virtual {p3}, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->source:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->parameterName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/UserMutationParams;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
