.class public interface abstract Lcom/oculus/horizon/settings/PasswordSettingsPresenter$View;
.super Ljava/lang/Object;
.source "PasswordSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/PasswordSettingsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract clearErrors()V
.end method

.method public abstract finish()V
.end method

.method public abstract openPasswordResetWebPage()V
.end method

.method public abstract reauthRequired()V
.end method

.method public abstract requestNewPasswordFocus()V
.end method

.method public abstract requestOldPasswordFocus()V
.end method

.method public abstract requestRetypeNewPasswordFocus()V
.end method

.method public abstract setLoading(Z)V
.end method

.method public abstract setNewPasswordFieldError(Ljava/lang/String;)V
.end method

.method public abstract setOldPasswordFieldError(Ljava/lang/String;)V
.end method

.method public abstract setRetypeNewPasswordFieldError(Ljava/lang/String;)V
.end method
