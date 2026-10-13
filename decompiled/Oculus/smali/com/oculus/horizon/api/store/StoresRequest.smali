.class public Lcom/oculus/horizon/api/store/StoresRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "StoresRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;,
        Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/store/StoresResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final appStoreOverride:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

.field public final conceptsStoreOverride:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

.field public final storeVersion:Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;Z)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/api/store/StoresRequest;->storeVersion:Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    .line 44
    if-eqz p2, :cond_0

    sget-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->TEST_STORE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/api/store/StoresRequest;->appStoreOverride:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    .line 45
    if-eqz p2, :cond_1

    sget-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->CONCEPTS_TEST_STORE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    :goto_1
    iput-object v0, p0, Lcom/oculus/horizon/api/store/StoresRequest;->conceptsStoreOverride:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    .line 46
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->NONE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->NONE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    goto :goto_1
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
    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "app_store_override"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/StoresRequest;->appStoreOverride:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    iget-object v2, v2, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->graphQLString:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "concepts_store_override"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/StoresRequest;->conceptsStoreOverride:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    iget-object v2, v2, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->graphQLString:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
