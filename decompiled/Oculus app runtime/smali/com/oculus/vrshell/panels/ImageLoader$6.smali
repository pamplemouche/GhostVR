.class Lcom/oculus/vrshell/panels/ImageLoader$6;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ImageLoader;->loadImages(Ljava/util/List;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/ImageLoader;

.field final synthetic val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$loadedImages:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$6;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$loadedImages:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;

    iput-object p5, p0, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 194
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/panels/ImageLoader$6$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/panels/ImageLoader$6$2;-><init>(Lcom/oculus/vrshell/panels/ImageLoader$6;Ljava/lang/Throwable;)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$loadedImages:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/panels/ImageLoader$6$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/panels/ImageLoader$6$1;-><init>(Lcom/oculus/vrshell/panels/ImageLoader$6;Landroid/graphics/Bitmap;)V

    .line 183
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
