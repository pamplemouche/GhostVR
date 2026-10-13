.class Lcom/oculus/horizon/pdp/PdpFragment$4;
.super Ljava/lang/Object;
.source "PdpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/PdpFragment;->setupStoreWideOffers(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/PdpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/PdpFragment;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/oculus/horizon/pdp/PdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    .line 267
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/PdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/PdpFragment;

    iget-object v2, v2, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    sget-object v3, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->UNREDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    sget-object v4, Lcom/oculus/horizon/logging/TrackingViews$View;->PRODUCT_DETAILS:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 266
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->launchMe(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;Lcom/oculus/horizon/store/StoreWideOfferModel;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 272
    return-void
.end method
