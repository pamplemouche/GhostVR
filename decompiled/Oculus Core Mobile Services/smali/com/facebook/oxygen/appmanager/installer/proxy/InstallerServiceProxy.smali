.class public Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;
.super Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;
.source "InstallerServiceProxy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 36
    const-string v0, "installer"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/concurrent/ExecutorService;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/InstallerContract;->getInstallerServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/util/concurrent/ExecutorService;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Landroid/os/IBinder;)Lcom/facebook/oxygen/installer/contract/IInstallerService;
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;->asInterface(Landroid/os/IBinder;)Lcom/facebook/oxygen/installer/contract/IInstallerService;

    move-result-object v0

    return-object v0
.end method

.method private static asInterface(Landroid/os/IBinder;)Lcom/facebook/oxygen/installer/contract/IInstallerService;
    .locals 3

    .prologue
    .line 40
    invoke-static {p0}, Lcom/facebook/oxygen/installer/contract/IInstallerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/facebook/oxygen/installer/contract/IInstallerService;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert binder to interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy$2;-><init>(Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;->callService(Lcom/google/common/util/concurrent/SettableFuture;Landroid/content/ServiceConnection;)V

    .line 95
    new-instance v1, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;

    invoke-direct {v1, v0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v1
.end method
