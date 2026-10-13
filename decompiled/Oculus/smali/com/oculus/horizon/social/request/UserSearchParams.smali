.class public Lcom/oculus/horizon/social/request/UserSearchParams;
.super Ljava/lang/Object;
.source "UserSearchParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final cursor:Ljava/lang/String;

.field public final searchString:Ljava/lang/String;

.field public final searchType:Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oculus/horizon/social/request/UserSearchParams;->searchString:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/oculus/horizon/social/request/UserSearchParams;->searchType:Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;

    .line 33
    iput-object p3, p0, Lcom/oculus/horizon/social/request/UserSearchParams;->cursor:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "query_string"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/UserSearchParams;->searchString:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "search_mode"

    iget-object v2, p0, Lcom/oculus/horizon/social/request/UserSearchParams;->searchType:Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;

    .line 41
    invoke-virtual {v2}, Lcom/oculus/horizon/social/request/UserSearchParams$SearchType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 42
    const-string v0, "input"

    .line 45
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    const/16 v3, 0x1e

    .line 47
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cursor"

    iget-object v5, p0, Lcom/oculus/horizon/social/request/UserSearchParams;->cursor:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oculus/horizon/social/request/UserSearchParams;->cursor:Ljava/lang/String;

    .line 43
    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    const-string v5, ""

    goto :goto_0
.end method
