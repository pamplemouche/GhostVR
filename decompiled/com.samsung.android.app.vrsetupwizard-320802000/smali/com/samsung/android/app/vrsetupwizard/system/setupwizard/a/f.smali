.class public Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->c:[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->e:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->c:[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method


# virtual methods
.method a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->d()I

    move-result v0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->a(I)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->c()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->c:[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->e:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;)V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->c:[Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->j()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
