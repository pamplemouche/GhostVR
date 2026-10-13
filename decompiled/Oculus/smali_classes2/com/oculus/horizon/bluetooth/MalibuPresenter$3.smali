.class Lcom/oculus/horizon/bluetooth/MalibuPresenter$3;
.super Landroid/bluetooth/le/ScanCallback;
.source "MalibuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/MalibuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/MalibuPresenter;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$3;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 3

    .prologue
    .line 98
    const-string v0, "MalibuPresenter"

    const-string v1, "onScanFailed: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$3;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    sget-object v1, Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;->DISCOVER:Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->access$300(Lcom/oculus/horizon/bluetooth/MalibuPresenter;Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;)V

    .line 100
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 6

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 86
    const-string v1, "MalibuPresenter"

    const-string v2, "onScanResult: %s %s %d"

    .line 89
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 86
    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$3;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-static {v1, v0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->access$400(Lcom/oculus/horizon/bluetooth/MalibuPresenter;Landroid/bluetooth/BluetoothDevice;)V

    .line 94
    return-void
.end method
