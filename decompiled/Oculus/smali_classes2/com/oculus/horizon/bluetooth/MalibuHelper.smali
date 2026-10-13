.class public Lcom/oculus/horizon/bluetooth/MalibuHelper;
.super Ljava/lang/Object;
.source "MalibuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMalibuDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0

    :cond_0
    const-string v1, "Gear VR Controller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
