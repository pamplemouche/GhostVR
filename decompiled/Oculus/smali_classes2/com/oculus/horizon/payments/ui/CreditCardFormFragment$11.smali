.class Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "CreditCardFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->fetchSupportedCountries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    iput-object p2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 631
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$1800(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Lcom/oculus/http/core/base/ApiError;)V

    .line 632
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;)V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 625
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;->this$0:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->access$1700(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;)V

    .line 626
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 621
    check-cast p1, Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;->onResponse(Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;)V

    return-void
.end method
