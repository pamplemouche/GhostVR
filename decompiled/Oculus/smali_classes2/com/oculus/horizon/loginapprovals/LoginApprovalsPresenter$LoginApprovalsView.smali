.class public interface abstract Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$LoginApprovalsView;
.super Ljava/lang/Object;
.source "LoginApprovalsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginApprovalsView"
.end annotation


# virtual methods
.method public abstract proceedNext()V
.end method

.method public abstract proceedTerminalNext()V
.end method

.method public abstract showEmail(Ljava/lang/String;)V
.end method

.method public abstract showError(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showError(Ljava/lang/CharSequence;)V
.end method

.method public abstract showToast(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showTwoFactorMethod(Ljava/lang/String;Ljava/lang/String;Z)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startResendLoadingState()V
.end method

.method public abstract startVerifyLoadingState()V
.end method

.method public abstract stopLoadingState()V
.end method
