.class Lcom/oculus/horizon/pdp/ApplicationPdpFragment$6;
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
    .line 376
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$6;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$6;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 381
    invoke-static {v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$000(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCRating;->rating_definition_uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$6;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method
