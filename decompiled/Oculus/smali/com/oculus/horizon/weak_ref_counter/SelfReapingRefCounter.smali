.class public abstract Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;
.super Ljava/lang/Object;
.source "SelfReapingRefCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$DoSomething;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/util/WeakRef",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mClientsLock:Ljava/lang/Object;

.field private mInitialized:Z

.field private final mInitializedLock:Ljava/lang/Object;

.field mReaper:Ljava/util/Timer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReaperLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mInitialized:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mInitializedLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClientsLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaperLock:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaper:Ljava/util/Timer;

    return-void
.end method

.method private startSelfReapingReaper()V
    .locals 7

    .prologue
    .line 106
    iget-object v6, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaperLock:Ljava/lang/Object;

    monitor-enter v6

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaper:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 108
    monitor-exit v6

    .line 123
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v1, "Starting up reaper"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaper:Ljava/util/Timer;

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaper:Ljava/util/Timer;

    new-instance v1, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$1;-><init>(Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 122
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopReaper()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaperLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "Stopping reaper"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaper:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaper:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mReaper:Ljava/util/Timer;

    .line 132
    :cond_0
    monitor-exit v1

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final clientListContains(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v3, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClientsLock:Ljava/lang/Object;

    monitor-enter v3

    move v2, v1

    .line 158
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/WeakRef;

    .line 160
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 161
    const/4 v0, 0x1

    monitor-exit v3

    .line 164
    :goto_1
    return v0

    .line 158
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 164
    :cond_1
    monitor-exit v3

    move v0, v1

    goto :goto_1

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->connect(Ljava/lang/Object;Z)V

    .line 58
    return-void
.end method

.method public connect(Ljava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClientsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    if-nez p1, :cond_0

    .line 63
    :try_start_0
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "Null callback, not initing"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    monitor-exit v1

    .line 87
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "Empty callbacks, initing"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->oneTimeSetup()V

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mInitializedLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mInitialized:Z

    .line 76
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    if-eqz p2, :cond_2

    .line 79
    :try_start_2
    invoke-direct {p0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->startSelfReapingReaper()V

    .line 82
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->clientListContains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "Adding callback %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->createWeakRef(Ljava/lang/Object;)Lcom/oculus/util/WeakRef;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 76
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public createWeakRef(Ljava/lang/Object;)Lcom/oculus/util/WeakRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/oculus/util/WeakRef",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/oculus/util/WeakRef;

    invoke-direct {v0, p1}, Lcom/oculus/util/WeakRef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public disconnect(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v1, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClientsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->clientListContains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "Removing callback %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->createWeakRef(Ljava/lang/Object;)Lcom/oculus/util/WeakRef;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "%d remain"

    iget-object v3, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "Empty callbacks. Tearing down."

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->teardown()V

    .line 102
    :cond_0
    monitor-exit v1

    .line 103
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to remove callback not in list %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final doSomethingQuicklyOnEveryClient(Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$DoSomething;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$DoSomething",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClientsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/WeakRef;

    .line 184
    invoke-virtual {v0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p1, v0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$DoSomething;->doSomethingQuicklyUnderMutex(Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    return-void
.end method

.method protected abstract oneTimeSetup()V
.end method

.method protected abstract oneTimeTeardown()V
.end method

.method public removeDeadRefs()V
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClientsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 140
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/WeakRef;

    .line 142
    invoke-virtual {v0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v3, "Removing dead ref"

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 148
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v2, "Empty callback, tearing down"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->teardown()V

    .line 152
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    return-void
.end method

.method protected teardown()V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string v1, "Calling tearDown()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mInitializedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mInitialized:Z

    if-nez v0, :cond_0

    .line 41
    monitor-exit v1

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->mInitialized:Z

    .line 44
    invoke-virtual {p0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->oneTimeTeardown()V

    .line 45
    sget-object v0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "tearDown() complete"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-direct {p0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->stopReaper()V

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
