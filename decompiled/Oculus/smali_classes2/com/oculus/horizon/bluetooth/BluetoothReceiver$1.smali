.class Lcom/oculus/horizon/bluetooth/BluetoothReceiver$1;
.super Ljava/lang/Object;
.source "BluetoothReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->onReceiveBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/BluetoothReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deviceAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/BluetoothReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothReceiver;

    iput-object p2, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver$1;->val$deviceAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver$1;->val$deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->newStartIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method
