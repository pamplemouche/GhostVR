.class public final Lcom/facebook/acra/Spool;
.super Ljava/lang/Object;
.source "Spool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/Spool$Descriptor;,
        Lcom/facebook/acra/Spool$Snapshot;,
        Lcom/facebook/acra/Spool$FileBeingConsumed;,
        Lcom/facebook/acra/Spool$FileBeingProduced;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Spool"


# instance fields
.field private final mDirectoryName:Ljava/io/File;

.field final mHazardList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    .line 105
    iput-object p1, p0, Lcom/facebook/acra/Spool;->mDirectoryName:Ljava/io/File;

    .line 106
    return-void
.end method


# virtual methods
.method closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    if-eqz p1, :cond_0

    .line 393
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public produce(Ljava/lang/String;)Lcom/facebook/acra/Spool$FileBeingProduced;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/acra/Spool;->produceWithDonorFile(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/acra/Spool$FileBeingProduced;

    move-result-object v0

    return-object v0
.end method

.method public produceWithDonorFile(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/acra/Spool$FileBeingProduced;
    .locals 10
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    const/4 v3, 0x0

    .line 139
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "."

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ".."

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal spool file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/acra/Spool;->mDirectoryName:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 146
    :try_start_1
    iget-object v5, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 198
    :cond_2
    invoke-virtual {p0, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v2, :cond_3

    .line 200
    monitor-enter p0

    .line 201
    :try_start_2
    iget-object v0, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 149
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-result v3

    if-eqz v3, :cond_a

    .line 195
    if-eqz v2, :cond_6

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 198
    :cond_6
    invoke-virtual {p0, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v4, :cond_7

    .line 200
    monitor-enter p0

    .line 201
    :try_start_5
    iget-object v0, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_7
    move-object v0, v2

    goto :goto_0

    .line 150
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 195
    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_8

    .line 196
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 198
    :cond_8
    invoke-virtual {p0, v3}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v2, :cond_9

    .line 200
    monitor-enter p0

    .line 201
    :try_start_8
    iget-object v1, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :cond_9
    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 159
    :cond_a
    if-eqz p2, :cond_15

    :try_start_a
    invoke-virtual {p2}, Ljava/io/File;->exists()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result v3

    if-eqz v3, :cond_15

    .line 162
    :try_start_b
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, p2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 164
    :try_start_c
    invoke-virtual {p0, v3}, Lcom/facebook/acra/Spool;->tryLock(Ljava/io/RandomAccessFile;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    move-result v5

    if-eqz v5, :cond_d

    .line 168
    :goto_2
    if-nez v0, :cond_14

    .line 169
    :try_start_d
    invoke-virtual {p0, v3}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move-object v3, v2

    move-object v1, v2

    .line 176
    :goto_3
    if-nez v3, :cond_13

    .line 177
    :try_start_e
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v3, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 180
    :try_start_f
    invoke-virtual {p0, v3}, Lcom/facebook/acra/Spool;->tryLock(Ljava/io/RandomAccessFile;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    move-result v0

    if-nez v0, :cond_e

    .line 195
    if-eqz v4, :cond_b

    .line 196
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 198
    :cond_b
    invoke-virtual {p0, v3}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v4, :cond_c

    .line 200
    monitor-enter p0

    .line 201
    :try_start_10
    iget-object v0, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_c
    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 164
    goto :goto_2

    .line 165
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 166
    :goto_4
    :try_start_11
    const-string v5, "Spool"

    const-string v6, "error using donor file %s; falling back to regular path"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v5, v0, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    .line 169
    :try_start_12
    invoke-virtual {p0, v1}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v2

    move-object v1, v2

    .line 171
    goto :goto_3

    .line 168
    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 169
    :goto_5
    invoke-virtual {p0, v1}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 171
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 195
    :catchall_5
    move-exception v0

    move-object v3, v2

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_1

    .line 202
    :catchall_6
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    throw v0

    :cond_e
    move-object v5, v3

    move-object v1, v4

    .line 185
    :goto_6
    :try_start_15
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    move-result v0

    if-nez v0, :cond_11

    .line 195
    if-eqz v1, :cond_f

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 198
    :cond_f
    invoke-virtual {p0, v3}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v4, :cond_10

    .line 200
    monitor-enter p0

    .line 201
    :try_start_16
    iget-object v0, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0

    :cond_10
    move-object v0, v2

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v0

    .line 189
    :cond_11
    :try_start_17
    new-instance v0, Lcom/facebook/acra/Spool$FileBeingProduced;

    invoke-direct {v0, p0, v4, v5}, Lcom/facebook/acra/Spool$FileBeingProduced;-><init>(Lcom/facebook/acra/Spool;Ljava/io/File;Ljava/io/RandomAccessFile;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 192
    const/4 v1, 0x0

    .line 195
    if-eqz v2, :cond_12

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 198
    :cond_12
    invoke-virtual {p0, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v2, :cond_4

    .line 200
    monitor-enter p0

    .line 201
    :try_start_18
    iget-object v2, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    throw v0

    :catchall_9
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    throw v0

    .line 195
    :catchall_a
    move-exception v0

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_1

    :catchall_b
    move-exception v0

    move-object v3, v1

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_1

    :catchall_c
    move-exception v0

    move-object v2, v4

    goto/16 :goto_1

    :catchall_d
    move-exception v0

    move-object v2, v4

    move-object v4, v1

    goto/16 :goto_1

    .line 168
    :catchall_e
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_f
    move-exception v0

    goto :goto_5

    .line 165
    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :cond_13
    move-object v5, v3

    move-object v3, v1

    move-object v1, v2

    goto :goto_6

    :cond_14
    move-object v1, v3

    goto/16 :goto_3

    :cond_15
    move-object v3, v2

    move-object v1, v2

    goto/16 :goto_3
.end method

.method public snapshot(Ljava/util/Comparator;Ljava/io/FilenameFilter;)Lcom/facebook/acra/Spool$Snapshot;
    .locals 10
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/FilenameFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/acra/Spool$Descriptor;",
            ">;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Lcom/facebook/acra/Spool$Snapshot;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/facebook/acra/Spool;->mDirectoryName:Ljava/io/File;

    invoke-virtual {v0, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    new-array v0, v1, [Ljava/lang/String;

    .line 223
    :cond_0
    array-length v2, v0

    .line 224
    new-array v3, v2, [Lcom/facebook/acra/Spool$Descriptor;

    .line 225
    :goto_0
    if-ge v1, v2, :cond_1

    .line 226
    aget-object v4, v0, v1

    .line 227
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/facebook/acra/Spool;->mDirectoryName:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    new-instance v6, Lcom/facebook/acra/Spool$Descriptor;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v6, v4, v8, v9, v5}, Lcom/facebook/acra/Spool$Descriptor;-><init>(Ljava/lang/String;JLjava/io/File;)V

    aput-object v6, v3, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    .line 232
    invoke-static {v3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 235
    :cond_2
    new-instance v0, Lcom/facebook/acra/Spool$Snapshot;

    invoke-direct {v0, p0, v3}, Lcom/facebook/acra/Spool$Snapshot;-><init>(Lcom/facebook/acra/Spool;[Lcom/facebook/acra/Spool$Descriptor;)V

    return-object v0
.end method

.method tryLock(Ljava/io/RandomAccessFile;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 403
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 404
    const/4 v0, 0x1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 408
    :catch_0
    move-exception v1

    .line 411
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_1

    const-string v3, ": EAGAIN ("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ": errno 11 ("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    :cond_1
    throw v1

    .line 406
    :catch_1
    move-exception v1

    goto :goto_0
.end method
