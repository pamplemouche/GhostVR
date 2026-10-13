.class Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$3;
.super Ljava/lang/Object;
.source "AddPaymentMethodActivity.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->createAndShowCancellationModal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$3;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$3;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$300(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_ADD_PAYMENT_METHOD_CANCEL_CONFIRMED:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 325
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$3;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->setResult(I)V

    .line 326
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$3;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->finish()V

    .line 327
    const/4 v0, 0x0

    return v0
.end method
