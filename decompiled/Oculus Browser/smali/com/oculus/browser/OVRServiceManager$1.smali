.class public Lcom/oculus/browser/OVRServiceManager$1;
.super LlW;
.source "PG"


# instance fields
.field public lock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/oculus/browser/OVRServiceManager;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/OVRServiceManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/browser/OVRServiceManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, LlW;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oculus/browser/OVRServiceManager$1;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Boolean;
    .locals 7

    const-string v0, "OVRServiceManager.requestUserCredentials"

    const-wide/16 v1, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    new-instance v3, Lcom/oculus/browser/OVRServiceManager$1$1;

    invoke-direct {v3, p0}, Lcom/oculus/browser/OVRServiceManager$1$1;-><init>(Lcom/oculus/browser/OVRServiceManager$1;)V

    invoke-static {v0, v3}, Lcom/oculus/browser/OVRServiceManager;->access$002(Lcom/oculus/browser/OVRServiceManager;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    .line 5
    invoke-static {v3}, Lcom/oculus/browser/OVRServiceManager;->access$300(Lcom/oculus/browser/OVRServiceManager;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v4}, Lcom/oculus/browser/OVRServiceManager;->access$000(Lcom/oculus/browser/OVRServiceManager;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    .line 6
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/16 v0, 0x10

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/oculus/browser/OVRServiceManager$1;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v4}, Lcom/oculus/browser/OVRServiceManager;->access$200(Lcom/oculus/browser/OVRServiceManager;)Lcom/oculus/aidl/OVRServiceInterface;

    move-result-object v4

    if-nez v4, :cond_0

    .line 9
    iget-object v4, p0, Lcom/oculus/browser/OVRServiceManager$1;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "sdk_major_version"

    .line 12
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sdk_minor_version"

    .line 13
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "app_id"

    .line 14
    invoke-static {}, Lcom/oculus/browser/OculusApplicationID;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    .line 17
    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$200(Lcom/oculus/browser/OVRServiceManager;)Lcom/oculus/aidl/OVRServiceInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oculus/aidl/OVRServiceInterface;->getAppScopedAccessToken(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 18
    iget-object v3, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    const-string v4, "access_token"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oculus/browser/OVRServiceManager;->access$402(Lcom/oculus/browser/OVRServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    iget-object v3, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v3}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Lcom/oculus/browser/OVRServiceManager;->onTokenReceived(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "OVRServiceManager"

    const-string v3, "AccessToken empty"

    .line 21
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    :goto_2
    invoke-virtual {v0}, Lcom/oculus/browser/OVRServiceManager;->onRequestFailure()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 23
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto/16 :goto_5

    :catch_1
    move-exception v3

    :try_start_5
    const-string v4, "OVRServiceManager"

    const-string v6, "Interrupted while waiting for service connection"

    .line 24
    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    iget-object v3, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-virtual {v3}, Lcom/oculus/browser/OVRServiceManager;->onRequestFailure()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 26
    :try_start_6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "sdk_major_version"

    .line 27
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sdk_minor_version"

    .line 28
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "app_id"

    .line 29
    invoke-static {}, Lcom/oculus/browser/OculusApplicationID;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    .line 32
    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$200(Lcom/oculus/browser/OVRServiceManager;)Lcom/oculus/aidl/OVRServiceInterface;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/oculus/aidl/OVRServiceInterface;->getAppScopedAccessToken(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    iget-object v3, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    const-string v4, "access_token"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oculus/browser/OVRServiceManager;->access$402(Lcom/oculus/browser/OVRServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    iget-object v3, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v3}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v0, "OVRServiceManager"

    const-string v3, "AccessToken empty"

    .line 36
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :goto_3
    const-string v3, "OVRServiceManager"

    const-string v4, "Exception"

    .line 38
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/browser/OVRServiceManager;->onRequestFailure()V

    :cond_3
    :goto_4
    const-string v0, "OVRServiceManager.requestUserCredentials"

    .line 40
    invoke-static {v0, v1, v2}, Lorg/chromium/base/EarlyTraceEvent;->a(Ljava/lang/String;J)V

    .line 41
    sget-boolean v3, Lorg/chromium/base/TraceEvent;->x:Z

    if-eqz v3, :cond_4

    .line 42
    invoke-static {v0, v1, v2}, LJ/N;->MffNhCLU(Ljava/lang/String;J)V

    .line 43
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 44
    :goto_5
    :try_start_7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "sdk_major_version"

    .line 45
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "sdk_minor_version"

    .line 46
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "app_id"

    .line 47
    invoke-static {}, Lcom/oculus/browser/OculusApplicationID;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    .line 50
    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$200(Lcom/oculus/browser/OVRServiceManager;)Lcom/oculus/aidl/OVRServiceInterface;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/oculus/aidl/OVRServiceInterface;->getAppScopedAccessToken(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    const-string v3, "access_token"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oculus/browser/OVRServiceManager;->access$402(Lcom/oculus/browser/OVRServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v0}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 53
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    iget-object v2, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-static {v2}, Lcom/oculus/browser/OVRServiceManager;->access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/browser/OVRServiceManager;->onTokenReceived(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    const-string v0, "OVRServiceManager"

    const-string v2, "AccessToken empty"

    .line 54
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/browser/OVRServiceManager;->onRequestFailure()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v2, "OVRServiceManager"

    const-string v3, "Exception"

    .line 56
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager$1;->this$0:Lcom/oculus/browser/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/browser/OVRServiceManager;->onRequestFailure()V

    .line 58
    :cond_6
    :goto_6
    throw v1
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/OVRServiceManager$1;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
