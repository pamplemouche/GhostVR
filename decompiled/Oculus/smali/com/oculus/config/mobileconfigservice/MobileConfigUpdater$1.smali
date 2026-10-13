.class Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;
.super Ljava/lang/Object;
.source "MobileConfigUpdater.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->updateMobileConfigs(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

.field final synthetic val$configJsonString:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;Ljava/lang/String;Ljava/lang/String;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    iput-object p2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$configJsonString:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 4

    .prologue
    .line 194
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to fetch config from server - "

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$100(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    const-string v1, "mc_fetch_failed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed_fetch_from_backend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 198
    return-void
.end method

.method public success(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigResponse;Lretrofit/client/Response;)V
    .locals 5

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigCombinedResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigCombinedResponse;-><init>(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;)V

    .line 160
    iput-object p1, v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigCombinedResponse;->sessionbased:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigResponse;

    .line 161
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 162
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$100(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v1

    const-string v2, "mc_config_fetch_backend_success"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config definition - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$configJsonString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; config values - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; file name - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_config_values.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$200(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 174
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    .line 176
    invoke-static {v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$300(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_config_values.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 178
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 180
    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :try_start_2
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 190
    :goto_0
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to write config values to disk - "

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    invoke-static {v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$100(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v1

    const-string v2, "mc_fetch_failed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed_write_values_to_disk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 187
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v1, v2, v3}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$1;->success(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$MobileConfigResponse;Lretrofit/client/Response;)V

    return-void
.end method
