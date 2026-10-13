.class public Lcom/oculus/horizon/api/item/GenerateDownloadUriRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "GenerateDownloadUriRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/item/GenerateDownloadUriResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final installedVersionCode:Ljava/lang/String;

.field public final itemId:Ljava/lang/String;


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 25
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/oculus/horizon/api/item/GenerateDownloadUriRequest;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 26
    iget-object v1, p0, Lcom/oculus/horizon/api/item/GenerateDownloadUriRequest;->installedVersionCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "installed_version_code"

    iget-object v2, p0, Lcom/oculus/horizon/api/item/GenerateDownloadUriRequest;->installedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 29
    :cond_0
    const-string v1, "params"

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
