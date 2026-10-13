.class Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;
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

.field final synthetic val$purchaseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    iput-object p2, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;->val$purchaseToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->access$000(Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 261
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    const-class v2, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    const-string v1, "extra_purchase_token"

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;->val$purchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v1, "extra_offer_id"

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-static {v2}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->access$100(Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v1, "action_continue_checkout"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-virtual {v1, v0, v3}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    return-void
.end method
