.class public Lcom/oculus/horizon/api/media/CastNotifRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "CastNotifRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/media/CastNotifResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCastServerUrl:Ljava/lang/String;

.field public final mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/oculus/horizon/api/media/CastNotifRequest;->mCastServerUrl:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/oculus/horizon/api/media/CastNotifRequest;->mSessionId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "client_mutation_id"

    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "cast_server_url"

    iget-object v2, p0, Lcom/oculus/horizon/api/media/CastNotifRequest;->mCastServerUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "session_id"

    iget-object v2, p0, Lcom/oculus/horizon/api/media/CastNotifRequest;->mSessionId:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
