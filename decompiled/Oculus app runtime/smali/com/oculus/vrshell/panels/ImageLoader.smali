.class public Lcom/oculus/vrshell/panels/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;,
        Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;,
        Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;,
        Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oculus/vrshell/panels/ImageLoader;

.field private static final MAXIMUM_IMAGE_CACHE_SIZE:I = 0x400000


# instance fields
.field private final mDownloader:Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;

.field private final mFutureMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mImageMap:Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/oculus/vrshell/panels/ImageLoader;

    invoke-direct {v0}, Lcom/oculus/vrshell/panels/ImageLoader;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/panels/ImageLoader;->INSTANCE:Lcom/oculus/vrshell/panels/ImageLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/oculus/vrshell/panels/ImageLoader$1;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/panels/ImageLoader$1;-><init>(Lcom/oculus/vrshell/panels/ImageLoader;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mDownloader:Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;

    .line 38
    new-instance v0, Lcom/oculus/vrshell/panels/ImageLoader$2;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/panels/ImageLoader$2;-><init>(Lcom/oculus/vrshell/panels/ImageLoader;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mImageMap:Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mLock:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mDownloader:Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;

    .line 60
    iput-object p2, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mImageMap:Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/panels/ImageLoader;)Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mDownloader:Lcom/oculus/vrshell/panels/ImageLoader$ImageDownloader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/panels/ImageLoader;)Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/vrshell/panels/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/vrshell/panels/ImageLoader;)Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mImageMap:Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;

    return-object p0
.end method

.method private attachListener(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;",
            ")V"
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/oculus/vrshell/panels/ImageLoader$8;

    invoke-direct {v0, p0, p2}, Lcom/oculus/vrshell/panels/ImageLoader$8;-><init>(Lcom/oculus/vrshell/panels/ImageLoader;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->listen(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;)V

    return-void
.end method

.method public static getInstance()Lcom/oculus/vrshell/panels/ImageLoader;
    .locals 1

    .line 26
    sget-object v0, Lcom/oculus/vrshell/panels/ImageLoader;->INSTANCE:Lcom/oculus/vrshell/panels/ImageLoader;

    return-object v0
.end method


# virtual methods
.method public loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mImageMap:Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;

    invoke-interface {v0, p1}, Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/oculus/vrshell/panels/ThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/ThreadExecutor;

    move-result-object p1

    new-instance v1, Lcom/oculus/vrshell/panels/ImageLoader$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/oculus/vrshell/panels/ImageLoader$3;-><init>(Lcom/oculus/vrshell/panels/ImageLoader;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;Landroid/graphics/Bitmap;)V

    .line 74
    invoke-virtual {p1, v1}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mImageMap:Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;

    invoke-interface {v1, p1}, Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    invoke-static {}, Lcom/oculus/vrshell/panels/ThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/ThreadExecutor;

    move-result-object p1

    new-instance v2, Lcom/oculus/vrshell/panels/ImageLoader$4;

    invoke-direct {v2, p0, p2, v1}, Lcom/oculus/vrshell/panels/ImageLoader$4;-><init>(Lcom/oculus/vrshell/panels/ImageLoader;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;Landroid/graphics/Bitmap;)V

    .line 88
    invoke-virtual {p1, v2}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    .line 95
    monitor-exit v0

    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    if-eqz v1, :cond_2

    .line 101
    invoke-direct {p0, v1, p2}, Lcom/oculus/vrshell/panels/ImageLoader;->attachListener(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    .line 102
    monitor-exit v0

    return-void

    .line 106
    :cond_2
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 108
    invoke-static {}, Lcom/oculus/vrshell/panels/ThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/ThreadExecutor;

    move-result-object v2

    new-instance v3, Lcom/oculus/vrshell/panels/ImageLoader$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/oculus/vrshell/panels/ImageLoader$5;-><init>(Lcom/oculus/vrshell/panels/ImageLoader;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    .line 109
    invoke-virtual {v2, v3}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/oculus/vrshell/panels/ImageLoader;->mFutureMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 132
    invoke-direct {p0, v2, p2}, Lcom/oculus/vrshell/panels/ImageLoader;->attachListener(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public loadImages(Ljava/util/List;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;",
            ")V"
        }
    .end annotation

    .line 174
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 175
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 177
    new-instance v9, Lcom/oculus/vrshell/panels/ImageLoader$6;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, v8

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/oculus/vrshell/panels/ImageLoader$6;-><init>(Lcom/oculus/vrshell/panels/ImageLoader;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v8, v9}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/panels/ThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/ThreadExecutor;

    move-result-object p1

    new-instance v0, Lcom/oculus/vrshell/panels/ImageLoader$7;

    invoke-direct {v0, p0, v7, p2, v6}, Lcom/oculus/vrshell/panels/ImageLoader$7;-><init>(Lcom/oculus/vrshell/panels/ImageLoader;Ljava/util/concurrent/CountDownLatch;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 207
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    return-void
.end method

.method public loadImages([Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;)V
    .locals 0

    .line 165
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImages(Ljava/util/List;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;)V

    return-void
.end method
