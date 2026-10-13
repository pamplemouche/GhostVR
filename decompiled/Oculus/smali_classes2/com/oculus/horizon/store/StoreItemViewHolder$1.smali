.class Lcom/oculus/horizon/store/StoreItemViewHolder$1;
.super Ljava/lang/Object;
.source "StoreItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreItemViewHolder;->setOnClickListener(Lcom/oculus/horizon/store/StoreItemModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

.field final synthetic val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

.field final synthetic val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

.field final synthetic val$roadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

.field final synthetic val$storeItemModel:Lcom/oculus/horizon/store/StoreItemModel;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreItemViewHolder;Lcom/oculus/horizon/logging/OculusLogger;Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iput-object p3, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$storeItemModel:Lcom/oculus/horizon/store/StoreItemModel;

    iput-object p4, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$roadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    iput-object p5, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreItemViewHolder;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$storeItemModel:Lcom/oculus/horizon/store/StoreItemModel;

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreItemModel;->itemId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v3, v3, Lcom/oculus/horizon/store/StoreItemViewHolder;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportTileClick(Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mSearchText:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportSearchExit()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$storeItemModel:Lcom/oculus/horizon/store/StoreItemModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreItemModel;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$storeItemModel:Lcom/oculus/horizon/store/StoreItemModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreItemModel;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$roadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;->shouldRoadblock(Lcom/oculus/model/StoreRoadblockModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreItemViewHolder;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 236
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$storeItemModel:Lcom/oculus/horizon/store/StoreItemModel;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v4, v4, Lcom/oculus/horizon/store/StoreItemViewHolder;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 235
    invoke-static {v1, v0, v2, v3, v4}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->show(Landroidx/fragment/app/FragmentManager;Lcom/oculus/model/StoreRoadblockModel;Lcom/oculus/horizon/store/StoreItemModel;Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 248
    :goto_1
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mSectionRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 244
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$fragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->val$storeItemModel:Lcom/oculus/horizon/store/StoreItemModel;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v3, v3, Lcom/oculus/horizon/store/StoreItemViewHolder;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 243
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/store/StoreUtils;->navigateFromStoreItemModel(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    goto :goto_1
.end method
