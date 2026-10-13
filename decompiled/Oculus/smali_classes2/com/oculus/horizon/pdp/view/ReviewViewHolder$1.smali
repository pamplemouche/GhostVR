.class Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;
.super Ljava/lang/Object;
.source "ReviewViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->setupListeners(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

.field final synthetic val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

.field final synthetic val$fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->developer_response:Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    iget-object v2, v2, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    .line 106
    invoke-virtual {v3}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->isViewerReview()Z

    move-result v3

    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    invoke-static {v4}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->access$000(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    invoke-static {v5}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;)Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    move-result-object v5

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/store/StoreUtils;->openReviewCommentFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/api/common/Item$QualityRating;ZLjava/lang/String;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)V

    .line 108
    :cond_0
    return-void
.end method
