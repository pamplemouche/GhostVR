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
    .param p1, "directoryName"    # Ljava/io/File;

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
    .param p1, "c"    # Ljava/io/Closeable;
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
    .param p1, "uniqueName"    # Ljava/lang/String;
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
    .locals 13
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "donorFileName"    # Ljava/io/File;
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
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    .local v6, "fileNameToUnlink":Ljava/io/File;
    const/4 v7, 0x0

    .line 137
    .local v7, "fileToClose":Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 139
    .local v5, "fileNameToRemoveFromHazardList":Ljava/io/File;
    const-string v11, "/"

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "."

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, ".."

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 140
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "illegal spool file name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 144
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lcom/facebook/acra/Spool;->mDirectoryName:Ljava/io/File;

    invoke-direct {v4, v11, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v4, "fileName":Ljava/io/File;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 146
    :try_start_1
    iget-object v11, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 147
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 195
    if-eqz v6, :cond_2

    .line 196
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 198
    :cond_2
    invoke-virtual {p0, v7}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v5, :cond_3

    .line 200
    monitor-enter p0

    .line 201
    :try_start_2
    iget-object v9, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0

    :cond_3
    :goto_0
    return-object v1

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 149
    :cond_4
    :try_start_3
    iget-object v11, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 152
    move-object v5, v4

    .line 153
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v11

    if-eqz v11, :cond_8

    .line 195
    if-eqz v6, :cond_5

    .line 196
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 198
    :cond_5
    invoke-virtual {p0, v7}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v5, :cond_3

    .line 200
    monitor-enter p0

    .line 201
    :try_start_5
    iget-object v9, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v9

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v9

    .line 150
    :catchall_2
    move-exception v9

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 195
    .end local v4    # "fileName":Ljava/io/File;
    :catchall_3
    move-exception v9

    if-eqz v6, :cond_6

    .line 196
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 198
    :cond_6
    invoke-virtual {p0, v7}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v5, :cond_7

    .line 200
    monitor-enter p0

    .line 201
    :try_start_8
    iget-object v10, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :cond_7
    throw v9

    .line 157
    .restart local v4    # "fileName":Ljava/io/File;
    :cond_8
    const/4 v2, 0x0

    .line 159
    .local v2, "file":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_9

    :try_start_9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v11

    if-eqz v11, :cond_9

    .line 160
    const/4 v8, 0x0

    .line 162
    .local v8, "keepDonorFile":Z
    :try_start_a
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    invoke-direct {v3, p2, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 163
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .local v3, "file":Ljava/io/RandomAccessFile;
    move-object v7, v3

    .line 164
    :try_start_b
    invoke-virtual {p0, v3}, Lcom/facebook/acra/Spool;->tryLock(Ljava/io/RandomAccessFile;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {p2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-result v11

    if-eqz v11, :cond_b

    move v8, v9

    .line 168
    :goto_1
    if-nez v8, :cond_11

    .line 169
    :try_start_c
    invoke-virtual {p0, v3}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 170
    const/4 v2, 0x0

    .line 171
    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 176
    .end local v8    # "keepDonorFile":Z
    :cond_9
    :goto_2
    if-nez v2, :cond_d

    .line 177
    new-instance v2, Ljava/io/RandomAccessFile;

    .end local v2    # "file":Ljava/io/RandomAccessFile;
    const-string v9, "rw"

    invoke-direct {v2, v4, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    move-object v7, v2

    .line 179
    move-object v6, v4

    .line 180
    invoke-virtual {p0, v2}, Lcom/facebook/acra/Spool;->tryLock(Ljava/io/RandomAccessFile;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result v9

    if-nez v9, :cond_d

    .line 195
    if-eqz v6, :cond_a

    .line 196
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 198
    :cond_a
    invoke-virtual {p0, v7}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v5, :cond_3

    .line 200
    monitor-enter p0

    .line 201
    :try_start_d
    iget-object v9, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v9

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v9

    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v8    # "keepDonorFile":Z
    :cond_b
    move v8, v10

    .line 164
    goto :goto_1

    .line 165
    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_e
    const-string v9, "Spool"

    const-string v10, "error using donor file %s; falling back to regular path"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-static {v9, v0, v10, v11}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 168
    if-nez v8, :cond_9

    .line 169
    :try_start_f
    invoke-virtual {p0, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 170
    const/4 v2, 0x0

    .line 171
    const/4 v7, 0x0

    goto :goto_2

    .line 168
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_5
    move-exception v9

    :goto_4
    if-nez v8, :cond_c

    .line 169
    invoke-virtual {p0, v2}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 170
    const/4 v2, 0x0

    .line 171
    const/4 v7, 0x0

    :cond_c
    throw v9

    .line 185
    .end local v8    # "keepDonorFile":Z
    :cond_d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result v9

    if-nez v9, :cond_f

    .line 195
    if-eqz v6, :cond_e

    .line 196
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 198
    :cond_e
    invoke-virtual {p0, v7}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v5, :cond_3

    .line 200
    monitor-enter p0

    .line 201
    :try_start_10
    iget-object v9, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0

    goto/16 :goto_0

    :catchall_6
    move-exception v9

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v9

    .line 189
    :cond_f
    :try_start_11
    new-instance v1, Lcom/facebook/acra/Spool$FileBeingProduced;

    invoke-direct {v1, p0, v4, v2}, Lcom/facebook/acra/Spool$FileBeingProduced;-><init>(Lcom/facebook/acra/Spool;Ljava/io/File;Ljava/io/RandomAccessFile;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 190
    .local v1, "fbp":Lcom/facebook/acra/Spool$FileBeingProduced;
    const/4 v7, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v5, 0x0

    .line 195
    if-eqz v6, :cond_10

    .line 196
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 198
    :cond_10
    invoke-virtual {p0, v7}, Lcom/facebook/acra/Spool;->closeSilently(Ljava/io/Closeable;)V

    .line 199
    if-eqz v5, :cond_3

    .line 200
    monitor-enter p0

    .line 201
    :try_start_12
    iget-object v9, p0, Lcom/facebook/acra/Spool;->mHazardList:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit p0

    goto/16 :goto_0

    :catchall_7
    move-exception v9

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v9

    .end local v1    # "fbp":Lcom/facebook/acra/Spool$FileBeingProduced;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .end local v4    # "fileName":Ljava/io/File;
    :catchall_8
    move-exception v9

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v9

    .line 168
    .restart local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v4    # "fileName":Ljava/io/File;
    .restart local v8    # "keepDonorFile":Z
    :catchall_9
    move-exception v9

    move-object v2, v3

    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 165
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "file":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "file":Ljava/io/RandomAccessFile;
    :cond_11
    move-object v2, v3

    .end local v3    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_2
.end method

.method public snapshot(Ljava/util/Comparator;Ljava/io/FilenameFilter;)Lcom/facebook/acra/Spool$Snapshot;
    .locals 10
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # Ljava/io/FilenameFilter;
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
    .line 218
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/facebook/acra/Spool$Descriptor;>;"
    iget-object v6, p0, Lcom/facebook/acra/Spool;->mDirectoryName:Ljava/io/File;

    invoke-virtual {v6, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "fileBaseNames":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 220
    const/4 v6, 0x0

    new-array v2, v6, [Ljava/lang/String;

    .line 223
    :cond_0
    array-length v5, v2

    .line 224
    .local v5, "nfiles":I
    new-array v0, v5, [Lcom/facebook/acra/Spool$Descriptor;

    .line 225
    .local v0, "descriptors":[Lcom/facebook/acra/Spool$Descriptor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 226
    aget-object v1, v2, v4

    .line 227
    .local v1, "fileBaseName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/facebook/acra/Spool;->mDirectoryName:Ljava/io/File;

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v3, "fileName":Ljava/io/File;
    new-instance v6, Lcom/facebook/acra/Spool$Descriptor;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v6, v1, v8, v9, v3}, Lcom/facebook/acra/Spool$Descriptor;-><init>(Ljava/lang/String;JLjava/io/File;)V

    aput-object v6, v0, v4

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "fileBaseName":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/io/File;
    :cond_1
    if-eqz p1, :cond_2

    .line 232
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 235
    :cond_2
    new-instance v6, Lcom/facebook/acra/Spool$Snapshot;

    invoke-direct {v6, p0, v0}, Lcom/facebook/acra/Spool$Snapshot;-><init>(Lcom/facebook/acra/Spool;[Lcom/facebook/acra/Spool$Descriptor;)V

    return-object v6
.end method

.method tryLock(Ljava/io/RandomAccessFile;)Z
    .locals 9
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const/4 v8, 0x0

    .line 403
    .local v8, "haveLock":Z
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
    const/4 v8, 0x1

    .line 419
    :cond_0
    :goto_0
    return v8

    .line 408
    :catch_0
    move-exception v0

    .line 411
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, "exm":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v1, ": EAGAIN ("

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ": errno 11 ("

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    :cond_1
    throw v0

    .line 406
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "exm":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
