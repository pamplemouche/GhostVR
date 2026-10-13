.class public interface abstract Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter$TwoFactorMethodsView;
.super Ljava/lang/Object;
.source "TwoFactorMethodsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/twofac/TwoFactorMethodsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TwoFactorMethodsView"
.end annotation


# virtual methods
.method public abstract setMethods(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract showError()V
.end method

.method public abstract showError(Ljava/lang/CharSequence;)V
.end method

.method public abstract startLoadingState()V
.end method

.method public abstract stopLoadingState()V
.end method

.method public abstract twoFactorCodeSent(Z)V
.end method
