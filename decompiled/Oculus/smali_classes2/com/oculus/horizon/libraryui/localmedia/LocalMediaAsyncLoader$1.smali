.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;
.super Ljava/lang/Object;
.source "LocalMediaAsyncLoader.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->resetLoading(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

.field final synthetic val$mediaTypes:Ljava/util/List;

.field final synthetic val$shouldReload:Z

.field final synthetic val$sortType:Lcom/oculus/localmedia/MediaSort;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->val$mediaTypes:Ljava/util/List;

    iput-object p3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->val$sortType:Lcom/oculus/localmedia/MediaSort;

    iput-boolean p4, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->val$shouldReload:Z

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
    .line 70
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$002(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;I)I

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->val$mediaTypes:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$102(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;Ljava/util/List;)Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->val$sortType:Lcom/oculus/localmedia/MediaSort;

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$202(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;Lcom/oculus/localmedia/MediaSort;)Lcom/oculus/localmedia/MediaSort;

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$302(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;Z)Z

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    iget-boolean v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$1;->val$shouldReload:Z

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->access$402(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;Z)Z

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method
