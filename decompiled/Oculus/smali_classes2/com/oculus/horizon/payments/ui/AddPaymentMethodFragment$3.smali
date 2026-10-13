.class Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$3;
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
    .line 91
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$3;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$3;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->access$200(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->PAYMENT_METHODS:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v1}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportRoadblockSkippedEvent(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$3;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$3;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 97
    return-void
.end method
