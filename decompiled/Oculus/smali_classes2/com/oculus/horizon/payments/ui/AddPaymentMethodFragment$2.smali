.class Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$2;
.super Ljava/lang/Object;
.source "AddPaymentMethodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->access$000(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V

    .line 76
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->access$100(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V

    .line 77
    check-cast v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->setupPayPal()V

    goto :goto_0
.end method
