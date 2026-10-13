.class Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment$1;
.super Ljava/lang/Object;
.source "BluetoothDeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->startUpdateFragment(Landroidx/fragment/app/FragmentManager;)V

    .line 76
    return-void
.end method
