.class Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PromotionLoggingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/promotion/PromotionLoggingHelper;->markPromotionAction(ILjava/lang/String;Lcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/promotion/query/GraphQLLogEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/promotion/PromotionLoggingHelper;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$promotion:Lcom/oculus/horizon/promotion/Promotion;

.field final synthetic val$surfaceId:I

.field final synthetic val$trigger:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/promotion/PromotionLoggingHelper;ILcom/oculus/horizon/promotion/Promotion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionLoggingHelper;

    iput p2, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$surfaceId:I

    iput-object p3, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$promotion:Lcom/oculus/horizon/promotion/Promotion;

    iput-object p4, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$trigger:Ljava/lang/String;

    iput-object p5, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$actionName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionLoggingHelper;

    invoke-static {v0}, Lcom/oculus/horizon/promotion/PromotionLoggingHelper;->access$000(Lcom/oculus/horizon/promotion/PromotionLoggingHelper;)Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$surfaceId:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/promotion/PromotionManager;->onLogCompleted(I)V

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionLoggingHelper;

    invoke-static {v0}, Lcom/oculus/horizon/promotion/PromotionLoggingHelper;->access$100(Lcom/oculus/horizon/promotion/PromotionLoggingHelper;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$promotion:Lcom/oculus/horizon/promotion/Promotion;

    .line 60
    invoke-virtual {v1}, Lcom/oculus/horizon/promotion/Promotion;->getPromotionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$trigger:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$promotion:Lcom/oculus/horizon/promotion/Promotion;

    invoke-virtual {v3}, Lcom/oculus/horizon/promotion/Promotion;->getLoggingData()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$actionName:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->logPromotionAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/promotion/query/GraphQLLogEventResponse;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->this$0:Lcom/oculus/horizon/promotion/PromotionLoggingHelper;

    invoke-static {v0}, Lcom/oculus/horizon/promotion/PromotionLoggingHelper;->access$000(Lcom/oculus/horizon/promotion/PromotionLoggingHelper;)Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->val$surfaceId:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/promotion/PromotionManager;->onLogCompleted(I)V

    .line 52
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/oculus/horizon/promotion/query/GraphQLLogEventResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/promotion/PromotionLoggingHelper$1;->onResponse(Lcom/oculus/horizon/promotion/query/GraphQLLogEventResponse;)V

    return-void
.end method
