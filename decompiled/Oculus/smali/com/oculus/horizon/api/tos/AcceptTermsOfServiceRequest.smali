.class public Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "AcceptTermsOfServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public type:Lcom/oculus/horizon/api/tos/TosType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 15
    sget-object v0, Lcom/oculus/horizon/api/tos/TosType;->TOS:Lcom/oculus/horizon/api/tos/TosType;

    iput-object v0, p0, Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceRequest;->type:Lcom/oculus/horizon/api/tos/TosType;

    .line 16
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
    .line 19
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "client_mutation_id"

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "tos_type"

    iget-object v2, p0, Lcom/oculus/horizon/api/tos/AcceptTermsOfServiceRequest;->type:Lcom/oculus/horizon/api/tos/TosType;

    .line 21
    invoke-virtual {v2}, Lcom/oculus/horizon/api/tos/TosType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
