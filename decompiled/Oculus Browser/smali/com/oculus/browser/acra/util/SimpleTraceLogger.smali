.class public Lcom/oculus/browser/acra/util/SimpleTraceLogger;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final NO_LIMIT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SimpleTraceLogger"


# instance fields
.field public final LOCK:Ljava/lang/Object;

.field public mTrace:Ljava/util/Queue;

.field public final mTraceCountLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->LOCK:Ljava/lang/Object;

    .line 3
    iput p1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTraceCountLimit:I

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->clear()V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTraceCountLimit:I

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTraceCountLimit:I

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    new-instance v2, Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;-><init>(Ljava/lang/String;J)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->toString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->mTrace:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;

    if-lt v2, p1, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/oculus/browser/acra/util/SimpleTraceLogger$TraceLogLine;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
