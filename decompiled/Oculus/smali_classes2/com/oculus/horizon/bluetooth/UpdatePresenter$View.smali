.class public interface abstract Lcom/oculus/horizon/bluetooth/UpdatePresenter$View;
.super Ljava/lang/Object;
.source "UpdatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/UpdatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getFragmentManager()Landroidx/fragment/app/FragmentManager;
.end method

.method public abstract getListener()Lcom/oculus/horizon/bluetooth/UpdatePresenter$Listener;
.end method

.method public abstract getTargetFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getTargetRequestCode()I
.end method

.method public abstract onCanceled()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onStateChanged(II)V
.end method
