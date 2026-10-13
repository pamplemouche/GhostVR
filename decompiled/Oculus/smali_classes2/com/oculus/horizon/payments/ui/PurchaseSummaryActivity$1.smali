.class Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$1;
.super Ljava/lang/Object;
.source "PurchaseSummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->reset()V

    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->finish()V

    .line 204
    return-void
.end method
