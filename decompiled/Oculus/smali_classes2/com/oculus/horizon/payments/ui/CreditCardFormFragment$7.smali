.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$7;
.super Ljava/lang/Object;
.source "CreditCardFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 272
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$7;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$7;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$600(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$7;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$600(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;->submit()V

    .line 278
    :cond_0
    return-void
.end method
