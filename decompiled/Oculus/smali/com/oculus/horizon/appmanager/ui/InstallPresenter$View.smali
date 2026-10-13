.class public interface abstract Lcom/oculus/horizon/appmanager/ui/InstallPresenter$View;
.super Ljava/lang/Object;
.source "InstallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/appmanager/ui/InstallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract finishWithResult(I)V
.end method

.method public abstract openInstallerSettings()V
.end method

.method public abstract requestStoragePermission()V
.end method

.method public abstract showInstallerDisabledWarning()V
.end method

.method public abstract showInstallerMissingWarning()V
.end method

.method public abstract showInsufficientSpaceWarning()V
.end method

.method public abstract showMobileWarning()V
.end method

.method public abstract showRoamingWarning()V
.end method
