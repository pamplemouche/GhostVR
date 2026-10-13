.class public Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;
.super Ljava/lang/Object;
.source "SetPrivacyParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/request/SetPrivacyParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Privacy"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final baseState:Lcom/oculus/horizon/social/model/PrivacyState;

.field public final includedUsers:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;->baseState:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 56
    iput-object p2, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;->includedUsers:[Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 62
    const-string v1, "base_state"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;->baseState:Lcom/oculus/horizon/social/model/PrivacyState;

    iget-object v2, v2, Lcom/oculus/horizon/social/model/PrivacyState;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 63
    iget-object v1, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;->includedUsers:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "included_users"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;->includedUsers:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
