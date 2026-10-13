.class Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;
.super Ljava/lang/Object;
.source "ReviewsHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;-><init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;

.field final synthetic val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

.field final synthetic val$fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;->val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;->val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;

    .line 37
    invoke-static {v2}, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;->access$000(Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;

    .line 38
    invoke-static {v3}, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;->access$000(Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->package_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;

    .line 39
    invoke-static {v4}, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;->access$000(Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v4

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget v4, v4, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version_code:I

    sget-object v5, Lcom/oculus/horizon/logging/TrackingViews$View;->USER_REVIEWS_SEE_ALL:Lcom/oculus/horizon/logging/TrackingViews$View;

    const/4 v6, 0x0

    .line 34
    invoke-static/range {v0 .. v6}, Lcom/oculus/horizon/store/StoreUtils;->openReviewFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/lang/String;ILcom/oculus/horizon/logging/TrackingViews$View;Lcom/oculus/horizon/api/common/Item$QualityRating;)V

    .line 42
    return-void
.end method
