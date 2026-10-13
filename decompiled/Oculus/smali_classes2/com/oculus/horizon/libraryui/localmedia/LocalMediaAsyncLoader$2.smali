.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;
.super Ljava/lang/Object;
.source "LocalMediaAsyncLoader.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;->startLoadingMediaAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

.field final synthetic val$cancellationToken:Lbolts/CancellationToken;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;Lbolts/CancellationToken;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->val$cancellationToken:Lbolts/CancellationToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2$1;-><init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;)V

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAsyncLoader$2;->val$cancellationToken:Lbolts/CancellationToken;

    invoke-static {v0, v1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
