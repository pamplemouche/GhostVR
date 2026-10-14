.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothGatt;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerConnectPresenter]Selected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
