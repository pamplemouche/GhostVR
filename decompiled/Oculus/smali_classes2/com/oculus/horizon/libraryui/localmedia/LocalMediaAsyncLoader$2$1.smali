.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;
.super Ljava/lang/Object;
.source "LocalMediaAsyncLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->then(Lbolts/Task;)Ljava/lang/Object;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$400(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$500(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;->refresh()V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v0, v2}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$402(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;Z)Z

    .line 110
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$300(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->val$cancellationToken:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 112
    :goto_1
    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v3, v3, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    .line 113
    invoke-static {v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$500(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v4, v4, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    .line 114
    invoke-static {v4}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$600(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)I

    move-result v4

    iget-object v5, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v5, v5, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v5}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)I

    move-result v5

    iget-object v6, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v6, v6, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v6}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$100(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v7, v7, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v7}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$200(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Lcom/oculus/localmedia/MediaSort;

    move-result-object v7

    .line 113
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaManagerWrapper;->query(IILjava/util/List;Lcom/oculus/localmedia/MediaSort;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v4

    .line 115
    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v3, v3, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    iget-object v5, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v5, v5, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v5}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)I

    move-result v5

    invoke-virtual {v4}, Lcom/oculus/localmedia/MediaResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$002(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;I)I

    .line 116
    invoke-virtual {v4}, Lcom/oculus/localmedia/MediaResponse;->getTotalCount()I

    move-result v5

    .line 117
    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v6, v3, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v3, v3, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)I

    move-result v3

    if-ge v3, v5, :cond_3

    move v3, v1

    :goto_2
    invoke-static {v6, v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$302(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;Z)Z

    .line 118
    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v3, v3, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$800(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper;

    move-result-object v3

    iget-object v6, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v6, v6, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    .line 119
    invoke-static {v6}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$700(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/oculus/localmedia/MediaResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v7, v7, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v7}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$300(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Z

    move-result v7

    .line 118
    invoke-virtual {v3, v6, v4, v0, v7}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaThreadHelper;->callOnMediaLoadedOnUiThreadAndWaitForCompletion(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;Ljava/util/List;ZZ)V

    .line 120
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$300(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$900(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v3, v3, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    .line 123
    invoke-static {v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)I

    move-result v3

    const-string v4, ","

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;->this$1:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;

    iget-object v7, v7, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    invoke-static {v7}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$100(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Lcom/facebook/common/string/StringUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {v0, v3, v5, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportLibraryLocalMediaLoad(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 111
    goto/16 :goto_1

    :cond_3
    move v3, v2

    .line 117
    goto :goto_2

    .line 126
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
