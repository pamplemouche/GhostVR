.class abstract Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ConfigTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLoggingKey:Ljava/lang/String;

.field private final mTcs:Lbolts/TaskCompletionSource;

.field final synthetic this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;


# direct methods
.method public constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Ljava/lang/String;)V
    .locals 1
    .param p2, "loggingKey"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->mTcs:Lbolts/TaskCompletionSource;

    .line 58
    iput-object p2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->mLoggingKey:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getTask()Lbolts/Task;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->mTcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public abstract run(Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;Lbolts/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;>;"
    const/4 v7, 0x0

    .line 67
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;

    .line 68
    .local v0, "configContext":Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;
    if-nez v0, :cond_0

    .line 69
    const-string v2, "oculus_config"

    const-string v3, "error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no_config_context_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->mLoggingKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->mTcs:Lbolts/TaskCompletionSource;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "No config context"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 89
    :goto_0
    return-object v7

    .line 78
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->mTcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p0, v0, v2}, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->run(Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;Lbolts/TaskCompletionSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "oculus_config"

    const-string v3, "error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task_run_failed_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->mLoggingKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error_details"

    .line 85
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-static {v2, v3, v4, v5, v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->mTcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v2, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
