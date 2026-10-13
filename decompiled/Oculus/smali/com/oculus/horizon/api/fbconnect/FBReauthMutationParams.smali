.class public Lcom/oculus/horizon/api/fbconnect/FBReauthMutationParams;
.super Ljava/lang/Object;
.source "FBReauthMutationParams.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final mAccessToken:Ljava/lang/String;

.field private final mProxyAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oculus/horizon/api/fbconnect/FBReauthMutationParams;->mAccessToken:Ljava/lang/String;

    .line 22
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/oculus/horizon/api/fbconnect/FBReauthMutationParams;->mProxyAccessToken:Ljava/lang/String;

    .line 23
    return-void

    .line 22
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/oculus/horizon/api/fbconnect/FBReauthMutationParams;->mAccessToken:Ljava/lang/String;

    const-string v2, "proxy_access_token"

    iget-object v3, p0, Lcom/oculus/horizon/api/fbconnect/FBReauthMutationParams;->mProxyAccessToken:Ljava/lang/String;

    .line 28
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
