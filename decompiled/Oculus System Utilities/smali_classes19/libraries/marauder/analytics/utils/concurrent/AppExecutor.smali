.class public Llibraries/marauder/analytics/utils/concurrent/AppExecutor;
.super Ljava/lang/Object;
.source "AppExecutor.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

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


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 28
    new-instance v0, Llibraries/marauder/analytics/utils/concurrent/AppExecutor$1;

    invoke-direct {v0}, Llibraries/marauder/analytics/utils/concurrent/AppExecutor$1;-><init>()V

    sput-object v0, Llibraries/marauder/analytics/utils/concurrent/AppExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Llibraries/marauder/analytics/utils/concurrent/AppExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 42
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Llibraries/marauder/analytics/utils/concurrent/AppExecutor;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Llibraries/marauder/analytics/utils/concurrent/AppExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Llibraries/marauder/analytics/utils/concurrent/AppExecutor;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

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
    .locals 1

    .prologue
    .line 22
    sget-object v0, Llibraries/marauder/analytics/utils/concurrent/AppExecutor;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
