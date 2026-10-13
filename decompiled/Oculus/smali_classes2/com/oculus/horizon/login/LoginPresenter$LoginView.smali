.class public interface abstract Lcom/oculus/horizon/login/LoginPresenter$LoginView;
.super Ljava/lang/Object;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/login/LoginPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginView"
.end annotation


# virtual methods
.method public abstract proceedLoginApprovalsNext()V
.end method

.method public abstract proceedNext()V
.end method

.method public abstract proceedTwoFactorNext()V
.end method

.method public abstract showEmailError(Lcom/oculus/horizon/util/validators/EmailValidator$Error;)V
.end method

.method public abstract showPasswordError(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showPasswordError(Ljava/lang/CharSequence;)V
.end method

.method public abstract startLoadingState()V
.end method

.method public abstract stopLoadingState()V
.end method
