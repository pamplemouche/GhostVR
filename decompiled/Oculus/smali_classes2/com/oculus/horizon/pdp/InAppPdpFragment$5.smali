.class Lcom/oculus/horizon/pdp/InAppPdpFragment$5;
.super Ljava/lang/Object;
.source "InAppPdpFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/InAppPdpFragment;->onCheckoutFlowModelUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$5;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$5;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$5;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->access$800(Lcom/oculus/horizon/pdp/InAppPdpFragment;)Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->access$702(Lcom/oculus/horizon/pdp/InAppPdpFragment;Lcom/oculus/horizon/payments/CheckoutFlowModel;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 685
    const/4 v0, 0x0

    return v0
.end method
