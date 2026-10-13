.class public interface abstract Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;
.super Ljava/lang/Object;
.source "Nux360UserNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserNameView"
.end annotation


# virtual methods
.method public abstract clearUsernameError()V
.end method

.method public abstract hideLoading()V
.end method

.method public abstract proceedNext()V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showNetworkError()V
.end method

.method public abstract showUsernameFormatError(Lcom/oculus/horizon/util/validators/UsernameValidator$Error;)V
.end method

.method public abstract showUsernameTakenError()V
.end method
