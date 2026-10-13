.class public final Lcom/oculus/video/upstream/OculusCacheDataSource;
.super Ljava/lang/Object;
.source "OculusCacheDataSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/upstream/OculusCacheDataSource$Flags;,
        Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x200000L

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2

.field private static final MIN_READ_BEFORE_CHECKING_CACHE:J = 0x19000L


# instance fields
.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private final callback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

.field private checkCachePosition:J

.field private currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private currentDataSpecLengthUnset:Z

.field private currentHoleSpan:Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;

.field private currentRequestIgnoresCache:Z

.field private flags:I

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private readPosition:J

.field private seenCacheError:Z

.field private final upstreamDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;IJLcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V
    .locals 7

    .line 136
    new-instance v2, Lcom/oculus/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v2}, Lcom/oculus/android/exoplayer2/upstream/FileDataSource;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/upstream/OculusCacheDataSource;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSource;IJLcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSource;IJLcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cacheReadDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    and-int/lit8 p2, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 156
    :goto_0
    iput-boolean p2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->blockOnCache:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 157
    :goto_1
    iput-boolean p2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->ignoreCacheOnError:Z

    and-int/lit8 p2, p3, 0x4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 158
    :cond_2
    iput-boolean v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    .line 160
    iput-object p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->upstreamDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-nez p6, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    .line 161
    :cond_3
    invoke-interface {p6}, Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;->getCache()Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    .line 162
    new-instance p2, Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object p3, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    invoke-direct {p2, p3, p4, p5}, Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;J)V

    .line 163
    new-instance p3, Lcom/oculus/android/exoplayer2/upstream/TeeDataSource;

    invoke-direct {p3, p1, p2}, Lcom/oculus/android/exoplayer2/upstream/TeeDataSource;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSink;)V

    iput-object p3, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cacheWriteDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 164
    iput-object p6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->callback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V
    .locals 6

    const/4 v2, 0x0

    const-wide/32 v3, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/upstream/OculusCacheDataSource;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;IJLcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V

    return-void
.end method

.method private closeCurrentSource()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 384
    :try_start_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iput-object v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 387
    iput-boolean v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSpecLengthUnset:Z

    .line 388
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentHoleSpan:Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v0}, Lcom/oculus/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 390
    iput-object v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentHoleSpan:Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 386
    iput-object v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 387
    iput-boolean v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSpecLengthUnset:Z

    .line 388
    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentHoleSpan:Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v1, :cond_2

    .line 389
    iget-object v3, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v1}, Lcom/oculus/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 390
    iput-object v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentHoleSpan:Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;

    :cond_2
    throw v0
.end method

.method private handleBeforeThrow(Ljava/io/IOException;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cacheReadDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    instance-of p1, p1, Lcom/oculus/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->seenCacheError:Z

    :cond_1
    return-void
.end method

.method private static isCausedByPositionOutOfRange(Ljava/io/IOException;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 357
    instance-of v0, p0, Lcom/oculus/android/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_0

    .line 358
    move-object v0, p0

    check-cast v0, Lcom/oculus/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/oculus/android/exoplayer2/upstream/DataSourceException;->reason:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 363
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isWritingToCache()Z
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cacheWriteDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openNextSource(Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-boolean v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentRequestIgnoresCache:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->blockOnCache:Z

    if-eqz v0, :cond_1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->key:Ljava/lang/String;

    iget-wide v3, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    invoke-interface {v0, v2, v3, v4}, Lcom/oculus/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->key:Ljava/lang/String;

    iget-wide v3, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    invoke-interface {v0, v2, v3, v4}, Lcom/oculus/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0

    :goto_0
    const-wide/16 v2, -0x1

    if-nez v0, :cond_2

    .line 288
    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->upstreamDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 289
    new-instance v12, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget-object v5, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    iget-wide v8, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    iget-object v10, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->key:Ljava/lang/String;

    iget v11, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->flags:I

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v5, v1

    goto :goto_2

    .line 290
    :cond_2
    iget-boolean v4, v0, Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v4, :cond_4

    .line 292
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 293
    iget-wide v6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    iget-wide v8, v0, Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v8, v6, v8

    .line 294
    iget-wide v6, v0, Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v6, v8

    .line 295
    iget-wide v10, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    cmp-long v1, v10, v2

    if-eqz v1, :cond_3

    .line 296
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_3
    move-wide v10, v6

    .line 298
    new-instance v1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget-wide v6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    iget-object v12, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->key:Ljava/lang/String;

    iget v13, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->flags:I

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 299
    iget-object v4, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cacheReadDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-object v5, v4

    move-object v4, v1

    goto :goto_2

    .line 303
    :cond_4
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 304
    iget-wide v4, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    goto :goto_1

    .line 306
    :cond_5
    iget-wide v4, v0, Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 307
    iget-wide v6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_6

    .line 308
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_6
    :goto_1
    move-wide v10, v4

    .line 311
    new-instance v4, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget-object v7, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    iget-object v12, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->key:Ljava/lang/String;

    iget v13, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->flags:I

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 312
    iget-object v5, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cacheWriteDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-eqz v5, :cond_7

    goto :goto_2

    .line 315
    :cond_7
    iget-object v5, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->upstreamDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 316
    iget-object v6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v6, v0}, Lcom/oculus/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;)V

    move-object v0, v1

    .line 321
    :goto_2
    iget-boolean v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->upstreamDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-ne v5, v1, :cond_8

    iget-wide v6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    const-wide/32 v8, 0x19000

    add-long/2addr v6, v8

    goto :goto_3

    :cond_8
    const-wide v6, 0x7fffffffffffffffL

    :goto_3
    iput-wide v6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->checkCachePosition:J

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_c

    .line 326
    iget-object p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v7, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->upstreamDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-ne p1, v7, :cond_9

    const/4 p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 327
    iget-object p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->upstreamDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-ne v5, p1, :cond_a

    return-void

    .line 333
    :cond_a
    :try_start_1
    invoke-direct {p0}, Lcom/oculus/video/upstream/OculusCacheDataSource;->closeCurrentSource()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 335
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 337
    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v0}, Lcom/oculus/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 339
    :cond_b
    throw p1

    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    .line 343
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 344
    iput-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentHoleSpan:Lcom/oculus/android/exoplayer2/upstream/cache/CacheSpan;

    .line 346
    :cond_d
    iput-object v5, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 347
    iget-wide v7, v4, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long p1, v7, v2

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSpecLengthUnset:Z

    .line 348
    invoke-interface {v5, v4}, Lcom/oculus/android/exoplayer2/upstream/DataSource;->open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    .line 349
    iget-boolean p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSpecLengthUnset:Z

    if-eqz p1, :cond_f

    cmp-long p1, v0, v2

    if-eqz p1, :cond_f

    .line 350
    invoke-direct {p0, v0, v1}, Lcom/oculus/video/upstream/OculusCacheDataSource;->setBytesRemaining(J)V

    :cond_f
    return-void
.end method

.method private setBytesRemaining(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iput-wide p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    .line 370
    invoke-direct {p0}, Lcom/oculus/video/upstream/OculusCacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    add-long/2addr v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/android/exoplayer2/upstream/cache/Cache;->setContentLength(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->uri:Landroid/net/Uri;

    .line 248
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/video/upstream/OculusCacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 250
    invoke-direct {p0, v0}, Lcom/oculus/video/upstream/OculusCacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 251
    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->upstreamDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->uri:Landroid/net/Uri;

    :goto_0
    return-object v0
.end method

.method public open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->uri:Landroid/net/Uri;

    .line 171
    iget v0, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->flags:I

    iput v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->flags:I

    .line 172
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->key:Ljava/lang/String;

    .line 173
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    .line 174
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->callback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->callback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    .line 175
    invoke-interface {v0}, Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;->getCurrentPositionMs()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->callback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    .line 176
    invoke-interface {v0}, Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;->getCurrentPositionMs()J

    move-result-wide v5

    const-wide/16 v7, 0x9c4

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-boolean v5, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->ignoreCacheOnError:Z

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->seenCacheError:Z

    if-nez v5, :cond_4

    :cond_1
    iget-wide v8, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-nez v5, :cond_4

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentRequestIgnoresCache:Z

    .line 180
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v5, v0, v6

    if-nez v5, :cond_7

    iget-boolean v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v0, :cond_5

    goto :goto_2

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    .line 184
    iget-wide v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    cmp-long v5, v0, v6

    if-eqz v5, :cond_8

    .line 185
    iget-wide v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    iget-wide v5, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    .line 186
    iget-wide v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_6

    goto :goto_3

    .line 187
    :cond_6
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {v0, v4}, Lcom/oculus/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw v0

    .line 181
    :cond_7
    :goto_2
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    .line 191
    :cond_8
    :goto_3
    invoke-direct {p0, v4}, Lcom/oculus/video/upstream/OculusCacheDataSource;->openNextSource(Z)V

    .line 192
    iget-wide v0, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 194
    invoke-direct {p0, v0}, Lcom/oculus/video/upstream/OculusCacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 196
    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->cacheReadDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-ne v1, v2, :cond_9

    iget-boolean v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->ignoreCacheOnError:Z

    if-eqz v1, :cond_9

    .line 197
    invoke-virtual {p0, p1}, Lcom/oculus/video/upstream/OculusCacheDataSource;->open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0

    .line 199
    :cond_9
    throw v0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 208
    :cond_0
    iget-wide v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_1

    return v3

    .line 212
    :cond_1
    :try_start_0
    iget-wide v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    iget-wide v6, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->checkCachePosition:J

    cmp-long v8, v1, v6

    if-ltz v8, :cond_2

    const/4 v1, 0x1

    .line 213
    invoke-direct {p0, v1}, Lcom/oculus/video/upstream/OculusCacheDataSource;->openNextSource(Z)V

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/oculus/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v1

    const-wide/16 v6, -0x1

    if-eq v1, v3, :cond_3

    .line 217
    iget-wide p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    int-to-long v8, v1

    add-long/2addr p1, v8

    iput-wide p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->readPosition:J

    .line 218
    iget-wide p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    cmp-long p3, p1, v6

    if-eqz p3, :cond_5

    .line 219
    iget-wide p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    sub-long/2addr p1, v8

    iput-wide p1, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    goto :goto_0

    .line 221
    :cond_3
    iget-boolean v2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSpecLengthUnset:Z

    if-eqz v2, :cond_4

    .line 222
    invoke-direct {p0, v4, v5}, Lcom/oculus/video/upstream/OculusCacheDataSource;->setBytesRemaining(J)V

    goto :goto_0

    .line 223
    :cond_4
    iget-wide v8, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    cmp-long v2, v8, v4

    if-gtz v2, :cond_6

    iget-wide v8, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->bytesRemaining:J

    cmp-long v2, v8, v6

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    return v1

    .line 224
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/oculus/video/upstream/OculusCacheDataSource;->closeCurrentSource()V

    .line 225
    invoke-direct {p0, v0}, Lcom/oculus/video/upstream/OculusCacheDataSource;->openNextSource(Z)V

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/video/upstream/OculusCacheDataSource;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 230
    iget-boolean p2, p0, Lcom/oculus/video/upstream/OculusCacheDataSource;->currentDataSpecLengthUnset:Z

    if-eqz p2, :cond_7

    invoke-static {p1}, Lcom/oculus/video/upstream/OculusCacheDataSource;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 231
    invoke-direct {p0, v4, v5}, Lcom/oculus/video/upstream/OculusCacheDataSource;->setBytesRemaining(J)V

    return v3

    .line 234
    :cond_7
    invoke-direct {p0, p1}, Lcom/oculus/video/upstream/OculusCacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 235
    throw p1
.end method
