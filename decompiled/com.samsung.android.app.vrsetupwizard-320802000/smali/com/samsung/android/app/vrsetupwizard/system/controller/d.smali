.class Lcom/samsung/android/app/vrsetupwizard/system/controller/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "synchronized +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stopScan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    iget-object v1, v1, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->e:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->f(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "close"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->f(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "address"

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    iget-object v3, v3, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    iget-object v3, v3, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "synchronized -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
