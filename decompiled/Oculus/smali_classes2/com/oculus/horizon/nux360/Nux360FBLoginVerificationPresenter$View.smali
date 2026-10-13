.class public interface abstract Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter$View;
.super Ljava/lang/Object;
.source "Nux360FBLoginVerificationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract doFBAuth(Lcom/facebook/AccessToken;)V
.end method

.method public abstract getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
.end method

.method public abstract hideLoading()V
.end method

.method public abstract proceedNext()V
.end method

.method public abstract showEmail(Ljava/lang/String;)V
.end method

.method public abstract showEmailSent()V
.end method

.method public abstract showEmailVerified()V
.end method

.method public abstract showLoginError()V
.end method
