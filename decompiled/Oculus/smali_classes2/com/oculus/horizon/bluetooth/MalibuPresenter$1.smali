.class Lcom/oculus/horizon/bluetooth/MalibuPresenter$1;
.super Ljava/lang/Object;
.source "MalibuPresenter.java"

# interfaces
.implements Lcom/oculus/horizon/bluetooth/BluetoothHelper$Callbacks;


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
    .line 60
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothDeviceBondStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-static {v0, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->access$100(Lcom/oculus/horizon/bluetooth/MalibuPresenter;Landroid/bluetooth/BluetoothDevice;II)V

    .line 71
    return-void
.end method

.method public onBluetoothStateChanged(II)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-static {v0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->access$000(Lcom/oculus/horizon/bluetooth/MalibuPresenter;II)V

    .line 64
    return-void
.end method
