.class public Lcom/oculus/horizon/api/store/SectionItemsRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "SectionItemsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/oculus/horizon/api/store/SectionItemsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final categoryId:Ljava/lang/String;

.field public final controllerFilter:Ljava/lang/String;

.field public final count:Ljava/lang/Integer;

.field public final cursor:Ljava/lang/String;

.field public final genreFilter:Ljava/lang/String;

.field public final ordering:Ljava/lang/String;

.field public final priceFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->count:Ljava/lang/Integer;

    .line 39
    iput-object p2, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->cursor:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->categoryId:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->ordering:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->genreFilter:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->priceFilter:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->controllerFilter:Ljava/lang/String;

    .line 45
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
    .line 48
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "count"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->cursor:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    const-string v1, "cursor"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->categoryId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const-string v1, "category"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->ordering:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    const-string v1, "ordering"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->ordering:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->genreFilter:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 60
    const-string v1, "genre"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->genreFilter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->priceFilter:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 63
    const-string v1, "price"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->priceFilter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->controllerFilter:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 66
    const-string v1, "controller"

    iget-object v2, p0, Lcom/oculus/horizon/api/store/SectionItemsRequest;->controllerFilter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 68
    :cond_5
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
