.class public Lcom/oculus/horizon/social/request/SocialActivityParams;
.super Ljava/lang/Object;
.source "SocialActivityParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/request/SocialActivityParams$Role;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private mActivityID:Ljava/lang/String;

.field private mRole:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/horizon/social/request/SocialActivityParams$Role;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/oculus/horizon/social/request/SocialActivityParams;->mActivityID:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/oculus/horizon/social/request/SocialActivityParams;->mRole:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    .line 38
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/SocialActivityParams;->mActivityID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "role"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/SocialActivityParams;->mRole:Lcom/oculus/horizon/social/request/SocialActivityParams$Role;

    invoke-virtual {v2}, Lcom/oculus/horizon/social/request/SocialActivityParams$Role;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeAsNestedInputParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
