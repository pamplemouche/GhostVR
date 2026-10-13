.class Lcom/oculus/horizon/pdp/BundlePdpFragment$2;
.super Ljava/lang/Object;
.source "BundlePdpFragment.java"

# interfaces
.implements Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/BundlePdpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/BundlePdpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/BundlePdpFragment;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment$2;->this$0:Lcom/oculus/horizon/pdp/BundlePdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment$2;->this$0:Lcom/oculus/horizon/pdp/BundlePdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->access$100(Lcom/oculus/horizon/pdp/BundlePdpFragment;)V

    .line 155
    return-void
.end method
