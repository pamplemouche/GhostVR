.class public Lry;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldy;


# static fields
.field public static e:I = 0x1


# instance fields
.field public final a:LYw;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/Queue;

.field public final d:Landroid/util/LongSparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LYw;

    invoke-direct {v0}, LYw;-><init>()V

    iput-object v0, p0, Lry;->a:LYw;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lry;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lry;->c:Ljava/util/Queue;

    .line 5
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lry;->d:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lny;
    .locals 7

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lry;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lry;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loy;

    if-nez v3, :cond_1

    .line 9
    new-instance v3, Loy;

    .line 10
    iget-object v4, p0, Lry;->a:LYw;

    invoke-virtual {v4}, LYw;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ui"

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "background-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lry;->e:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lry;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Loy;-><init>(Lry;Ljava/lang/String;Z)V

    .line 11
    iget-object v4, p0, Lry;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 12
    :cond_1
    new-instance v0, Lny;

    const/4 v1, 0x0

    invoke-direct {v0, v3, p1, v1}, Lny;-><init>(Loy;Ljava/lang/String;Lmy;)V

    .line 13
    iget-object p1, v3, Loy;->b:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lfy;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "TimingUtils"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lry;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lry;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpy;

    .line 4
    invoke-virtual {p0, p1, v2}, Lry;->a(Lfy;Lpy;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lfy;Lpy;)V
    .locals 11

    .line 20
    iget-object v0, p2, Lpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TimingUtils"

    const-string v0, "Found Empty TrackerState List"

    .line 21
    invoke-static {p2, v0, p1}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 22
    :cond_0
    iget v0, p1, Lfy;->a:I

    .line 23
    new-instance v2, Ley;

    const-string v3, "thread"

    invoke-direct {v2, v0, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 24
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p2, Lpy;->b:Ljava/lang/String;

    .line 26
    iget-object v2, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v0, p1, Lfy;->a:I

    .line 28
    new-instance v2, Ley;

    const-string v3, "timeStamp"

    invoke-direct {v2, v0, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 29
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p2, Lpy;->c:Ljava/util/Date;

    .line 31
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Liy;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, v2, Ley;->d:Z

    .line 33
    iget-object v2, p2, Lpy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_5

    .line 34
    iget-object v3, p2, Lpy;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqy;

    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1, v4}, Lfy;->b(Ldy;)Lfy;

    move-result-object v4

    .line 36
    iget v5, v3, Lqy;->d:I

    sub-int/2addr v5, v0

    .line 37
    iget v6, v4, Lfy;->a:I

    add-int/2addr v6, v5

    .line 38
    new-instance v5, Ley;

    const-string v7, "time"

    invoke-direct {v5, v6, v7}, Ley;-><init>(ILjava/lang/String;)V

    .line 39
    iget-object v6, v4, Lfy;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, v3, Lqy;->a:J

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 41
    iget-object v5, v5, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v5, v4, Lfy;->a:I

    .line 43
    new-instance v6, Ley;

    const-string v7, "source"

    invoke-direct {v6, v5, v7}, Ley;-><init>(ILjava/lang/String;)V

    .line 44
    iget-object v5, v4, Lfy;->e:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v5, v3, Lqy;->b:Ljava/lang/String;

    .line 46
    iget-object v7, v6, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iput-boolean v0, v6, Ley;->d:Z

    .line 48
    iget-object v5, v3, Lqy;->c:[Ljava/lang/Object;

    if-eqz v5, :cond_4

    array-length v5, v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    .line 49
    :goto_1
    iget-object v6, v3, Lqy;->c:[Ljava/lang/Object;

    array-length v7, v6

    if-ge v5, v7, :cond_4

    add-int/lit8 v7, v5, 0x1

    .line 50
    aget-object v5, v6, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    iget-object v6, v3, Lqy;->c:[Ljava/lang/Object;

    array-length v8, v6

    if-ge v7, v8, :cond_1

    aget-object v6, v6, v7

    goto :goto_2

    :cond_1
    const-string v6, ""

    .line 52
    :goto_2
    iget v8, v3, Lqy;->d:I

    sub-int/2addr v8, v0

    .line 53
    iget v9, v4, Lfy;->a:I

    add-int/2addr v9, v8

    .line 54
    new-instance v8, Ley;

    invoke-direct {v8, v9, v5}, Ley;-><init>(ILjava/lang/String;)V

    .line 55
    iget-object v5, v4, Lfy;->e:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    instance-of v5, v6, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 57
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 58
    iget-object v6, v8, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 59
    :cond_2
    instance-of v5, v6, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 60
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 61
    iget-object v6, v8, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    iget-object v6, v8, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :goto_3
    iput-boolean v0, v8, Ley;->d:Z

    add-int/lit8 v5, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 4

    .line 16
    new-instance v0, Loy;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Loy;-><init>(Lry;Ljava/lang/String;Z)V

    .line 17
    iget-object p2, p0, Lry;->b:Ljava/lang/Object;

    monitor-enter p2

    .line 18
    :try_start_0
    iget-object v1, p0, Lry;->d:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 19
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
