.class Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;
.super Ljava/lang/Object;
.source "ReviewViewHolder.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->rankReview(Lcom/oculus/horizon/api/common/Item$QualityRating;Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

.field final synthetic val$rank:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

.field final synthetic val$rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;ZLcom/oculus/horizon/api/common/Item$QualityRating$Rank;Lcom/oculus/horizon/api/common/Item$QualityRating;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iput-boolean p2, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$showToast:Z

    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$rank:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    iput-object p4, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$showToast:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    invoke-static {v0, v2}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->access$300(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;Z)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$rank:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    sget-object v3, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->HELPFUL:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 295
    :goto_0
    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iget-object v3, v3, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setSelected(Z)V

    .line 296
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v0, v2, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    add-int/lit8 v3, v0, -0x1

    iput v3, v2, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    :goto_2
    iput v0, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setCount(I)V

    .line 299
    return-void

    :cond_1
    move v0, v2

    .line 294
    goto :goto_0

    :cond_2
    move v1, v2

    .line 295
    goto :goto_1

    .line 296
    :cond_3
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v0, v2, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v2, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    goto :goto_2
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 281
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->success(Ljava/lang/Void;Lretrofit/client/Response;)V

    return-void
.end method

.method public success(Ljava/lang/Void;Lretrofit/client/Response;)V
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->val$showToast:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->access$300(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;Z)V

    .line 287
    :cond_0
    return-void
.end method
