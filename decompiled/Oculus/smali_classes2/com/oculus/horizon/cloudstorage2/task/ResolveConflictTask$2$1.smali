.class Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2$1;
.super Ljava/lang/Object;
.source "ResolveConflictTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2$1;->this$1:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;

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
    .line 167
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2$1;->this$1:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;

    iget-object v0, v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    const-string v1, "Downloaded server meta to local meta"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method
