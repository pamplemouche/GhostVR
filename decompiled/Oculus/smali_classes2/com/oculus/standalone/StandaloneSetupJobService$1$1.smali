.class Lcom/oculus/standalone/StandaloneSetupJobService$1$1;
.super Ljava/lang/Object;
.source "StandaloneSetupJobService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneSetupJobService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<[",
        "Lcom/oculus/coreapps/CoreApp;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneSetupJobService$1;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<[",
            "Lcom/oculus/coreapps/CoreApp;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v1, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$000(Lcom/oculus/standalone/StandaloneSetupJobService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Second completion event received for installs. Ignoring."

    .line 113
    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    monitor-exit v1

    .line 142
    :goto_0
    return-object v4

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$002(Lcom/oculus/standalone/StandaloneSetupJobService;Z)Z

    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-static {}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    const-string v2, "Failed to run setup job"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    .line 124
    invoke-static {v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$200(Lcom/oculus/standalone/StandaloneSetupJobService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Error while running High priority Apps Install"

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v1, v1, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-static {v1}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$300(Lcom/oculus/standalone/StandaloneSetupJobService;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v1

    const-string v2, "standalone_setup_exception"

    .line 128
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    .line 127
    invoke-virtual {v1, v2, v0, v3}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    iget-object v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v1, v1, Lcom/oculus/standalone/StandaloneSetupJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$400(Lcom/oculus/standalone/StandaloneSetupJobService;Landroid/app/job/JobParameters;)V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 124
    :cond_1
    const-string v0, "Error while running setup-installs"

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v1, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/coreapps/CoreApp;

    iget-object v2, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v2, v2, Lcom/oculus/standalone/StandaloneSetupJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v1, v0, v2}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$500(Lcom/oculus/standalone/StandaloneSetupJobService;[Lcom/oculus/coreapps/CoreApp;Landroid/app/job/JobParameters;)V

    .line 133
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$200(Lcom/oculus/standalone/StandaloneSetupJobService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    .line 134
    invoke-static {v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$600(Lcom/oculus/standalone/StandaloneSetupJobService;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->isHighPriAppsSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$700(Lcom/oculus/standalone/StandaloneSetupJobService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    iget-object v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v1, v1, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    invoke-static {v0, v1}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$800(Lcom/oculus/standalone/StandaloneSetupJobService;Landroid/content/Context;)V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneSetupJobService$1;->this$0:Lcom/oculus/standalone/StandaloneSetupJobService;

    iget-object v1, p0, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->this$1:Lcom/oculus/standalone/StandaloneSetupJobService$1;

    iget-object v1, v1, Lcom/oculus/standalone/StandaloneSetupJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oculus/standalone/StandaloneSetupJobService;->access$900(Lcom/oculus/standalone/StandaloneSetupJobService;Landroid/app/job/JobParameters;Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/oculus/standalone/StandaloneSetupJobService$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
