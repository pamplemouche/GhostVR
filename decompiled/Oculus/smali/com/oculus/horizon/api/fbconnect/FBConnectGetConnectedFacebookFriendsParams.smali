.class public Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsParams;
.super Ljava/lang/Object;
.source "FBConnectGetConnectedFacebookFriendsParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final facebookAccessToken:Ljava/lang/String;

.field private final first:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p2, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsParams;->first:I

    .line 21
    iput-object p1, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsParams;->facebookAccessToken:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    const-string v0, "facebook_access_token"

    iget-object v1, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsParams;->facebookAccessToken:Ljava/lang/String;

    .line 29
    invoke-static {v1}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->sensitiveString(Ljava/lang/String;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const-string v2, "first"

    iget v3, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectGetConnectedFacebookFriendsParams;->first:I

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 27
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
