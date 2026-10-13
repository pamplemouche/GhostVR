.class Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$3;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PaymentMethodSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/commerce/PaymentMethodsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$3;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 148
    invoke-static {}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fail to fetch credit card information: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$3;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->access$300(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;)Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$3;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->access$300(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;)Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;->showErrorView()V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/api/commerce/PaymentMethodsResponse;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$3;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->access$300(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;)Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$3;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->onPaymentMethodsResponse(Lcom/oculus/horizon/api/commerce/PaymentMethodsResponse;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Lcom/oculus/horizon/api/commerce/PaymentMethodsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$3;->onResponse(Lcom/oculus/horizon/api/commerce/PaymentMethodsResponse;)V

    return-void
.end method
