.class Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy$2;
.super Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;
.source "InstallerServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;->delete(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy$2;->this$0:Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;

    iput-object p3, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;-><init>(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method


# virtual methods
.method public invokeServiceMethod(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy;->access$000(Landroid/os/IBinder;)Lcom/facebook/oxygen/installer/contract/IInstallerService;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/oxygen/installer/contract/IInstallerService;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "delete() returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    return-object v0
.end method

.method public bridge synthetic invokeServiceMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerServiceProxy$2;->invokeServiceMethod(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
