.class Lcom/oculus/library/refresher/LibraryCacheRefresher$1;
.super Ljava/lang/Object;
.source "LibraryCacheRefresher.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/refresher/LibraryCacheRefresher;->refreshCache()Lbolts/Task;
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
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/oculus/library/model/App;",
        ">;",
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/oculus/library/model/App;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;


# direct methods
.method constructor <init>(Lcom/oculus/library/refresher/LibraryCacheRefresher;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$1;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    const-string v2, "Failed to fetch library updates"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$1;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-static {v0}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$100(Lcom/oculus/library/refresher/LibraryCacheRefresher;)V

    .line 142
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

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
    .line 134
    invoke-virtual {p0, p1}, Lcom/oculus/library/refresher/LibraryCacheRefresher$1;->then(Lbolts/Task;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
