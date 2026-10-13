.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$8;
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
    .line 557
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$8;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$8;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$1200(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 561
    const/4 v0, 0x0

    return v0
.end method
