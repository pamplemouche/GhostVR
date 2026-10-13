.class Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PromotionFetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/promotion/PromotionFetchHelper;->fetchForSurface(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/promotion/PromotionFetchHelper;

.field final synthetic val$surfaceId:I

.field final synthetic val$trigger:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/promotion/PromotionFetchHelper;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionFetchHelper;

    iput p2, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$surfaceId:I

    iput-object p3, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$trigger:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionFetchHelper;

    invoke-static {v0}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;->access$200(Lcom/oculus/horizon/promotion/PromotionFetchHelper;)Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$surfaceId:I

    iget-object v2, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$trigger:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oculus/horizon/promotion/PromotionManager;->onFetchError(ILjava/lang/String;Lcom/oculus/http/core/base/ApiError;)V

    .line 72
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse;)V
    .locals 5

    .prologue
    .line 51
    iget-object v0, p1, Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse;->eligible_promotions:Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse$EligiblePromotions;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "Null response.eligible_promotions!"

    .line 53
    iget-object v1, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionFetchHelper;

    invoke-static {v1}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;->access$100(Lcom/oculus/horizon/promotion/PromotionFetchHelper;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v1

    invoke-static {}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionFetchHelper;

    invoke-static {v1}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;->access$200(Lcom/oculus/horizon/promotion/PromotionFetchHelper;)Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v1

    iget v2, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$surfaceId:I

    iget-object v3, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$trigger:Ljava/lang/String;

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {v4}, Lcom/oculus/http/core/base/ApiError;->makeValidationError(Ljava/lang/RuntimeException;)Lcom/oculus/http/core/base/ApiError;

    move-result-object v0

    .line 54
    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/horizon/promotion/PromotionManager;->onFetchError(ILjava/lang/String;Lcom/oculus/http/core/base/ApiError;)V

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse;->eligible_promotions:Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse$EligiblePromotions;

    iget-object v0, v0, Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse$EligiblePromotions;->nodes:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionFetchHelper;

    invoke-static {v0}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;->access$300(Lcom/oculus/horizon/promotion/PromotionFetchHelper;)Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionFetchHelper;

    .line 63
    invoke-static {v1}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;->access$200(Lcom/oculus/horizon/promotion/PromotionFetchHelper;)Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v1

    iget v2, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$surfaceId:I

    iget-object v3, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$trigger:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;->doRoadblockPromotionFetch(Lcom/oculus/horizon/promotion/PromotionManager;ILjava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionFetchHelper;

    invoke-static {v1}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;->access$200(Lcom/oculus/horizon/promotion/PromotionFetchHelper;)Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v1

    iget v2, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$surfaceId:I

    iget-object v3, p0, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->val$trigger:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/horizon/promotion/PromotionManager;->onFetchResponse(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/promotion/PromotionFetchHelper$1;->onResponse(Lcom/oculus/horizon/promotion/query/GraphQLQuickPromotionResponse;)V

    return-void
.end method
