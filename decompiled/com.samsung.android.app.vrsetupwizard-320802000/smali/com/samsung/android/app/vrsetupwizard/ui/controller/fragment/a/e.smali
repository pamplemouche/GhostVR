.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/controller/n;
.implements Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;


# instance fields
.field a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/os/Handler;

.field private e:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;

.field private f:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

.field private g:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ControllerConnectPresenter]onEvent type : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->d()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;->n()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ControllerConnectPresenter]onFound : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->c:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->e()V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->e:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;

    if-eqz p2, :cond_0

    const v0, 0x7f0f004e

    invoke-interface {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;->c(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerConnectPresenter]onGattConnectionSTateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newState : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->d:Landroid/os/Handler;

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/f;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->f:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->g:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->g:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->f:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->e:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[ControllerConnectPresenter]requestAutoConnect"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->f:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a(Ljava/lang/String;)Lcom/samsung/android/app/vrsetupwizard/common/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->b()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v0, "[ControllerConnectPresenter]BOND_NONE"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->b()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const-string v0, "[ControllerConnectPresenter]BOND_BONDED"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a_(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerConnectPresenter]onBluetoothStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->d()V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->b:Landroid/content/Context;

    const v0, 0x7f0f0027

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a_(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerConnectPresenter]onScanningStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->c:Z

    if-nez p1, :cond_0

    const-string p1, "[ControllerConnectPresenter]Device Not Found"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;->n()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerConnectPresenter]onBondStateChanged deviceName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "[ControllerConnectPresenter]startScan"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->e:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;

    if-eqz v0, :cond_0

    const v1, 0x7f0f004f

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->f:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/common/b/a;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b()V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;->d_()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;->o()V

    :cond_0
    return-void
.end method
