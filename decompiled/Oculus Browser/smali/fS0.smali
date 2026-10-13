.class public LfS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNS0;


# instance fields
.field public a:LHq;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LfS0;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(LJS0;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, LJS0;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LfS0;->b:Landroid/os/Bundle;

    .line 3
    sget-object v1, LgS0;->a:LeS0;

    .line 4
    invoke-interface {v1}, LeS0;->a()J

    move-result-wide v1

    const-string v3, "_background_task_schedule_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    iget-object v0, p0, LfS0;->b:Landroid/os/Bundle;

    .line 6
    iget-wide v1, p1, LJS0;->b:J

    const-string v3, "_background_task_end_time"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    :cond_0
    new-instance v0, LFq;

    invoke-direct {v0}, LFq;-><init>()V

    .line 9
    iget-boolean v1, p1, LJS0;->c:Z

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    iget-wide v2, p1, LJS0;->a:J

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 13
    :goto_0
    iget-wide v3, p1, LJS0;->b:J

    .line 14
    iget-boolean p1, p1, LJS0;->d:Z

    if-eqz p1, :cond_2

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    .line 15
    :cond_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 17
    iput-wide v1, v0, LFq;->j:J

    iput-wide v3, v0, LFq;->k:J

    .line 18
    iget-object p1, p0, LfS0;->b:Landroid/os/Bundle;

    .line 19
    iput-object p1, v0, LHq;->i:Landroid/os/Bundle;

    .line 20
    iput-object v0, p0, LfS0;->a:LHq;

    return-void
.end method

.method public a(LLS0;)V
    .locals 4

    .line 21
    iget-boolean v0, p1, LLS0;->d:Z

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, LfS0;->b:Landroid/os/Bundle;

    .line 23
    sget-object v1, LgS0;->a:LeS0;

    .line 24
    invoke-interface {v1}, LeS0;->a()J

    move-result-wide v1

    const-string v3, "_background_task_schedule_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 25
    iget-object v0, p0, LfS0;->b:Landroid/os/Bundle;

    .line 26
    iget-wide v1, p1, LLS0;->a:J

    const-string v3, "_background_task_interval_time"

    .line 27
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 28
    iget-boolean v0, p1, LLS0;->c:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, LfS0;->b:Landroid/os/Bundle;

    .line 30
    iget-wide v1, p1, LLS0;->b:J

    const-string v3, "_background_task_flex_time"

    .line 31
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 32
    :cond_0
    new-instance v0, LGq;

    invoke-direct {v0}, LGq;-><init>()V

    .line 33
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    iget-wide v2, p1, LLS0;->a:J

    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    .line 36
    iput-wide v1, v0, LGq;->j:J

    .line 37
    iget-boolean v1, p1, LLS0;->c:Z

    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    iget-wide v2, p1, LLS0;->b:J

    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    .line 41
    iput-wide v1, v0, LGq;->k:J

    .line 42
    :cond_1
    iget-object p1, p0, LfS0;->b:Landroid/os/Bundle;

    .line 43
    iput-object p1, v0, LHq;->i:Landroid/os/Bundle;

    .line 44
    iput-object v0, p0, LfS0;->a:LHq;

    return-void
.end method
