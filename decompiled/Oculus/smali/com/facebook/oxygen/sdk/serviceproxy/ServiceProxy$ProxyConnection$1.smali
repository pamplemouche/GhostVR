.class Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;->this$1:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;

    iput-object p2, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;->this$1:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;

    invoke-static {v0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->access$300(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;->this$1:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;

    iget-object v2, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;->val$service:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->invokeServiceMethod(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;->this$1:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->this$0:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;

    invoke-static {v0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->access$200(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;->this$1:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 174
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;->this$1:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;

    invoke-static {v1}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->access$300(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
