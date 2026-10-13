.class public Lcom/oculus/horizon/api/fbconnect/FBProxyInstallMutationParams;
.super Ljava/lang/Object;
.source "FBProxyInstallMutationParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final facebookAccessToken:Ljava/lang/String;

.field private final facebookId:Ljava/lang/String;

.field private final friendPolicy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/horizon/api/fbconnect/FBProxyInstallMutationParams;->facebookId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oculus/horizon/api/fbconnect/FBProxyInstallMutationParams;->facebookAccessToken:Ljava/lang/String;

    .line 21
    invoke-virtual {p3}, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/fbconnect/FBProxyInstallMutationParams;->friendPolicy:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 26
    const-string v0, "facebook_id"

    iget-object v1, p0, Lcom/oculus/horizon/api/fbconnect/FBProxyInstallMutationParams;->facebookId:Ljava/lang/String;

    const-string v2, "facebook_access_token"

    iget-object v3, p0, Lcom/oculus/horizon/api/fbconnect/FBProxyInstallMutationParams;->facebookAccessToken:Ljava/lang/String;

    const-string v4, "friend_policy"

    iget-object v5, p0, Lcom/oculus/horizon/api/fbconnect/FBProxyInstallMutationParams;->friendPolicy:Ljava/lang/String;

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
