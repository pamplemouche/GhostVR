.class public Lcom/oculus/browser/OVRServiceManager$1$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$1:Lcom/oculus/browser/OVRServiceManager$1;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/OVRServiceManager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/OVRServiceManager$1$1;->this$1:Lcom/oculus/browser/OVRServiceManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/OVRServiceManager$1$1;->this$1:Lcom/oculus/browser/OVRServiceManager$1;

    iget-object p1, p1, Lcom/oculus/browser/OVRServiceManager$1;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1$1;->this$1:Lcom/oculus/browser/OVRServiceManager$1;

    iget-object v0, v0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/oculus/browser/OVRServiceManager;->access$102(Lcom/oculus/browser/OVRServiceManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1$1;->this$1:Lcom/oculus/browser/OVRServiceManager$1;

    iget-object v0, v0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {p2}, Lcom/oculus/aidl/OVRServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/OVRServiceInterface;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oculus/browser/OVRServiceManager;->access$202(Lcom/oculus/browser/OVRServiceManager;Lcom/oculus/aidl/OVRServiceInterface;)Lcom/oculus/aidl/OVRServiceInterface;

    .line 4
    iget-object p2, p0, Lcom/oculus/browser/OVRServiceManager$1$1;->this$1:Lcom/oculus/browser/OVRServiceManager$1;

    iget-object p2, p2, Lcom/oculus/browser/OVRServiceManager$1;->lock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OVRServiceManager"

    const-string v0, "Service Disconnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/OVRServiceManager$1$1;->this$1:Lcom/oculus/browser/OVRServiceManager$1;

    iget-object p1, p1, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-virtual {p1}, Lcom/oculus/browser/OVRServiceManager;->onRequestFailure()V

    return-void
.end method
