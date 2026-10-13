.class Lcom/oculus/vrshell/panels/ImageLoader$5;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/ImageLoader;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    invoke-static {v1}, Lcom/oculus/vrshell/panels/ImageLoader;->access$000(Lcom/oculus/vrshell/panels/ImageLoader;)Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->val$url:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;->download(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 116
    iget-object v2, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    invoke-static {v2}, Lcom/oculus/vrshell/panels/ImageLoader;->access$100(Lcom/oculus/vrshell/panels/ImageLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    iget-object v3, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    invoke-static {v3}, Lcom/oculus/vrshell/panels/ImageLoader;->access$200(Lcom/oculus/vrshell/panels/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v3, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    invoke-static {v3}, Lcom/oculus/vrshell/panels/ImageLoader;->access$300(Lcom/oculus/vrshell/panels/ImageLoader;)Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/vrshell/panels/ImageLoader$5;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 119
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ImageLoader$5;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
