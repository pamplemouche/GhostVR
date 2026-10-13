.class Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "PaymentMethodSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->onDeletePaymentMethod(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->access$200(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;Lcom/oculus/http/core/base/ApiError;)V

    .line 109
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$1;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Deleted payment method successfully"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$1;->this$0:Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;->access$100(Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;)V

    .line 104
    return-void
.end method
