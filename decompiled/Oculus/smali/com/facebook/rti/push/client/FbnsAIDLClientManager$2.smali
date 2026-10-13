.class Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;
.super Ljava/lang/Object;
.source "FbnsAIDLClientManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->callAsync(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

.field final synthetic val$request:Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;->this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    iput-object p2, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;->val$request:Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;->this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-static {v0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$300(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;->this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;->val$request:Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;

    invoke-static {v0, v1}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$400(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;->this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-static {v1}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$500(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V

    .line 123
    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;->this$0:Lcom/facebook/rti/push/client/FbnsAIDLClientManager;

    invoke-static {v1}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager;->access$500(Lcom/facebook/rti/push/client/FbnsAIDLClientManager;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/facebook/rti/push/client/FbnsAIDLClientManager$2;->call()Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;

    move-result-object v0

    return-object v0
.end method
