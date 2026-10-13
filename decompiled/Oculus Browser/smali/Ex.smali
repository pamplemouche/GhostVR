.class public LEx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:LFx;

.field public final w:I

.field public final x:I

.field public final y:Ljava/lang/Runnable;

.field public final z:J


# direct methods
.method public constructor <init>(LFx;IILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEx;->A:LFx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, LEx;->w:I

    .line 3
    iput p3, p0, LEx;->x:I

    .line 4
    iput-object p4, p0, LEx;->y:Ljava/lang/Runnable;

    .line 5
    iget-object p1, p1, LFx;->l:Lky;

    .line 6
    check-cast p1, Lly;

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 8
    iput-wide p1, p0, LEx;->z:J

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LEx;->A:LFx;

    .line 2
    iget-object v0, v0, LFx;->k:Ljava/util/concurrent/Executor;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, LEx;->A:LFx;

    .line 2
    iget-object v0, v0, LFx;->l:Lky;

    .line 3
    check-cast v0, Lly;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iget v4, p0, LEx;->x:I

    .line 6
    invoke-static {v4}, LFx;->b(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 7
    iget-object v4, p0, LEx;->A:LFx;

    .line 8
    invoke-virtual {v4}, LFx;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v0, v6

    iget-object v4, p0, LEx;->A:LFx;

    .line 9
    invoke-virtual {v4}, LFx;->a()I

    move-result v4

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v0, v7

    const/4 v4, 0x3

    iget v8, p0, LEx;->w:I

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v4

    const-string v4, "TaskQueue"

    const-string v8, "Execute task [%s - d: %s, b: %s]: %s"

    .line 12
    invoke-static {v4, v8, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, LEx;->A:LFx;

    .line 14
    iget-object v8, v0, LFx;->h:LEx;

    .line 15
    iput-object p0, v0, LFx;->h:LEx;

    .line 16
    iget-object v0, p0, LEx;->y:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    invoke-virtual {p0}, LEx;->a()V

    .line 18
    iget-object v0, p0, LEx;->A:LFx;

    .line 19
    iput-object v8, v0, LFx;->h:LEx;

    .line 20
    iget-object v0, v0, LFx;->l:Lky;

    .line 21
    check-cast v0, Lly;

    if-eqz v0, :cond_1

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v13, v0

    .line 23
    iget-wide v0, p0, LEx;->z:J

    sub-long/2addr v2, v0

    long-to-int v12, v2

    new-array v0, v7, [Ljava/lang/Object;

    .line 24
    iget v1, p0, LEx;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, " - Finished %s, time %s ms"

    invoke-static {v4, v1, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, LEx;->A:LFx;

    .line 26
    iget-object v0, v0, LFx;->j:Lrw;

    .line 27
    iget v11, p0, LEx;->w:I

    move-object v10, v0

    check-cast v10, Lmb0;

    .line 28
    iget-wide v8, v10, Lmb0;->a:J

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static/range {v8 .. v13}, LJ/N;->MbRXRFvO(JLjava/lang/Object;III)V

    .line 30
    :goto_0
    iget-object v0, p0, LEx;->A:LFx;

    .line 31
    invoke-virtual {v0}, LFx;->c()V

    return-void

    .line 32
    :cond_1
    throw v1

    .line 33
    :cond_2
    throw v1
.end method
