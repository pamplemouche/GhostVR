.class public final Lcom/facebook/acra/Spool$Snapshot;
.super Ljava/lang/Object;
.source "Spool.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/Spool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/facebook/acra/Spool$FileBeingConsumed;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

.field private final mDescriptors:[Lcom/facebook/acra/Spool$Descriptor;

.field private mPosition:I

.field final synthetic this$0:Lcom/facebook/acra/Spool;


# direct methods
.method constructor <init>(Lcom/facebook/acra/Spool;[Lcom/facebook/acra/Spool$Descriptor;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/facebook/acra/Spool$Snapshot;->mDescriptors:[Lcom/facebook/acra/Spool$Descriptor;

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mPosition:I

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    .line 283
    return-void
.end method

.method private tryOpenFileForConsumption(Lcom/facebook/acra/Spool$Descriptor;)Lcom/facebook/acra/Spool$FileBeingConsumed;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 320
    iget-object v4, p1, Lcom/facebook/acra/Spool$Descriptor;->fileName:Ljava/io/File;

    .line 323
    :try_start_0
    iget-object v5, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 324
    :try_start_1
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v1, v1, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v1, v0}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 367
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v1, v1, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 331
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v2, v4, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 334
    :try_start_5
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v1, v2}, Lcom/facebook/acra/Spool;->tryLock(Ljava/io/RandomAccessFile;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-result v1

    if-nez v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v1, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 365
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v1

    .line 366
    :try_start_6
    iget-object v2, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v2, v2, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 329
    :catchall_1
    move-exception v1

    :goto_1
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 354
    :catch_0
    move-exception v1

    move v3, v2

    move-object v2, v0

    .line 355
    :goto_2
    :try_start_9
    const-string v5, "Spool"

    const-string/jumbo v6, "unexpected failure opening %s: deleting and continuing scan"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 359
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 355
    invoke-static {v5, v1, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 363
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v1, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v3, :cond_0

    .line 365
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v1

    .line 366
    :try_start_a
    iget-object v2, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v2, v2, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 338
    :cond_2
    :try_start_b
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-result v1

    if-nez v1, :cond_3

    .line 363
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v1, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 365
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v1

    .line 366
    :try_start_c
    iget-object v2, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v2, v2, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    .line 342
    :cond_3
    :try_start_d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_4

    .line 346
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 363
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v1, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 365
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v1

    .line 366
    :try_start_e
    iget-object v2, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v2, v2, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    .line 350
    :cond_4
    :try_start_f
    new-instance v1, Lcom/facebook/acra/Spool$FileBeingConsumed;

    iget-object v5, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-direct {v1, v5, v4, v2}, Lcom/facebook/acra/Spool$FileBeingConsumed;-><init>(Lcom/facebook/acra/Spool;Ljava/io/File;Ljava/io/RandomAccessFile;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 363
    iget-object v2, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v2, v0}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 367
    goto/16 :goto_0

    .line 363
    :catchall_5
    move-exception v1

    move v3, v2

    move-object v2, v0

    move-object v0, v1

    :goto_3
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v1, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v3, :cond_5

    .line 365
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v1

    .line 366
    :try_start_10
    iget-object v2, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v2, v2, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_5
    throw v0

    :catchall_6
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    .line 363
    :catchall_7
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_8
    move-exception v0

    goto :goto_3

    .line 354
    :catch_1
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 329
    :catchall_9
    move-exception v1

    move v2, v3

    goto/16 :goto_1
.end method

.method private updateCurrent()V
    .locals 3

    .prologue
    .line 312
    :goto_0
    iget-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mPosition:I

    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->mDescriptors:[Lcom/facebook/acra/Spool$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mDescriptors:[Lcom/facebook/acra/Spool$Descriptor;

    iget v1, p0, Lcom/facebook/acra/Spool$Snapshot;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/acra/Spool$Snapshot;->mPosition:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/facebook/acra/Spool$Snapshot;->tryOpenFileForConsumption(Lcom/facebook/acra/Spool$Descriptor;)Lcom/facebook/acra/Spool$FileBeingConsumed;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    invoke-virtual {v0, v1}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 375
    return-void
.end method

.method public getEstimate()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mDescriptors:[Lcom/facebook/acra/Spool$Descriptor;

    array-length v0, v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/facebook/acra/Spool$Snapshot;->updateCurrent()V

    .line 303
    iget-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/facebook/acra/Spool$FileBeingConsumed;
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/facebook/acra/Spool$Snapshot;->updateCurrent()V

    .line 292
    iget-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    .line 297
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/facebook/acra/Spool$Snapshot;->next()Lcom/facebook/acra/Spool$FileBeingConsumed;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
