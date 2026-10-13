.class Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;
.super Ljava/lang/Object;
.source "MobileConfigUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->getMobileConfigsFromCacheAndUpdateIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

.field final synthetic val$configJsonString:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    iput-object p2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->val$configJsonString:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$100(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    const-string v1, "mc_write_file_defintion_start"

    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->val$configJsonString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    iget-object v1, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$200(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    .line 224
    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$300(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_config_definition.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 226
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 227
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->val$configJsonString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 229
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    invoke-static {v0}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$100(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v0

    const-string v2, "mc_write_file_defintion_succeeded"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config definition - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->val$configJsonString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; file name - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_config_definition.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    monitor-exit v1

    .line 243
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-static {}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to write config definition "

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    iget-object v2, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$2;->this$0:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;

    invoke-static {v2}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;->access$100(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v2

    const-string v3, "mc_write_file_defintion_failed"

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {v2, v3, v0}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logMobileConfigStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    monitor-exit v1

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
