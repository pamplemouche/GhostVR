.class Lcom/oculus/autoupdates/AutoUpdateJobService$1$1;
.super Ljava/lang/Object;
.source "AutoUpdateJobService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/autoupdates/AutoUpdateJobService$1;->run()V
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
        "Ljava/lang/Integer;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/autoupdates/AutoUpdateJobService$1;


# direct methods
.method constructor <init>(Lcom/oculus/autoupdates/AutoUpdateJobService$1;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1$1;->this$1:Lcom/oculus/autoupdates/AutoUpdateJobService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    invoke-static {}, Lcom/oculus/autoupdates/AutoUpdateJobService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enqueued %d updates"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1$1;->this$1:Lcom/oculus/autoupdates/AutoUpdateJobService$1;

    iget-object v0, v0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->this$0:Lcom/oculus/autoupdates/AutoUpdateJobService;

    iget-object v1, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1$1;->this$1:Lcom/oculus/autoupdates/AutoUpdateJobService$1;

    iget-object v1, v1, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/oculus/autoupdates/AutoUpdateJobService;->access$400(Lcom/oculus/autoupdates/AutoUpdateJobService;Landroid/app/job/JobParameters;)V

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/oculus/autoupdates/AutoUpdateJobService$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
