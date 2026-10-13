.class public Lcom/facebook/rti/common/concurrent/RtiExecutor;
.super Ljava/lang/Object;
.source "RtiExecutor.java"


# static fields
.field private static sCorePoolSize:I

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static volatile sThreadPoolExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/rti/common/concurrent/RtiExecutor$1;

    invoke-direct {v0}, Lcom/facebook/rti/common/concurrent/RtiExecutor$1;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 63
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 68
    const/4 v0, 0x5

    sput v0, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sCorePoolSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/util/concurrent/Executor;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.concurrent.ThreadPoolExecutor._Constructor"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sThreadPoolExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 23
    const-class v9, Lcom/facebook/rti/common/concurrent/RtiExecutor;

    monitor-enter v9

    .line 24
    :try_start_0
    sget-object v0, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sThreadPoolExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 25
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sCorePoolSize:I

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sThreadPoolExecutor:Ljava/util/concurrent/Executor;

    .line 34
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sThreadPoolExecutor:Ljava/util/concurrent/Executor;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized setCorePoolSize(I)V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lcom/facebook/rti/common/concurrent/RtiExecutor;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/facebook/rti/common/concurrent/RtiExecutor;->sCorePoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
