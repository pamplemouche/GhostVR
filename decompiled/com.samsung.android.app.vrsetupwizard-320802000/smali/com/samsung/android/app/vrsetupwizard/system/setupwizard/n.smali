.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-static {p2}, Lcom/a/a/a/e;->a(Landroid/os/IBinder;)Lcom/a/a/a/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a(Lcom/a/a/a/d;)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-virtual {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a()Lcom/a/a/a/d;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "2ni9rof435"

    const-string v2, "com.samsung.android.app.vrsetupwizard"

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->d()Lcom/a/a/a/a;

    move-result-object v3

    invoke-interface {p2, v1, v0, v2, v3}, Lcom/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/a;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a()Lcom/a/a/a/d;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;->a(Z)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    const/4 v0, 0x0

    check-cast v0, Lcom/a/a/a/d;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a(Lcom/a/a/a/d;)V

    return-void
.end method
