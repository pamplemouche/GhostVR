.class Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService$1;
.super Ljava/lang/Object;
.source "LibraryDBCacheUpdaterService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;->onHandleIntent(Landroid/content/Intent;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService$1;->this$0:Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService;

    iput-object p2, p0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService$1;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
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
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService$1;->val$resultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 98
    :goto_0
    return-object v2

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oculus/cache/library/service/LibraryDBCacheUpdaterService$1;->val$resultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
