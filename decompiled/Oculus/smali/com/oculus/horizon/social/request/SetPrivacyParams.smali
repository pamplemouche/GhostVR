.class public Lcom/oculus/horizon/social/request/SetPrivacyParams;
.super Ljava/lang/Object;
.source "SetPrivacyParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final identityInSearch:Ljava/lang/String;

.field public final privacy:Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;

.field public final privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams;->privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    .line 27
    new-instance v0, Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;

    invoke-direct {v0, p2, p3}, Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;-><init>(Lcom/oculus/horizon/social/model/PrivacyState;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams;->privacy:Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;

    .line 31
    invoke-virtual {p1}, Lcom/oculus/horizon/social/model/PrivacyConcept;->shouldAlwaysSendIdentityInSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->ENABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    .line 32
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams;->identityInSearch:Ljava/lang/String;

    .line 34
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "privacy_concept"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams;->privacyConcept:Lcom/oculus/horizon/social/model/PrivacyConcept;

    iget-object v2, v2, Lcom/oculus/horizon/social/model/PrivacyConcept;->graphQLName:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "privacy"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams;->privacy:Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;

    .line 41
    invoke-virtual {v2}, Lcom/oculus/horizon/social/request/SetPrivacyParams$Privacy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams;->identityInSearch:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "identity_in_search"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/SetPrivacyParams;->identityInSearch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
