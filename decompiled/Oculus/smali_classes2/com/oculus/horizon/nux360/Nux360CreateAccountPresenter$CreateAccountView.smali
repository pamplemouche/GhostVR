.class public interface abstract Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter$CreateAccountView;
.super Ljava/lang/Object;
.source "Nux360CreateAccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreateAccountView"
.end annotation


# virtual methods
.method public abstract clearEmailError()V
.end method

.method public abstract clearPasswordError()V
.end method

.method public abstract hideLoading()V
.end method

.method public abstract proceedLoginNext()V
.end method

.method public abstract proceedNext()V
.end method

.method public abstract showEmailAlreadyTakenError()V
.end method

.method public abstract showEmailFormatError(Lcom/oculus/horizon/util/validators/EmailValidator$Error;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showNetworkError()V
.end method

.method public abstract showPasswordFormatError(Lcom/oculus/horizon/util/validators/PasswordValidator$Error;)V
.end method

.method public abstract showPasswordNotValidError()V
.end method
