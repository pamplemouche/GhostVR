.class Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;
.super Ljava/lang/Object;
.source "ConfigUpdaterJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$jobId:I

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;ILandroid/content/Context;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;

    iput p2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->val$jobId:I

    iput-object p3, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "configTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget v1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->val$jobId:I

    const v2, -0x28567132

    if-ne v1, v2, :cond_0

    .line 69
    invoke-static {}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->access$000()Lcom/oculus/vrshell/home/config/ConfigUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->fetchAsync(Landroid/content/Context;)Lbolts/Task;

    move-result-object v0

    .line 78
    :goto_0
    new-instance v1, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1$1;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 97
    :goto_1
    return-void

    .line 70
    :cond_0
    iget v1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->val$jobId:I

    const v2, -0x28567131

    if-ne v1, v2, :cond_1

    .line 71
    invoke-static {}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->access$000()Lcom/oculus/vrshell/home/config/ConfigUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->clearAsync(Landroid/content/Context;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->this$0:Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;

    iget-object v2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService$1;->val$params:Landroid/app/job/JobParameters;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid job id given to ConfigUpdaterJobService."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;->access$100(Lcom/oculus/vrshell/home/config/ConfigUpdaterJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    goto :goto_1
.end method
