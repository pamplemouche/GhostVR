.class public Loy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Stack;

.field public c:Ljava/util/List;

.field public final d:Z

.field public final synthetic e:Lry;


# direct methods
.method public constructor <init>(Lry;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Loy;->e:Lry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Loy;->b:Ljava/util/Stack;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Loy;->c:Ljava/util/List;

    .line 4
    iput-object p2, p0, Loy;->a:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Loy;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lny;)V
    .locals 8

    .line 1
    iget-object v0, p0, Loy;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lny;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_2

    .line 2
    iget-object v0, p0, Loy;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "TimingUtils"

    const-string v1, "Trying to Pop non-top of stack timer, ignoring"

    .line 3
    invoke-static {v0, v1, p1}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Loy;->b:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v3, p0, Loy;->b:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "TimingUtils"

    const-string v4, "Pop TimingTracker which was not the current top, popped % items"

    invoke-static {v0, v4, v3}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, p0, Loy;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Loy;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v3, p0, Loy;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqy;

    const/4 v4, 0x0

    .line 11
    :cond_3
    :goto_1
    iget-object v5, v3, Lqy;->c:[Ljava/lang/Object;

    array-length v6, v5

    if-ge v4, v6, :cond_6

    add-int/lit8 v6, v4, 0x1

    .line 12
    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    iget-object v5, v3, Lqy;->c:[Ljava/lang/Object;

    array-length v7, v5

    if-ge v6, v7, :cond_4

    aget-object v5, v5, v6

    goto :goto_2

    :cond_4
    const-string v5, ""

    .line 14
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v6, 0x1

    .line 17
    iget-object v5, v3, Lqy;->c:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    const-string v5, " | "

    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    iget-wide v4, p1, Lny;->d:J

    .line 20
    iget-wide v6, p1, Lny;->c:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    .line 21
    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    .line 22
    iget-object p1, p1, Lny;->a:Loy;

    .line 23
    iget-object p1, p1, Loy;->a:Ljava/lang/String;

    aput-object p1, v3, v2

    const/4 p1, 0x2

    aput-object v0, v3, p1

    const-string p1, "TimingUtils"

    const-string v0, "Task Timing %3sms, thread %s | %s"

    .line 24
    invoke-static {p1, v0, v3}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Loy;->e:Lry;

    .line 26
    iget-object p1, p1, Lry;->b:Ljava/lang/Object;

    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object v0, p0, Loy;->e:Lry;

    .line 29
    iget-object v0, v0, Lry;->c:Ljava/util/Queue;

    .line 30
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 31
    iget-object v0, p0, Loy;->e:Lry;

    .line 32
    iget-object v0, v0, Lry;->c:Ljava/util/Queue;

    .line 33
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 34
    :cond_7
    iget-object v0, p0, Loy;->e:Lry;

    .line 35
    iget-object v0, v0, Lry;->c:Ljava/util/Queue;

    .line 36
    new-instance v1, Lpy;

    iget-object v2, p0, Loy;->c:Ljava/util/List;

    iget-object v3, p0, Loy;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lpy;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loy;->c:Ljava/util/List;

    .line 38
    iget-boolean v0, p0, Loy;->d:Z

    if-nez v0, :cond_8

    .line 39
    iget-object v0, p0, Loy;->e:Lry;

    .line 40
    iget-object v0, v0, Lry;->d:Landroid/util/LongSparseArray;

    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 42
    :cond_8
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :goto_4
    return-void
.end method
