.class Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;
.super Ljava/lang/Object;
.source "ViewerReviewViewHolder.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;->this$1:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->update_review:I

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;->this$1:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;

    iget-object v0, v0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;->this$1:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;

    iget-object v1, v1, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;->this$1:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;

    iget-object v2, v2, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

    .line 56
    invoke-static {v2}, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->access$000(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;->this$1:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;

    iget-object v3, v3, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

    .line 57
    invoke-static {v3}, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;)Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->package_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;->this$1:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;

    iget-object v4, v4, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

    .line 58
    invoke-static {v4}, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;)Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    move-result-object v4

    iget v4, v4, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version_code:I

    sget-object v5, Lcom/oculus/horizon/logging/TrackingViews$View;->USER_REVIEWS_SEE_ALL:Lcom/oculus/horizon/logging/TrackingViews$View;

    iget-object v6, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1$1;->this$1:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;

    iget-object v6, v6, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

    iget-object v6, v6, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/oculus/horizon/store/StoreUtils;->openReviewFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/lang/String;ILcom/oculus/horizon/logging/TrackingViews$View;Lcom/oculus/horizon/api/common/Item$QualityRating;)V

    .line 62
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
