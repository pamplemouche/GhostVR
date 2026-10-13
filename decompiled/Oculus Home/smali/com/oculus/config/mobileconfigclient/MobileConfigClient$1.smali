.class Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;
.super Ljava/lang/Object;
.source "MobileConfigClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;


# direct methods
.method constructor <init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;->this$0:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 55
    invoke-static {}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;->this$0:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-static {p2}, Lcom/oculus/aidl/IMobileConfigService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/IMobileConfigService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->access$100(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;Lcom/oculus/aidl/IMobileConfigService;Z)V

    .line 57
    iget-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;->this$0:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->access$200(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;->this$0:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    iget-object v2, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;->this$0:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-static {v2}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->access$300(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->access$400(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    :cond_0
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 65
    invoke-static {}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;->this$0:Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->access$100(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;Lcom/oculus/aidl/IMobileConfigService;Z)V

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
