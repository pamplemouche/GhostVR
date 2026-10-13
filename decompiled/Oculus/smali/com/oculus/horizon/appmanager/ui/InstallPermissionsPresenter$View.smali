.class public interface abstract Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter$View;
.super Ljava/lang/Object;
.source "InstallPermissionsPresenter.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract finishWithResult(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAppPermissions(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;Z)V
.end method

.method public abstract showBundlePermissions(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;)V"
        }
    .end annotation
.end method
