.class Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;
.super Ljava/lang/Object;
.source "ConfigUpdaterJobService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/config/updater/ConfigUpdaterJobService$1;->run()V
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
.field final synthetic this$1:Lcom/oculus/config/updater/ConfigUpdaterJobService$1;


# direct methods
.method constructor <init>(Lcom/oculus/config/updater/ConfigUpdaterJobService$1;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;->this$1:Lcom/oculus/config/updater/ConfigUpdaterJobService$1;

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
    .line 58
    invoke-virtual {p0, p1}, Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
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
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;->this$1:Lcom/oculus/config/updater/ConfigUpdaterJobService$1;

    iget-object v0, v0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;->this$0:Lcom/oculus/config/updater/ConfigUpdaterJobService;

    iget-object v1, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;->this$1:Lcom/oculus/config/updater/ConfigUpdaterJobService$1;

    iget-object v1, v1, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->access$000(Lcom/oculus/config/updater/ConfigUpdaterJobService;Landroid/app/job/JobParameters;Ljava/lang/Exception;)V

    .line 67
    :goto_0
    return-object v3

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;->this$1:Lcom/oculus/config/updater/ConfigUpdaterJobService$1;

    iget-object v0, v0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;->this$0:Lcom/oculus/config/updater/ConfigUpdaterJobService;

    iget-object v1, p0, Lcom/oculus/config/updater/ConfigUpdaterJobService$1$1;->this$1:Lcom/oculus/config/updater/ConfigUpdaterJobService$1;

    iget-object v1, v1, Lcom/oculus/config/updater/ConfigUpdaterJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/oculus/config/updater/ConfigUpdaterJobService;->access$100(Lcom/oculus/config/updater/ConfigUpdaterJobService;Landroid/app/job/JobParameters;)V

    goto :goto_0
.end method
