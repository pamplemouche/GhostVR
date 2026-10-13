.class Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$1;
.super Ljava/lang/Object;
.source "BluetoothDiscoveryFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 64
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    sget v0, Lcom/oculus/horizon/R$id;->option_left:I

    if-ne v0, p2, :cond_2

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->setHandedness(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    sget v0, Lcom/oculus/horizon/R$id;->option_right:I

    if-ne v0, p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    const-string v1, "right"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->setHandedness(Ljava/lang/String;)V

    goto :goto_0
.end method
