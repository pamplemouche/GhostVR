.class public final Lcom/facebook/acra/Spool$Snapshot;
.super Ljava/lang/Object;
.source "Spool.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


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
        "Ljava/util/Iterator",
        "<",
        "Lcom/facebook/acra/Spool$FileBeingConsumed;",
        ">;",
        "Ljava/io/Closeable;"
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
    .param p1, "this$0"    # Lcom/facebook/acra/Spool;
    .param p2, "descriptors"    # [Lcom/facebook/acra/Spool$Descriptor;

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
    .locals 12
    .param p1, "sfd"    # Lcom/facebook/acra/Spool$Descriptor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 318
    const/4 v5, 0x0

    .line 319
    .local v5, "removeFromHazardList":Z
    const/4 v4, 0x0

    .line 320
    .local v4, "fileToClose":Ljava/io/RandomAccessFile;
    iget-object v3, p1, Lcom/facebook/acra/Spool$Descriptor;->fileName:Ljava/io/File;

    .line 323
    .local v3, "fileName":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 324
    :try_start_1
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v7, v7, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 325
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v7, v4}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v5, :cond_0

    .line 365
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v7

    .line 366
    :try_start_2
    iget-object v8, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v8, v8, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v7

    :cond_0
    move-object v1, v6

    :cond_1
    :goto_0
    return-object v1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 327
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v7, v7, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    const/4 v5, 0x1

    .line 329
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v2, v3, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    .local v2, "file":Ljava/io/RandomAccessFile;
    move-object v4, v2

    .line 334
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v7, v2}, Lcom/facebook/acra/Spool;->tryLock(Ljava/io/RandomAccessFile;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-result v7

    if-nez v7, :cond_5

    .line 363
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v7, v4}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v5, :cond_3

    .line 365
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v7

    .line 366
    :try_start_5
    iget-object v8, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v8, v8, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    move-object v1, v6

    goto :goto_0

    .line 329
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/io/IOException;
    :try_start_8
    const-string v7, "Spool"

    const-string v8, "unexpected failure opening %s: deleting and continuing scan"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 359
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 355
    invoke-static {v7, v0, v8, v9}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 363
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v7, v4}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v5, :cond_4

    .line 365
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v7

    .line 366
    :try_start_9
    iget-object v8, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v8, v8, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :cond_4
    move-object v1, v6

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v6

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v6

    .line 338
    :cond_5
    :try_start_b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-result v7

    if-nez v7, :cond_7

    .line 363
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v7, v4}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v5, :cond_6

    .line 365
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v7

    .line 366
    :try_start_c
    iget-object v8, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v8, v8, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v7

    :cond_6
    move-object v1, v6

    goto :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v6

    .line 342
    :cond_7
    :try_start_d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_9

    .line 346
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 363
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v7, v4}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v5, :cond_8

    .line 365
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v7

    .line 366
    :try_start_e
    iget-object v8, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v8, v8, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v7

    :cond_8
    move-object v1, v6

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v6

    .line 350
    :cond_9
    :try_start_f
    new-instance v1, Lcom/facebook/acra/Spool$FileBeingConsumed;

    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-direct {v1, v7, v3, v2}, Lcom/facebook/acra/Spool$FileBeingConsumed;-><init>(Lcom/facebook/acra/Spool;Ljava/io/File;Ljava/io/RandomAccessFile;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 351
    .local v1, "fbc":Lcom/facebook/acra/Spool$FileBeingConsumed;
    const/4 v4, 0x0

    .line 352
    const/4 v5, 0x0

    .line 363
    iget-object v6, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v6, v4}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v5, :cond_1

    .line 365
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v7

    .line 366
    :try_start_10
    iget-object v6, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v6, v6, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v7

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v6

    .end local v1    # "fbc":Lcom/facebook/acra/Spool$FileBeingConsumed;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v0    # "ex":Ljava/io/IOException;
    :catchall_6
    move-exception v6

    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v6

    .line 363
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_7
    move-exception v6

    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    invoke-virtual {v7, v4}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 364
    if-eqz v5, :cond_a

    .line 365
    iget-object v7, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    monitor-enter v7

    .line 366
    :try_start_12
    iget-object v8, p0, Lcom/facebook/acra/Spool$Snapshot;->this$0:Lcom/facebook/acra/Spool;

    iget-object v8, v8, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :cond_a
    throw v6

    :catchall_8
    move-exception v6

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v6
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
    iget-object v1, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    if-nez v1, :cond_0

    .line 293
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/Spool$Snapshot;->mCurrent:Lcom/facebook/acra/Spool$FileBeingConsumed;

    .line 296
    .local v0, "fbc":Lcom/facebook/acra/Spool$FileBeingConsumed;
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
