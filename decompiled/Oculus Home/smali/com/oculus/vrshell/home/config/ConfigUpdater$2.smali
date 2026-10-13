.class Lcom/oculus/vrshell/home/config/ConfigUpdater$2;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater;->fetchAsync(Landroid/content/Context;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/config/ConfigUpdater;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$2;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_update_failed"

    const-string v3, "error"

    const-string v4, "task_faulted"

    const-string v5, "error_details"

    .line 185
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchAsync(): Failed"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 190
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_update_cancelled"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchAsync(): Cancelled"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Config update task was cancelled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_update_completed"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchAsync(): Successful"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method
