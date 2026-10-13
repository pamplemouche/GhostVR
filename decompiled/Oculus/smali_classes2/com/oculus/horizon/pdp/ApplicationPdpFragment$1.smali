.class Lcom/oculus/horizon/pdp/ApplicationPdpFragment$1;
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
    .line 315
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$1;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$1;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$1;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    iget-object v1, v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$1;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-static {v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$000(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/store/StoreUtils;->openReviewsFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/api/common/Item;)V

    .line 319
    return-void
.end method
