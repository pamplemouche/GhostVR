.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;
.super Ljava/lang/Object;
.source "CreditCardFormFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 151
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$000(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->determineCardAssociation(Ljava/lang/String;)Lcom/oculus/util/commerce/PaymentCardAssociation;

    move-result-object v0

    .line 164
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 167
    invoke-static {v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->getMaxFormattedLength(Lcom/oculus/util/commerce/PaymentCardAssociation;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 169
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$000(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 170
    invoke-static {p1, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$100(Landroid/text/Editable;Lcom/oculus/util/commerce/PaymentCardAssociation;)V

    .line 171
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getIconDrawableId()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$200(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/text/Editable;I)V

    .line 172
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v1, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$300(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Lcom/oculus/util/commerce/PaymentCardAssociation;)V

    .line 173
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$000(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 174
    invoke-static {v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->getMaxFormattedLength(Lcom/oculus/util/commerce/PaymentCardAssociation;)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$000(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$400(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/view/View;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$000(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
