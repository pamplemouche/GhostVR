.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$10;
.super Ljava/lang/Object;
.source "CreditCardFormFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->onSelectCountry(Lcom/oculus/http/core/common/CountryCode;)V
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
    .line 597
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$10;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$10;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$1500(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$10;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$1600(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 601
    return-void
.end method
