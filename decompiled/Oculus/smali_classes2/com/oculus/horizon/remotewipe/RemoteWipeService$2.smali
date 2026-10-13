.class Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;
.super Ljava/lang/Object;
.source "RemoteWipeService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/remotewipe/RemoteWipeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 191
    invoke-static {}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connected to companionserver"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$200(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {p2}, Lcom/oculus/os/ICompanionServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/os/ICompanionServer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$302(Lcom/oculus/horizon/remotewipe/RemoteWipeService;Lcom/oculus/os/ICompanionServer;)Lcom/oculus/os/ICompanionServer;

    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$200(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnected from companionserver"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$200(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$2;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$302(Lcom/oculus/horizon/remotewipe/RemoteWipeService;Lcom/oculus/os/ICompanionServer;)Lcom/oculus/os/ICompanionServer;

    .line 203
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
