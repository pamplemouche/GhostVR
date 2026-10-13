.class Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;
.super Ljava/lang/Object;
.source "BuildConflictDataTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->run()Lbolts/Task;
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
        "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
        "Lcom/oculus/horizon/cloudstorage2/ConflictData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/oculus/horizon/cloudstorage2/ConflictData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
            ">;)",
            "Lcom/oculus/horizon/cloudstorage2/ConflictData;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;

    const-string v1, "Finding latest timestamps for conflict data."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getLatestTimestamp(Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;)J

    move-result-wide v2

    .line 53
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;->fromGraphQL(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getLatestTimestamp(Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;)J

    move-result-wide v0

    .line 56
    new-instance v4, Lcom/oculus/horizon/cloudstorage2/ConflictData;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/oculus/horizon/cloudstorage2/ConflictData;-><init>(JJ)V

    return-object v4
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;->then(Lbolts/Task;)Lcom/oculus/horizon/cloudstorage2/ConflictData;

    move-result-object v0

    return-object v0
.end method
