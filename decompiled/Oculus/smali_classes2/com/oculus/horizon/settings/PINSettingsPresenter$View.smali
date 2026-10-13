.class public interface abstract Lcom/oculus/horizon/settings/PINSettingsPresenter$View;
.super Ljava/lang/Object;
.source "PINSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/PINSettingsPresenter;
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

.method public abstract reauthRequired()V
.end method

.method public abstract requestPasswordFieldFocus()V
.end method

.method public abstract requestPinFieldFocus()V
.end method

.method public abstract setLoading(Z)V
.end method

.method public abstract setPasswordFieldError(Ljava/lang/String;)V
.end method

.method public abstract setPinFieldError(Ljava/lang/String;)V
.end method
