.class Lcom/oculus/os/enterprise/EnterpriseServer$1;
.super Ljava/lang/Object;
.source "EnterpriseServer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/enterprise/EnterpriseServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/os/enterprise/EnterpriseServer;


# direct methods
.method constructor <init>(Lcom/oculus/os/enterprise/EnterpriseServer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oculus/os/enterprise/EnterpriseServer$1;->this$0:Lcom/oculus/os/enterprise/EnterpriseServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/oculus/os/enterprise/EnterpriseServer$1;->this$0:Lcom/oculus/os/enterprise/EnterpriseServer;

    invoke-static {p2}, Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oculus/os/enterprise/EnterpriseServer;->access$002(Lcom/oculus/os/enterprise/EnterpriseServer;Lcom/oculus/os/enterprise/internal/IEnterpriseServer;)Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    .line 34
    iget-object p1, p0, Lcom/oculus/os/enterprise/EnterpriseServer$1;->this$0:Lcom/oculus/os/enterprise/EnterpriseServer;

    invoke-static {p1}, Lcom/oculus/os/enterprise/EnterpriseServer;->access$100(Lcom/oculus/os/enterprise/EnterpriseServer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 35
    :try_start_0
    iget-object p2, p0, Lcom/oculus/os/enterprise/EnterpriseServer$1;->this$0:Lcom/oculus/os/enterprise/EnterpriseServer;

    invoke-static {p2}, Lcom/oculus/os/enterprise/EnterpriseServer;->access$100(Lcom/oculus/os/enterprise/EnterpriseServer;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 36
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

    .line 41
    iget-object p1, p0, Lcom/oculus/os/enterprise/EnterpriseServer$1;->this$0:Lcom/oculus/os/enterprise/EnterpriseServer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->access$002(Lcom/oculus/os/enterprise/EnterpriseServer;Lcom/oculus/os/enterprise/internal/IEnterpriseServer;)Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    return-void
.end method
