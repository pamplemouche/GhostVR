.class public interface abstract Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter$View;
.super Ljava/lang/Object;
.source "PaymentMethodSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/PaymentMethodSettingsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract getFragmentForUICallback()Lcom/oculus/horizon/base/OculusBaseFragment;
.end method

.method public abstract isViewDestroyed()Z
.end method

.method public abstract setPaymentMethods(Ljava/util/List;Lcom/oculus/horizon/api/common/PaymentMethod;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/PaymentMethod;",
            ">;",
            "Lcom/oculus/horizon/api/common/PaymentMethod;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showEmptyView()V
.end method

.method public abstract showErrorToast(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntegerRes;
        .end annotation
    .end param
.end method

.method public abstract showErrorView()V
.end method

.method public abstract showLoadingView()V
.end method

.method public abstract showPaymentMethodView()V
.end method
