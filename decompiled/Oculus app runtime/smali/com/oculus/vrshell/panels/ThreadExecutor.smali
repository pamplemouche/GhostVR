.class public Lcom/oculus/vrshell/panels/ThreadExecutor;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;,
        Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oculus/vrshell/panels/ThreadExecutor;

.field private static final MAXIMUM_POOL_SIZE:I = 0x4


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/oculus/vrshell/panels/ThreadExecutor;

    invoke-direct {v0}, Lcom/oculus/vrshell/panels/ThreadExecutor;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/panels/ThreadExecutor;->INSTANCE:Lcom/oculus/vrshell/panels/ThreadExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 21
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/oculus/vrshell/panels/ThreadExecutor;
    .locals 1

    .line 24
    sget-object v0, Lcom/oculus/vrshell/panels/ThreadExecutor;->INSTANCE:Lcom/oculus/vrshell/panels/ThreadExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/util/concurrent/Callable;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;JLcom/oculus/vrshell/panels/ThreadExecutor$Listener;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/util/concurrent/Callable;I)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I)",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture<",
            "TT;>;"
        }
    .end annotation

    int-to-long v0, p2

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;JLcom/oculus/vrshell/panels/ThreadExecutor$Listener;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/util/concurrent/Callable;JLcom/oculus/vrshell/panels/ThreadExecutor$Listener;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$Listener<",
            "TT;>;)",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v6, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    iget-object v2, p0, Lcom/oculus/vrshell/panels/ThreadExecutor;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;-><init>(Lcom/oculus/vrshell/panels/ThreadExecutor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;J)V

    if-eqz p4, :cond_0

    .line 69
    invoke-virtual {v6, p4}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->listen(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;)V

    :cond_0
    return-object v6
.end method

.method public execute(Ljava/util/concurrent/Callable;Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$Listener<",
            "TT;>;)",
            "Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;JLcom/oculus/vrshell/panels/ThreadExecutor$Listener;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method
