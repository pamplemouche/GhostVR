.class Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;
.super Ljava/lang/Object;
.source "SuperpackInputDexIterator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/SuperpackInputDexIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpackingRunnable"
.end annotation


# instance fields
.field private mInput:Ljava/io/InputStream;

.field private mOutput:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Lcom/facebook/superpack/SuperpackFile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/common/dextricks/SuperpackInputDexIterator;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/SuperpackInputDexIterator;Ljava/io/InputStream;Ljava/util/concurrent/SynchronousQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Lcom/facebook/superpack/SuperpackFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    iput-object p1, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->this$0:Lcom/facebook/common/dextricks/SuperpackInputDexIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->mInput:Ljava/io/InputStream;

    .line 256
    iput-object p3, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->mOutput:Ljava/util/concurrent/SynchronousQueue;

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->this$0:Lcom/facebook/common/dextricks/SuperpackInputDexIterator;

    iget-object v1, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->mInput:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/SuperpackInputDexIterator;->access$100(Lcom/facebook/common/dextricks/SuperpackInputDexIterator;Ljava/io/InputStream;)Lcom/facebook/superpack/SuperpackArchive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    const/4 v1, 0x0

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 264
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/superpack/SuperpackArchive;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->this$0:Lcom/facebook/common/dextricks/SuperpackInputDexIterator;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/SuperpackInputDexIterator;->access$200(Lcom/facebook/common/dextricks/SuperpackInputDexIterator;Lcom/facebook/superpack/SuperpackArchive;)Lcom/facebook/superpack/SuperpackFile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 268
    :try_start_2
    iget-object v0, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->mOutput:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    .line 272
    :try_start_3
    invoke-virtual {v3}, Lcom/facebook/superpack/SuperpackFile;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 262
    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 276
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v2}, Lcom/facebook/superpack/SuperpackArchive;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_0
    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 277
    :catch_1
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 276
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v2}, Lcom/facebook/superpack/SuperpackArchive;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 287
    :cond_2
    :goto_3
    return-void

    .line 276
    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 279
    :catch_3
    move-exception v0

    .line 280
    iget-object v1, p0, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$UnpackingRunnable;->this$0:Lcom/facebook/common/dextricks/SuperpackInputDexIterator;

    invoke-static {v1}, Lcom/facebook/common/dextricks/SuperpackInputDexIterator;->access$300(Lcom/facebook/common/dextricks/SuperpackInputDexIterator;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 276
    :cond_3
    :try_start_9
    invoke-virtual {v2}, Lcom/facebook/superpack/SuperpackArchive;->close()V

    goto :goto_3

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/facebook/superpack/SuperpackArchive;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1
.end method
