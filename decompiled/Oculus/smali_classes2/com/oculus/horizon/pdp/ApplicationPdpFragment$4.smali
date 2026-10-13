.class Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;
.super Ljava/lang/Object;
.source "ApplicationPdpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 351
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 352
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    iget-object v1, v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 354
    invoke-static {v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$200(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/model/BundleModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/model/BundleModel;->itemId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 355
    invoke-static {v3}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$200(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/model/BundleModel;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/model/BundleModel;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 356
    invoke-static {v4}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$200(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/model/BundleModel;

    move-result-object v4

    iget-object v4, v4, Lcom/oculus/model/BundleModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 357
    invoke-static {v5}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$300(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v5

    .line 351
    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/store/StoreUtils;->openBundlePdpFragmentForPurchase(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 358
    return-void
.end method
