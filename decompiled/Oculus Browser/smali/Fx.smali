.class public LFx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldy;


# static fields
.field public static final y:J

.field public static final z:J


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Queue;

.field public final c:Ljava/util/Queue;

.field public final d:Ljava/util/Queue;

.field public e:Z

.field public f:Z

.field public g:Lvx;

.field public h:LEx;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Lrw;

.field public final k:Ljava/util/concurrent/Executor;

.field public final l:Lky;

.field public final m:Lxx;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, LFx;->y:J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, LFx;->z:J

    return-void
.end method

.method public constructor <init>(Lrw;Ljava/util/concurrent/Executor;Lxx;Lky;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LFx;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LFx;->b:Ljava/util/Queue;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LFx;->c:Ljava/util/Queue;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LFx;->d:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, LFx;->e:Z

    .line 7
    iput-boolean v0, p0, LFx;->f:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, LFx;->g:Lvx;

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, LFx;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    iput v0, p0, LFx;->n:I

    .line 11
    iput v0, p0, LFx;->o:I

    .line 12
    iput v0, p0, LFx;->p:I

    .line 13
    iput v0, p0, LFx;->q:I

    .line 14
    iput v0, p0, LFx;->r:I

    .line 15
    iput v0, p0, LFx;->s:I

    .line 16
    iput v0, p0, LFx;->t:I

    .line 17
    iput v0, p0, LFx;->u:I

    .line 18
    iput v0, p0, LFx;->v:I

    .line 19
    iput v0, p0, LFx;->w:I

    .line 20
    iput v0, p0, LFx;->x:I

    .line 21
    iput-object p1, p0, LFx;->j:Lrw;

    .line 22
    iput-object p2, p0, LFx;->k:Ljava/util/concurrent/Executor;

    .line 23
    iput-object p3, p0, LFx;->m:Lxx;

    .line 24
    iput-object p4, p0, LFx;->l:Lky;

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "BACKGROUND"

    return-object p0

    :cond_1
    const-string p0, "USER_FACING"

    return-object p0

    :cond_2
    const-string p0, "HEAD_RESET"

    return-object p0

    :cond_3
    const-string p0, "HEAD_INVALIDATE"

    return-object p0

    :cond_4
    const-string p0, "IMMEDIATE"

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 107
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, LFx;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget-object v2, p0, LFx;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, LFx;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 2

    .line 101
    iget v0, p0, LFx;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, LFx;->n:I

    if-ne p1, v1, :cond_0

    .line 102
    iget p1, p0, LFx;->q:I

    add-int/2addr p1, v1

    iput p1, p0, LFx;->q:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 103
    iget p1, p0, LFx;->r:I

    add-int/2addr p1, v1

    iput p1, p0, LFx;->r:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 104
    iget p1, p0, LFx;->s:I

    add-int/2addr p1, v1

    iput p1, p0, LFx;->s:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 105
    iget p1, p0, LFx;->t:I

    add-int/2addr p1, v1

    iput p1, p0, LFx;->t:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 106
    iget p1, p0, LFx;->u:I

    add-int/2addr p1, v1

    iput p1, p0, LFx;->u:I

    :cond_4
    :goto_0
    return-void
.end method

.method public a(IILjava/lang/Runnable;)V
    .locals 5

    .line 73
    invoke-virtual {p0, p2}, LFx;->a(I)V

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 74
    new-instance v2, LBx;

    invoke-direct {v2, p0, p1, p2, p3}, LBx;-><init>(LFx;IILjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 75
    new-instance v2, LAx;

    invoke-direct {v2, p0, p1, p2, p3}, LAx;-><init>(LFx;IILjava/lang/Runnable;)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v2, LEx;

    invoke-direct {v2, p0, p1, p2, p3}, LEx;-><init>(LFx;IILjava/lang/Runnable;)V

    :goto_0
    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 77
    invoke-static {p2}, LFx;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v3

    .line 78
    invoke-virtual {p0}, LFx;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, p3, v4

    .line 79
    invoke-virtual {p0}, LFx;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v0

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "TaskQueue"

    const-string v0, " - task [%s - d: %s, b: %s]: %s"

    .line 81
    invoke-static {p1, v0, p3}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, LFx;->f()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, LFx;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    iget p1, p0, LFx;->o:I

    add-int/2addr p1, v4

    iput p1, p0, LFx;->o:I

    .line 84
    invoke-virtual {v2}, LEx;->b()V

    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    iget p1, p0, LFx;->p:I

    add-int/2addr p1, v4

    iput p1, p0, LFx;->p:I

    .line 86
    invoke-virtual {p0, v2, p2}, LFx;->a(LEx;I)V

    :goto_2
    return-void
.end method

.method public final a(LEx;I)V
    .locals 3

    .line 87
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 88
    :try_start_0
    iget-object p2, p0, LFx;->c:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, LFx;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    iget p2, p0, LFx;->w:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LFx;->w:I

    goto :goto_1

    .line 90
    :cond_1
    iget-object p2, p0, LFx;->d:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, LFx;->d:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    iget p2, p0, LFx;->x:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LFx;->x:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    .line 92
    invoke-virtual {p0}, LFx;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "TaskQueue"

    const-string p2, " - Duplicate HeadInvalidate Task Found, ignoring new one"

    new-array v1, v2, [Ljava/lang/Object;

    .line 93
    invoke-static {p1, p2, v1}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    monitor-exit v0

    return-void

    .line 95
    :cond_3
    iget-object p2, p0, LFx;->b:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, LFx;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    iget p2, p0, LFx;->v:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LFx;->v:I

    .line 97
    iget-boolean p1, p0, LFx;->f:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, LFx;->h:LEx;

    if-nez p1, :cond_4

    const-string p1, "TaskQueue"

    const-string p2, " - queueTask starting immediate task"

    new-array v1, v2, [Ljava/lang/Object;

    .line 98
    invoke-static {p1, p2, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, LFx;->c()V

    .line 100
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
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

    const-string v3, "TaskQueue"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p1, Lfy;->a:I

    .line 3
    new-instance v1, Ley;

    const-string v2, "tasks"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 4
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget v0, p0, LFx;->n:I

    .line 6
    iget-object v1, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget v0, p1, Lfy;->a:I

    .line 8
    new-instance v1, Ley;

    const-string v2, "immediateRun"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 9
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget v0, p0, LFx;->o:I

    .line 11
    iget-object v2, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, v1, Ley;->d:Z

    .line 13
    iget v1, p1, Lfy;->a:I

    .line 14
    new-instance v2, Ley;

    const-string v3, "delayedRun"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 15
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget v1, p0, LFx;->p:I

    .line 17
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    iput-boolean v0, v2, Ley;->d:Z

    .line 19
    iget v1, p1, Lfy;->a:I

    .line 20
    new-instance v2, Ley;

    const-string v3, "immediateTasks"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 21
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget v1, p0, LFx;->q:I

    .line 23
    iget-object v2, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p1, Lfy;->a:I

    .line 25
    new-instance v2, Ley;

    const-string v3, "headInvalidateTasks"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 26
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget v1, p0, LFx;->r:I

    .line 28
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    iput-boolean v0, v2, Ley;->d:Z

    .line 30
    iget v1, p1, Lfy;->a:I

    .line 31
    new-instance v2, Ley;

    const-string v3, "headResetTasks"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 32
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget v1, p0, LFx;->s:I

    .line 34
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    iput-boolean v0, v2, Ley;->d:Z

    .line 36
    iget v1, p1, Lfy;->a:I

    .line 37
    new-instance v2, Ley;

    const-string v3, "userFacingTasks"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 38
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget v1, p0, LFx;->t:I

    .line 40
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    iput-boolean v0, v2, Ley;->d:Z

    .line 42
    iget v1, p1, Lfy;->a:I

    .line 43
    new-instance v2, Ley;

    const-string v3, "backgroundTasks"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 44
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget v1, p0, LFx;->u:I

    .line 46
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    iput-boolean v0, v2, Ley;->d:Z

    .line 48
    iget v1, p1, Lfy;->a:I

    .line 49
    new-instance v2, Ley;

    const-string v3, "maxImmediateQueue"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 50
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget v1, p0, LFx;->v:I

    .line 52
    iget-object v2, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p1, Lfy;->a:I

    .line 54
    new-instance v2, Ley;

    const-string v3, "maxUserFacingQueue"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 55
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget v1, p0, LFx;->w:I

    .line 57
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    iput-boolean v0, v2, Ley;->d:Z

    .line 59
    iget v1, p1, Lfy;->a:I

    .line 60
    new-instance v2, Ley;

    const-string v3, "maxBackgroundQueue"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 61
    iget-object p1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget p1, p0, LFx;->x:I

    .line 63
    iget-object v1, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    iput-boolean v0, v2, Ley;->d:Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4

    .line 65
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-boolean v1, p0, LFx;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "TaskQueue"

    const-string v2, " - Calling initialize on an initialized TaskQueue"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    invoke-static {v1, v2, v3}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    new-instance v0, LCx;

    invoke-direct {v0, p0, p1}, LCx;-><init>(LFx;Ljava/lang/Runnable;)V

    .line 70
    iget p1, v0, LEx;->x:I

    invoke-virtual {p0, p1}, LFx;->a(I)V

    .line 71
    invoke-virtual {v0}, LEx;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TaskQueue"

    const-string v2, "completeReset"

    .line 1
    invoke-static {v1, v2, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, LFx;->f:Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, LFx;->g()V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, LFx;->i:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, LFx;->l:Lky;

    check-cast v1, Lly;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, LFx;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, LFx;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LEx;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, LFx;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, LFx;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, LFx;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LEx;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, LFx;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, LFx;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, LFx;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LEx;

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, LEx;->b()V

    .line 12
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 13
    :cond_4
    throw v2
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LFx;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LFx;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LFx;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Z
    .locals 4

    .line 1
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LFx;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LEx;

    .line 3
    iget v2, v2, LEx;->x:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 4
    monitor-exit v0

    return v1

    .line 5
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, LFx;->f:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, LFx;->e:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LFx;->g:Lvx;

    .line 3
    invoke-virtual {p0}, LFx;->f()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "TaskQueue"

    const-string v3, "Cancelling starvation checks"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3, v4}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    check-cast v1, Lux;

    .line 6
    iget-object v1, v1, Lux;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, LFx;->g:Lvx;

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 6

    .line 1
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, LFx;->e:Z

    .line 3
    iput-boolean v1, p0, LFx;->f:Z

    const-string v2, "TaskQueue"

    const-string v3, " - Reset i: %s, u: %s, b: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    iget-object v5, p0, LFx;->b:Ljava/util/Queue;

    .line 5
    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-object v5, p0, LFx;->c:Ljava/util/Queue;

    .line 6
    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, LFx;->d:Ljava/util/Queue;

    .line 7
    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 8
    invoke-static {v2, v3, v4}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, LFx;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 10
    iget-object v1, p0, LFx;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 11
    iget-object v1, p0, LFx;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 12
    invoke-virtual {p0}, LFx;->i()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, LFx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LFx;->g:Lvx;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "TaskQueue"

    const-string v3, "Starvation Checks are already running"

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {v1, v3, v2}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, LFx;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TaskQueue"

    const-string v3, " * Starting starvation checks"

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v1, v3, v2}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, LFx;->m:Lxx;

    const-string v2, "starvationChecks"

    new-instance v3, LDx;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, LDx;-><init>(LFx;Lzx;)V

    sget-wide v4, LFx;->z:J

    .line 8
    invoke-virtual {v1, v2, v3, v4, v5}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;J)Lvx;

    move-result-object v1

    iput-object v1, p0, LFx;->g:Lvx;

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
