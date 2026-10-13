.class public interface abstract Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter$View;
.super Ljava/lang/Object;
.source "BluetoothDiscoveryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getFragmentManager()Landroidx/fragment/app/FragmentManager;
.end method

.method public abstract onBack()V
.end method

.method public abstract onBluetoothStateChanged(II)V
.end method

.method public abstract onHandedness(Ljava/lang/String;)V
.end method

.method public abstract onSelectedBluetoothDevice(Ljava/lang/String;Z)V
.end method
