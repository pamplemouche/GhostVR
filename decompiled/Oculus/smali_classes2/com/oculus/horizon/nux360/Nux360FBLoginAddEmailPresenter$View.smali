.class public interface abstract Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter$View;
.super Ljava/lang/Object;
.source "Nux360FBLoginAddEmailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract clearEmailError()V
.end method

.method public abstract getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
.end method

.method public abstract hideLoading()V
.end method

.method public abstract proceedNext()V
.end method

.method public abstract registerFBLoginAccount()V
.end method

.method public abstract showEmailAlreadyTakenError()V
.end method

.method public abstract showEmailFormatError(Lcom/oculus/horizon/util/validators/EmailValidator$Error;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showLoginError()V
.end method

.method public abstract showNetworkError()V
.end method
