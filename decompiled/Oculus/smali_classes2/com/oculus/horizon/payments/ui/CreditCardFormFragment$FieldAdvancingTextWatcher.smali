.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;
.super Ljava/lang/Object;
.source "CreditCardFormFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldAdvancingTextWatcher"
.end annotation


# instance fields
.field private mExpectedLength:I

.field private mTextView:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/widget/EditText;I)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->mTextView:Landroid/widget/EditText;

    .line 681
    iput p3, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->mExpectedLength:I

    .line 682
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->mExpectedLength:I

    if-ne v0, v1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->mTextView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$400(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/view/View;)V

    .line 695
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 688
    return-void
.end method

.method public updateExpectedLength(I)V
    .locals 0

    .prologue
    .line 698
    iput p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->mExpectedLength:I

    .line 699
    return-void
.end method
