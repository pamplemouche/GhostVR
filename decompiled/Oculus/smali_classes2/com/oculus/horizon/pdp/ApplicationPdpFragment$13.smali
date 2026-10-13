.class Lcom/oculus/horizon/pdp/ApplicationPdpFragment$13;
.super Ljava/lang/Object;
.source "ApplicationPdpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onItemDetailsResponse(Lcom/oculus/horizon/api/common/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

.field final synthetic val$roadblockModel:Lcom/oculus/model/StoreRoadblockModel;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;Lcom/oculus/model/StoreRoadblockModel;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$13;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    iput-object p2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$13;->val$roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$13;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 675
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$13;->val$roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$13;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-static {v3}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$300(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v3

    .line 674
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->show(Landroidx/fragment/app/FragmentManager;Lcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 676
    return-void
.end method
