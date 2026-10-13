.class public interface abstract Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;
.super Ljava/lang/Object;
.source "Nux360FBLoginConnectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
.end method

.method public abstract hideInvalidCredentialsError()V
.end method

.method public abstract hideLoading()V
.end method

.method public abstract proceedLoginApprovalsNext()V
.end method

.method public abstract proceedNext()V
.end method

.method public abstract proceedTwoFactorNext()V
.end method

.method public abstract showInvalidCredentialsError()V
.end method

.method public abstract showLoading()V
.end method
