.class Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$3;
.super Ljava/lang/Object;
.source "BluetoothDiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$3;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$3;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->startTutorial()V

    .line 92
    return-void
.end method
