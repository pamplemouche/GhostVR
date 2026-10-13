.class Lcom/oculus/horizon/pdp/util/ReviewPager$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "ReviewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/util/ReviewPager;->load(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/common/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/util/ReviewPager;

.field final synthetic val$cursor:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/util/ReviewPager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oculus/horizon/pdp/util/ReviewPager$1;->this$0:Lcom/oculus/horizon/pdp/util/ReviewPager;

    iput-object p2, p0, Lcom/oculus/horizon/pdp/util/ReviewPager$1;->val$cursor:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager$1;->this$0:Lcom/oculus/horizon/pdp/util/ReviewPager;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/util/ReviewPager$1;->val$cursor:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/pdp/util/ReviewPager;->access$200(Lcom/oculus/horizon/pdp/util/ReviewPager;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/common/Item;)V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager$1;->this$0:Lcom/oculus/horizon/pdp/util/ReviewPager;

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/util/ReviewPager;->access$000(Lcom/oculus/horizon/pdp/util/ReviewPager;Lcom/oculus/horizon/api/common/Item;)V

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/pdp/util/ReviewPager$1;->this$0:Lcom/oculus/horizon/pdp/util/ReviewPager;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->user_reviews2:Lcom/oculus/horizon/api/common/Item$QualityRatings;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRatings;->nodes:Ljava/util/List;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/util/ReviewPager$1;->val$cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->user_reviews2:Lcom/oculus/horizon/api/common/Item$QualityRatings;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$QualityRatings;->page_info:Lcom/oculus/horizon/api/common/PageInfo;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PageInfo;->end_cursor:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/horizon/api/common/Item;->user_reviews2:Lcom/oculus/horizon/api/common/Item$QualityRatings;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item$QualityRatings;->page_info:Lcom/oculus/horizon/api/common/PageInfo;

    iget-boolean v4, v4, Lcom/oculus/horizon/api/common/PageInfo;->has_next_page:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/pdp/util/ReviewPager;->access$100(Lcom/oculus/horizon/pdp/util/ReviewPager;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 60
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/util/ReviewPager$1;->onResponse(Lcom/oculus/horizon/api/common/Item;)V

    return-void
.end method
