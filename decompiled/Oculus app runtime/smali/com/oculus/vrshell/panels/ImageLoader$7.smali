.class Lcom/oculus/vrshell/panels/ImageLoader$7;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ImageLoader;->loadImages(Ljava/util/List;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/ImageLoader;

.field final synthetic val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$loadedImages:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader;Ljava/util/concurrent/CountDownLatch;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$7;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ImageLoader$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/oculus/vrshell/panels/ImageLoader$7;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;

    iput-object p4, p0, Lcom/oculus/vrshell/panels/ImageLoader$7;->val$loadedImages:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 208
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ImageLoader$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ImageLoader$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 219
    :goto_0
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v2

    new-instance v3, Lcom/oculus/vrshell/panels/ImageLoader$7$1;

    invoke-direct {v3, p0, v1}, Lcom/oculus/vrshell/panels/ImageLoader$7$1;-><init>(Lcom/oculus/vrshell/panels/ImageLoader$7;Ljava/lang/Throwable;)V

    .line 220
    invoke-virtual {v2, v3}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
