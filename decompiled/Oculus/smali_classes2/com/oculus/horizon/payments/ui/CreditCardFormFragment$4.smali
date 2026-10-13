.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$4;
.super Ljava/lang/Object;
.source "CreditCardFormFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 221
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$4;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$4;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$600(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$4;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$600(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;->hideKeyboardAndRemoveFocus()V

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$4;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$600(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;->submit()V

    .line 230
    :cond_0
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
