.class Lcom/oculus/horizon/pdp/ApplicationPdpFragment$7;
.super Ljava/lang/Object;
.source "ApplicationPdpFragment.java"

# interfaces
.implements Lcom/oculus/horizon/pdp/PdpCarouselAdapter$OnItemClickListener;


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
    .line 389
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$7;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$7;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 393
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$7;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$500(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->getIntent(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$7;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startActivity(Landroid/content/Intent;)V

    .line 395
    return-void
.end method
