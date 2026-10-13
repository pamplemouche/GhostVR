.class final Lcom/facebook/common/dextricks/OdexSchemeXdex;
.super Lcom/facebook/common/dextricks/OdexSchemeTurbo;
.source "OdexSchemeXdex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;,
        Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;
    }
.end annotation


# instance fields
.field private final mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;


# direct methods
.method constructor <init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/common/dextricks/OdexSchemeTurbo;-><init>(I[Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    .line 34
    iput-object p1, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    .line 35
    return-void
.end method

.method private findDexToOptimize(Lcom/facebook/common/dextricks/DexStore;J)Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 83
    const-wide/16 v4, 0x10

    shl-long/2addr v4, v0

    and-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    aget-object v1, v1, v3

    .line 88
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-static {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v1

    .line 91
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->tryAcquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 92
    if-eqz v1, :cond_2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 99
    :try_start_2
    new-instance v1, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;-><init>(ILcom/facebook/common/dextricks/ReentrantLockFile$Lock;Lcom/facebook/common/dextricks/OdexSchemeXdex$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_3
    move-object v0, v1

    .line 109
    :goto_2
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto :goto_1

    .line 90
    :catch_1
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto :goto_3

    .line 103
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_7

    .line 104
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_7
    throw v0

    :cond_8
    move-object v0, v2

    .line 109
    goto :goto_2
.end method

.method private isFileCorruptionException(Lcom/facebook/common/dextricks/DexOptRunner$DexOptException;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 333
    iget v2, p1, Lcom/facebook/common/dextricks/DexOptRunner$DexOptException;->status:I

    if-eq v2, v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    iget-object v2, p1, Lcom/facebook/common/dextricks/DexOptRunner$DexOptException;->errout:Ljava/lang/String;

    .line 338
    if-eqz v2, :cond_0

    .line 342
    const-string v3, "E/dalvikvm: ERROR: bad checksum"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 343
    if-eqz v3, :cond_2

    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private makeFakeCacheSymlink(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected file to exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected file to exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "classes.dex"

    .line 123
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/facebook/common/dextricks/Fs;->dexOptGenerateCacheFileName(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 124
    const-string v1, "[opt] symlink %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {p3, v0}, Lcom/facebook/common/dextricks/Fs;->symlink(Ljava/io/File;Ljava/io/File;)V

    .line 126
    return-void

    .line 122
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openDexInsideOdex(Ljava/io/FileInputStream;)Lcom/facebook/common/dextricks/PartialInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 191
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 192
    const-wide/16 v4, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 193
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid odex file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 200
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 202
    const-string v2, "dexOffset:%s dexLength:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    if-gtz v4, :cond_1

    move v2, v0

    :goto_0
    if-gtz v5, :cond_2

    :goto_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid odex file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 203
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 207
    :cond_3
    int-to-long v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 208
    new-instance v0, Lcom/facebook/common/dextricks/PartialInputStream;

    invoke-direct {v0, p1, v5}, Lcom/facebook/common/dextricks/PartialInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method private optimize1(Lcom/facebook/common/dextricks/DexStore;Ljava/io/File;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;Lcom/facebook/common/dextricks/DexOptRunner;Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;[Ljava/io/File;[B)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->startOptimizing()V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    move-object/from16 v0, p6

    iget v3, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->dexNr:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aget-object v5, v2, v3

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    move-object/from16 v0, p6

    iget v3, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->dexNr:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    .line 276
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v13, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    const-string v2, "[opt] started optimizing %s -> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    aput-object v13, v4, v3

    invoke-static {v2, v4}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    move-object/from16 v0, p7

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 283
    new-array v8, v2, [Ljava/lang/String;

    .line 284
    const/4 v3, 0x0

    .line 285
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p7

    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 286
    add-int/lit8 v4, v3, 0x1

    aget-object v6, p7, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    .line 285
    add-int/lit8 v2, v2, 0x2

    move v3, v4

    goto :goto_0

    .line 289
    :cond_0
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 290
    div-int/lit8 v4, v2, 0x2

    move-object/from16 v0, p6

    iget v6, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->dexNr:I

    if-eq v4, v6, :cond_1

    .line 291
    add-int/lit8 v4, v3, 0x1

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    move v3, v4

    .line 289
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 296
    :cond_2
    array-length v2, v8

    if-ne v3, v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    const-string v3, "accounted for all dex files"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 299
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v11, 0x0

    .line 300
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->openDexInsideOdex(Ljava/io/FileInputStream;)Lcom/facebook/common/dextricks/PartialInputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-result-object v3

    const/4 v10, 0x0

    .line 301
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->available()I

    move-result v4

    .line 302
    const/4 v2, 0x1

    if-gt v4, v2, :cond_3

    .line 303
    const/4 v4, -0x1

    .line 305
    :cond_3
    const-string v2, "[opt] size hint for %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v6, v12, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v9, 0x0

    .line 310
    :try_start_2
    const-string v7, "xdex"

    move-object/from16 v2, p5

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/common/dextricks/DexOptRunner;->run(Ljava/io/InputStream;ILjava/lang/String;Ljava/io/RandomAccessFile;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/forker/Fd;->fileno(Ljava/io/FileDescriptor;)I

    move-result v2

    .line 318
    move-object/from16 v0, p8

    invoke-static {v2, v0}, Lcom/facebook/common/dextricks/DalvikInternals;->replaceOdexDepBlock(I[B)V

    .line 319
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->config:Lcom/facebook/common/dextricks/OptimizationConfiguration;

    iget-object v4, v4, Lcom/facebook/common/dextricks/OptimizationConfiguration;->prio:Lcom/facebook/common/dextricks/Prio;

    iget v4, v4, Lcom/facebook/common/dextricks/Prio;->ioPriority:I

    invoke-static {v2, v4}, Lcom/facebook/common/dextricks/DalvikInternals;->fsync(II)V

    .line 320
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->tryDiscardPageCache(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 321
    if-eqz v6, :cond_4

    if-eqz v9, :cond_b

    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 322
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    if-eqz v10, :cond_d

    :try_start_5
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 323
    :cond_5
    :goto_4
    if-eqz v14, :cond_6

    if-eqz v11, :cond_f

    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 325
    :cond_6
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->startCommitting()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    move-object/from16 v0, p6

    iget v6, v0, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->dexNr:I

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 326
    const-string v4, "[opt] started commit"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-static {v12, v13}, Lcom/facebook/common/dextricks/Fs;->renameOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 328
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->finishCommit(J)V

    .line 329
    const-string v2, "[opt] finished commit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    return-void

    .line 296
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 313
    :catchall_0
    move-exception v2

    .line 314
    :try_start_7
    invoke-static {v12}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 307
    :catch_0
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 321
    :catchall_1
    move-exception v4

    move-object v15, v4

    move-object v4, v2

    move-object v2, v15

    :goto_6
    if-eqz v6, :cond_8

    if-eqz v4, :cond_c

    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_8
    :goto_7
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 300
    :catch_1
    move-exception v2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 322
    :catchall_2
    move-exception v4

    move-object v15, v4

    move-object v4, v2

    move-object v2, v15

    :goto_8
    if-eqz v3, :cond_9

    if-eqz v4, :cond_e

    :try_start_c
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_9
    :goto_9
    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 299
    :catch_2
    move-exception v2

    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 323
    :catchall_3
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_a
    if-eqz v14, :cond_a

    if-eqz v3, :cond_10

    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    :cond_a
    :goto_b
    throw v2

    .line 321
    :catch_3
    move-exception v2

    :try_start_10
    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 322
    :catchall_4
    move-exception v2

    move-object v4, v10

    goto :goto_8

    .line 321
    :cond_b
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3

    :catch_4
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_7

    .line 322
    :catch_5
    move-exception v2

    :try_start_11
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 323
    :catchall_5
    move-exception v2

    move-object v3, v11

    goto :goto_a

    .line 322
    :cond_d
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->close()V

    goto :goto_4

    :catch_6
    move-exception v3

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/PartialInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_9

    .line 323
    :catch_7
    move-exception v2

    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_5

    :catch_8
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_10
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    goto :goto_b

    .line 321
    :catchall_6
    move-exception v2

    move-object v4, v9

    goto :goto_6
.end method

.method private prepareTmpDirForXdex([Ljava/io/File;Lcom/facebook/common/dextricks/DexStore;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-static {}, Lcom/facebook/common/dextricks/Fs;->findSystemDalvikCache()Ljava/io/File;

    move-result-object v3

    .line 134
    new-instance v4, Ljava/io/File;

    const-string v0, "dalvik-cache"

    invoke-direct {v4, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->mkdirOrThrow(Ljava/io/File;)V

    .line 138
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 139
    const-string v1, "BOOTCLASSPATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "classes.dex"

    .line 145
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-static {v4, v6, v1}, Lcom/facebook/common/dextricks/Fs;->dexOptGenerateCacheFileName(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 149
    invoke-static {v3, v6, v1}, Lcom/facebook/common/dextricks/Fs;->dexOptGenerateCacheFileName(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 150
    const-string v6, "[opt] symlink %s -> %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-static {v1, v0}, Lcom/facebook/common/dextricks/Fs;->symlink(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 160
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 161
    add-int/lit8 v1, v0, 0x0

    aget-object v1, p1, v1

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-direct {p0, v4, v1, v3}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->makeFakeCacheSymlink(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 160
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 165
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x0

    aget-object v3, v3, v5

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/io/File;

    iget-object v3, p2, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->expectedFiles:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, v4, v0, v1}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->makeFakeCacheSymlink(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 165
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 170
    :cond_4
    return-void
.end method


# virtual methods
.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "OdexSchemeXdex"

    return-object v0
.end method

.method needOptimization(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    iget-object v2, p0, Lcom/facebook/common/dextricks/OdexSchemeXdex;->mDexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v2, v2

    shl-int v2, v0, v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    .line 45
    const/4 v4, 0x4

    shr-long v4, p1, v4

    .line 47
    const-string v6, "expectedDexBits:0x%08x actualDexBits:0x%08x"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method optimize(Landroid/content/Context;Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/common/dextricks/DexStore;->getDependencyOdexFiles()[Ljava/io/File;

    move-result-object v9

    .line 351
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/common/dextricks/DexStore;->getOdexCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/common/dextricks/DalvikInternals;->readOdexDepBlock(Ljava/lang/String;)[B

    move-result-object v10

    .line 353
    const-string v3, "dexopt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/facebook/common/dextricks/DexStore;->makeTemporaryDirectory(Ljava/lang/String;)Lcom/facebook/common/dextricks/DexStore$TmpDir;

    move-result-object v14

    const/4 v12, 0x0

    .line 354
    :try_start_0
    const-string v3, "[opt] opened tmpDir %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->config:Lcom/facebook/common/dextricks/OptimizationConfiguration;

    iget v3, v3, Lcom/facebook/common/dextricks/OptimizationConfiguration;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 359
    :goto_0
    if-eqz v3, :cond_4

    .line 360
    new-instance v7, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;

    iget-object v3, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v7, v0, v3}, Lcom/facebook/common/dextricks/OdexSchemeXdex$PoliteDexOptRunner;-><init>(Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Ljava/io/File;)V

    .line 366
    :goto_1
    const-string v3, "[opt] starting optimization pass; creating job"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    new-instance v6, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;-><init>(Lcom/facebook/common/dextricks/DexStore$OptimizationSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    .line 368
    :try_start_1
    const-string v3, "[opt] opened job"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    if-nez v2, :cond_e

    .line 371
    iget-object v2, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v2}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->prepareTmpDirForXdex([Ljava/io/File;Lcom/facebook/common/dextricks/DexStore;Ljava/io/File;)V

    .line 372
    const/4 v2, 0x1

    move v13, v2

    .line 375
    :goto_2
    iget-wide v2, v6, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->initialStatus:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->findDexToOptimize(Lcom/facebook/common/dextricks/DexStore;J)Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;

    move-result-object v8

    .line 376
    const-string v2, "[opt] dto %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 378
    if-eqz v8, :cond_0

    .line 380
    :try_start_2
    iget-object v4, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v10}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->optimize1(Lcom/facebook/common/dextricks/DexStore;Ljava/io/File;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;Lcom/facebook/common/dextricks/DexOptRunner;Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;[Ljava/io/File;[B)V
    :try_end_2
    .catch Lcom/facebook/common/dextricks/DexOptRunner$DexOptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 397
    :try_start_3
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 400
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v11, :cond_9

    :try_start_4
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    :cond_1
    :goto_3
    if-nez v8, :cond_d

    .line 402
    :try_start_5
    invoke-virtual {v7}, Lcom/facebook/common/dextricks/DexOptRunner;->cleanup()V

    .line 403
    const-string v2, "[opt] optimization complete"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 404
    if-eqz v14, :cond_2

    if-eqz v12, :cond_b

    :try_start_6
    invoke-virtual {v14}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 405
    :cond_2
    :goto_4
    return-void

    .line 356
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 362
    :cond_4
    :try_start_7
    new-instance v7, Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboDexOptRunner;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->dexStoreConfig:Lcom/facebook/common/dextricks/DexStore$Config;

    iget-object v4, v14, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    invoke-direct {v7, v3, v4}, Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboDexOptRunner;-><init>(Lcom/facebook/common/dextricks/DexStore$Config;Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 353
    :catch_0
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 404
    :catchall_0
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_5
    if-eqz v14, :cond_5

    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v14}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_5
    :goto_6
    throw v2

    .line 389
    :catch_1
    move-exception v2

    .line 390
    :try_start_a
    sget-boolean v3, Lcom/facebook/common/dextricks/Fs;->isKernelPageCacheFlushIsBroken:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/facebook/common/dextricks/OdexSchemeXdex;->isFileCorruptionException(Lcom/facebook/common/dextricks/DexOptRunner$DexOptException;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 391
    const-string v2, "detected odex file corruption: trying again with kernel workaround"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    const/4 v2, 0x1

    sput-boolean v2, Lcom/facebook/common/dextricks/Fs;->isKernelPageCacheFlushIsBroken:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 397
    :try_start_b
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 400
    if-eqz v6, :cond_1

    if-eqz v11, :cond_6

    :try_start_c
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_d
    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 404
    :catchall_1
    move-exception v2

    move-object v3, v12

    goto :goto_5

    .line 400
    :cond_6
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    .line 395
    :cond_7
    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 397
    :catchall_2
    move-exception v2

    :try_start_f
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/OdexSchemeXdex$DexToOptimize;->close()V

    throw v2
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 367
    :catch_3
    move-exception v2

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 400
    :catchall_3
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_7
    if-eqz v6, :cond_8

    if-eqz v3, :cond_a

    :try_start_11
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_8
    :goto_8
    :try_start_12
    throw v2

    :catch_4
    move-exception v2

    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V

    goto :goto_3

    :catch_5
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession$Job;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_8

    .line 404
    :catch_6
    move-exception v2

    invoke-virtual {v12, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v14}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V

    goto :goto_4

    :catch_7
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v14}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V

    goto :goto_6

    .line 400
    :catchall_4
    move-exception v2

    move-object v3, v11

    goto :goto_7

    :cond_d
    move v2, v13

    goto/16 :goto_1

    :cond_e
    move v13, v2

    goto/16 :goto_2
.end method
