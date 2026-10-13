.class public final Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;
.super Ljava/lang/Object;
.source "DownloaderConstructorHelper.java"


# instance fields
.field private final cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Lcom/oculus/android/exoplayer2/upstream/DataSink$Factory;

.field private final priorityTaskManager:Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

.field private final upstreamDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;-><init>(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSink$Factory;Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSink$Factory;Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 0
    .param p3    # Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/oculus/android/exoplayer2/upstream/DataSink$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    .line 65
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->upstreamDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    .line 66
    iput-object p3, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheReadDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    .line 67
    iput-object p4, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheWriteDataSinkFactory:Lcom/oculus/android/exoplayer2/upstream/DataSink$Factory;

    .line 68
    iput-object p5, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method


# virtual methods
.method public buildCacheDataSource(Z)Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSource;
    .locals 8

    .line 88
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheReadDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/upstream/FileDataSource;-><init>()V

    :goto_0
    move-object v4, v0

    if-eqz p1, :cond_1

    .line 91
    new-instance p1, Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    sget-object v3, Lcom/oculus/android/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lcom/oculus/android/exoplayer2/upstream/DummyDataSource;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSink;ILcom/oculus/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object p1

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cacheWriteDataSinkFactory:Lcom/oculus/android/exoplayer2/upstream/DataSink$Factory;

    if-eqz p1, :cond_2

    .line 95
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lcom/oculus/android/exoplayer2/upstream/DataSink;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v0, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    const-wide/32 v1, 0x200000

    invoke-direct {p1, v0, v1, v2}, Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;J)V

    :goto_1
    move-object v5, p1

    .line 97
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->upstreamDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

    if-nez v0, :cond_3

    move-object v3, p1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/oculus/android/exoplayer2/upstream/PriorityDataSource;

    const/16 v2, -0x3e8

    invoke-direct {v1, p1, v0, v2}, Lcom/oculus/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;I)V

    move-object v3, v1

    .line 100
    :goto_2
    new-instance p1, Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/oculus/android/exoplayer2/upstream/cache/Cache;Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSink;ILcom/oculus/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-object p1
.end method

.method public getCache()Lcom/oculus/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->cache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public getPriorityTaskManager()Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;->priorityTaskManager:Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;-><init>()V

    :goto_0
    return-object v0
.end method
