.class Lcom/facebook/rti/push/client/FbnsAIDLClientManager$1;
.super Ljava/lang/Object;
.source "FbnsAIDLClientManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/push/client/FbnsAIDLClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$1;->this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 78
    invoke-static {}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This operation should be run on UI thread"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-static {}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service connected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$1;->this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-static {p2}, Lcom/facebook/push/fbns/ipc/IFbnsAIDLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$100(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;)V

    .line 82
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 87
    invoke-static {}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This operation should be run on UI thread"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-static {}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$1;->this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-static {v0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$200(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V

    .line 91
    return-void
.end method
