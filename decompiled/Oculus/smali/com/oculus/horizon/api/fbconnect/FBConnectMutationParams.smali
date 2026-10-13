.class public Lcom/oculus/horizon/api/fbconnect/FBConnectMutationParams;
.super Ljava/lang/Object;
.source "FBConnectMutationParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final facebookId:Ljava/lang/String;

.field private final friendPolicy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;)V
    .locals 1
    .param p3    # Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectMutationParams;->accessToken:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectMutationParams;->facebookId:Ljava/lang/String;

    .line 23
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectMutationParams;->friendPolicy:Ljava/lang/String;

    .line 24
    return-void

    .line 23
    :cond_0
    invoke-virtual {p3}, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 29
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectMutationParams;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 30
    const-string v1, "facebook_id"

    iget-object v2, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectMutationParams;->facebookId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 31
    iget-object v1, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectMutationParams;->friendPolicy:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const-string v1, "friend_policy"

    iget-object v2, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectMutationParams;->friendPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
