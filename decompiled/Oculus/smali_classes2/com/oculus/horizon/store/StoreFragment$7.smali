.class Lcom/oculus/horizon/store/StoreFragment$7;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreFragment;->makeRow(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreFragment;

.field final synthetic val$models:Ljava/util/List;

.field final synthetic val$storeSection:Lcom/oculus/horizon/store/StoreSection;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreFragment;Lcom/oculus/horizon/store/StoreSection;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment$7;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    iput-object p2, p0, Lcom/oculus/horizon/store/StoreFragment$7;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    iput-object p3, p0, Lcom/oculus/horizon/store/StoreFragment$7;->val$models:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 637
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$7;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$1100(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment$7;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;->shouldRoadblock(Lcom/oculus/model/StoreRoadblockModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$7;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 639
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment$7;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment$7;->val$models:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment$7;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    const-string v4, "tag"

    sget-object v5, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 638
    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->show(Landroidx/fragment/app/FragmentManager;Lcom/oculus/model/StoreRoadblockModel;Ljava/util/ArrayList;Lcom/oculus/horizon/store/StoreSection;Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 652
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$7;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 648
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v0, 0x0

    sget v2, Lcom/oculus/horizon/main/MainModule$UL_id;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment$7;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 649
    invoke-static {v3}, Lcom/oculus/horizon/store/StoreFragment;->access$100(Lcom/oculus/horizon/store/StoreFragment;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$7;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreFragment$7;->val$models:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 647
    invoke-static {v1, v0, v2, v3}, Lcom/oculus/horizon/store/StoreUtils;->openCategory(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
