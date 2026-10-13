.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;
.super Ljava/lang/Object;
.source "CreditCardFormFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 236
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$700(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$800(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$900(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$1000(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$700(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 244
    :cond_0
    return-void
.end method
