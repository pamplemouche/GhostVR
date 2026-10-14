.class public Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;


# static fields
.field private static a:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;


# instance fields
.field private final b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    return-void
.end method

.method public static a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    if-nez v0, :cond_0

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)V

    sput-object v1, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/app/vrsetupwizard/common/b/a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->a(Ljava/lang/String;)Lcom/samsung/android/app/vrsetupwizard/common/b/a;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/vrsetupwizard/common/b/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->a(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->b(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->b(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->c(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->b:Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;->g(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method
