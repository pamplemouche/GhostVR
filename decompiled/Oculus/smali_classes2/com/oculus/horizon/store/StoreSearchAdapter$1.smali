.class Lcom/oculus/horizon/store/StoreSearchAdapter$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "StoreSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSearchAdapter;->doSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/store/UniversalSearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

.field final synthetic val$thisSearchSequenceNumber:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSearchAdapter;I)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    iput p2, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->val$thisSearchSequenceNumber:I

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 324
    invoke-static {}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received an error response from the server while searching. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 326
    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 323
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    iget v1, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->val$thisSearchSequenceNumber:I

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$1000(Lcom/oculus/horizon/store/StoreSearchAdapter;I)V

    .line 328
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$700(Lcom/oculus/horizon/store/StoreSearchAdapter;)Lcom/oculus/horizon/store/StoreSearchAdapter$SearchFilterUpdateListener;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/oculus/horizon/store/StoreSearchAdapter$SearchFilterUpdateListener;->onFiltersUpdated(Ljava/util/List;)V

    .line 330
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v0, v7}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$002(Lcom/oculus/horizon/store/StoreSearchAdapter;Z)Z

    .line 276
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$100(Lcom/oculus/horizon/store/StoreSearchAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/horizon/api/store/UniversalSearchResponse;->getResults()Ljava/util/List;

    move-result-object v0

    .line 280
    invoke-static {}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got [%d] results"

    iget-object v3, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse;->results:Lcom/oculus/horizon/api/store/UniversalSearchResponse$Results;

    iget-object v3, v3, Lcom/oculus/horizon/api/store/UniversalSearchResponse$Results;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$300(Lcom/oculus/horizon/store/StoreSearchAdapter;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$300(Lcom/oculus/horizon/store/StoreSearchAdapter;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_1
    sget-object v1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->UNIVERSAL_SEARCH_SET:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    .line 285
    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreUtils;->filterForSupportedItems(Ljava/util/List;Lcom/oculus/horizon/store/StoreUtils$FilteringSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/oculus/horizon/store/StoreSearchAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/StoreSearchAdapter$1$1;-><init>(Lcom/oculus/horizon/store/StoreSearchAdapter$1;)V

    .line 289
    invoke-static {v0, v1}, Lcom/oculus/util/collection/CollectionUtil;->filter(Ljava/util/List;Lcom/oculus/util/collection/CollectionUtil$Filter;)Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 297
    sget-object v1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->APPS_ONLY:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    .line 298
    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreUtils;->filterForSupportedItems(Ljava/util/List;Lcom/oculus/horizon/store/StoreUtils$FilteringSet;)Lcom/google/common/collect/ImmutableList;

    .line 300
    new-instance v1, Lcom/oculus/horizon/store/StoreSection;

    const-string v2, "Search Results"

    const-string v3, "search_results"

    const-string v4, "Search Results Content"

    .line 306
    invoke-static {}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$400()Ljava/util/List;

    move-result-object v6

    const-wide/16 v10, 0x0

    move-object v8, v5

    move-object v9, v5

    move-object v12, v5

    invoke-direct/range {v1 .. v12}, Lcom/oculus/horizon/store/StoreSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/oculus/horizon/store/StoreAssetMedia;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V

    .line 312
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 313
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 314
    iget-object v4, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v4}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$500(Lcom/oculus/horizon/store/StoreSearchAdapter;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/oculus/horizon/store/StoreUtils;->createStoreItemModel(Landroid/content/Context;Lcom/oculus/horizon/api/common/Item;Lcom/oculus/horizon/store/StoreSection;)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    iget v1, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->val$thisSearchSequenceNumber:I

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$600(Lcom/oculus/horizon/store/StoreSearchAdapter;ILjava/util/List;)V

    .line 317
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$700(Lcom/oculus/horizon/store/StoreSearchAdapter;)Lcom/oculus/horizon/store/StoreSearchAdapter$SearchFilterUpdateListener;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse;->filters:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/oculus/horizon/store/StoreSearchAdapter$SearchFilterUpdateListener;->onFiltersUpdated(Ljava/util/List;)V

    .line 318
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$900(Lcom/oculus/horizon/store/StoreSearchAdapter;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->this$0:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->access$800(Lcom/oculus/horizon/store/StoreSearchAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportSearchQuery(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreSearchAdapter$1;->onResponse(Lcom/oculus/horizon/api/store/UniversalSearchResponse;)V

    return-void
.end method
