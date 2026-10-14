.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static final d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/l;


# instance fields
.field private e:Lcom/a/a/a/d;

.field private f:Ljava/lang/String;

.field private g:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

.field private h:Landroid/content/ServiceConnection;

.field private i:Lcom/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/l;-><init>(La/c/b/h;)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/l;

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->f:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/n;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;)V

    check-cast v0, Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->h:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/m;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/m;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;)V

    check-cast v0, Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->i:Lcom/a/a/a/a;

    return-void
.end method

.method public static final c(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/l;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/l;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final e()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->d:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/l;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/l;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->e:Lcom/a/a/a/d;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[SamsungAccountManager]  bindSAService"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->h:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final a(Lcom/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->e:Lcom/a/a/a/d;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->g:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->f:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->g:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->e:Lcom/a/a/a/d;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, La/c/b/j;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/a/a/a/d;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->e:Lcom/a/a/a/d;

    check-cast p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->g:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;

    return-void
.end method

.method public final c()V
    .locals 6

    const-string v0, "[SamsungAccountManager] requestSAAccessToken()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auth_server_url"

    const-string v2, "cc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "additional"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "scope"

    const-string v2, "galaxystore.openapi"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->e:Lcom/a/a/a/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->i:Lcom/a/a/a/a;

    const-string v4, "2ni9rof435"

    const-string v5, "com.samsung.android.app.vrsetupwizard"

    invoke-interface {v1, v4, v2, v5, v3}, Lcom/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/a;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->f:Ljava/lang/String;

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->e:Lcom/a/a/a/d;

    if-nez v1, :cond_2

    invoke-static {}, La/c/b/j;->a()V

    :cond_2
    const/16 v2, 0x64

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/d;->a(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SamsungAccountManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final d()Lcom/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->i:Lcom/a/a/a/a;

    return-object v0
.end method
