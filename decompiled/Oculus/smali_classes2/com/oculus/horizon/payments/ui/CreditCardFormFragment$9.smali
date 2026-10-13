.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$9;
.super Ljava/lang/Object;
.source "CreditCardFormFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCountrySelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$9;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$9;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$1300(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/core/common/CountryCode;

    .line 551
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$9;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v1, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$1400(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Lcom/oculus/http/core/common/CountryCode;)V

    .line 552
    const/4 v0, 0x0

    return v0
.end method
