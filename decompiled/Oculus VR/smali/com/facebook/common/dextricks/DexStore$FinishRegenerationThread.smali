.class final Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;
.super Ljava/lang/Thread;
.source "DexStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/DexStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FinishRegenerationThread"
.end annotation


# instance fields
.field private final mHeldLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

.field private final mNewStatus:J

.field private final mOdexScheme:Lcom/facebook/common/dextricks/OdexScheme;

.field final synthetic this$0:Lcom/facebook/common/dextricks/DexStore;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;J)V
    .locals 2

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->this$0:Lcom/facebook/common/dextricks/DexStore;

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TxFlush-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2303
    iput-object p3, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->mHeldLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    .line 2304
    iput-wide p4, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->mNewStatus:J

    .line 2305
    iput-object p2, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->mOdexScheme:Lcom/facebook/common/dextricks/OdexScheme;

    .line 2306
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2312
    :try_start_0
    const-string v0, "running syncer thread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2316
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->mOdexScheme:Lcom/facebook/common/dextricks/OdexScheme;

    iget-object v2, v0, Lcom/facebook/common/dextricks/OdexScheme;->expectedFiles:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 2317
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->this$0:Lcom/facebook/common/dextricks/DexStore;

    iget-object v6, v6, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 2317
    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/DalvikInternals;->fsyncNamed(Ljava/lang/String;I)V

    .line 2316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->this$0:Lcom/facebook/common/dextricks/DexStore;

    iget-wide v2, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->mNewStatus:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2325
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->mHeldLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    .line 2328
    const-string v0, "finished syncer thread: initial regeneration of dex store %s complete"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->this$0:Lcom/facebook/common/dextricks/DexStore;

    iget-object v3, v3, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2329
    return-void

    .line 2321
    :catch_0
    move-exception v0

    .line 2322
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2325
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->mHeldLock:Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    throw v0
.end method
